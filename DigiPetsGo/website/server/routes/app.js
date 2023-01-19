const express = require('express');
const router = express.Router();
const bcrypt = require('bcrypt');
const HOST = '172.25.2.1';
const TIME_INTERVAL = 60 * 60 * 5 * 1000;

var jwt = require('jsonwebtoken');
var request = require('request-promise');
var uniqid = require('uniqid');
var NFTS_COUNT = 24;
var NFT_TOKEN_TICKER_IDENTIFIER="RMC-ce2cc0"

// Execute shell commands
const { exec } = require("child_process");

// Import the MongoDB driver
const MongoClient = require('mongodb').MongoClient;

// Connection URL
const url = 'mongodb://localhost:27017';

// Database Name
const dbName = 'digipetsgo';

router.get('/', (req, res) => {
    res.redirect('/login');
});

router.get('/register', (req, res) => {
    res.render('register',{
        message: ''
    });
});

router.post('/register', (req, res) => {
    let password = req.body.password;
    let confirm_password = req.body.confirm_password;

    if (password.length === 0) {
        return res.render('register',{
            message: "Invalid password!"
        });
    }

    if(password !== confirm_password) {
        return res.render('register',{
            message: "The passwords do not match!"
        });
    }

    // Create a new MongoClient
    const client = new MongoClient(url);

    // Use connect method to connect to the server
    client.connect(function(err) {
        if (err) {
            console.log('Error connecting to DB!');
            client.close();
            return res.render('register',{
                message: err
            });
        }

        // Connected successfully
        const db = client.db(dbName);
        console.log('Connected successfully to digipetsgo!');

        db.listCollections({name: "userdata"})
            .next(function(err, collinfo) {
            if (collinfo) {
                // The "userdata" collection exists
                console.log("The userdata collection exists")

                // Find if username or email is already in use
                db.collection('userdata').find({
                $or: [
                    { email: req.body.email },
                    { username: req.body.username }
                ]
                }).toArray(function(err, docs) {
                    console.log(docs);
                    if (docs.length > 0) {
                        console.log("The email or username is already used by another person!");
                        return res.render('register',{
                            message: "The email or username is already used by another person!"
                        });
                    } else {
                        const rounds = 10;
                        bcrypt.hash(password, rounds, (err, hash) => {
                            if(err) {
                                return res.render('register', {
                                    message: err
                                });
                            } else {
                                // Insert new user into the "userdata" collection
                                exec("erdpy wallet derive wallet.pem", (error, stdout, stderr) => {
                                    exec("cat wallet.pem", (error, stdout, stderr) => {
                                        // Insert new user into the "userdata" collection
                                        const newUser = {
                                            username: req.body.username,
                                            email: req.body.email,
                                            password: hash,
                                            first_name: req.body.first_name,
                                            last_name: req.body.last_name,
                                            wallet: `${stdout}`
                                        };

                                        db.collection("userdata").insertOne(newUser, function(err) {
                                            if (err) {
                                                exec("rm -rf wallet.pem", (error, stdout, stderr) => {});
                                                client.close();
                                                res.render('register',{
                                                    message: err
                                                });
                                            }

                                            console.log("Inserted new user!");
                                            exec("rm -rf wallet.pem", (error, stdout, stderr) => {});
                                            client.close();
                                            res.render('login',{
                                                after_register: 'yes',
                                                message: 'The account was successfully registered! Use the same credentials to login.'
                                            });
                                        })
                                    });
                                });
                            }
                        });
                    }
                });
            } else {
                // Create the "userdata" collection
                db.createCollection("userdata", function(err) {
                    if (err) {
                        client.close();
                        return res.render('register', {
                            message: err
                        });
                    }

                    console.log("Created userdata collection")

                    const rounds = 10;
                    bcrypt.hash(password, rounds, (err, hash) => {
                        if(err) {
                            return res.render('register', {
                                message: err
                            });
                        } else {
                            exec("erdpy wallet derive wallet.pem", (error, stdout, stderr) => {
                                exec("cat wallet.pem", (error, stdout, stderr) => {
                                    // Insert new user into the "userdata" collection
                                    const newUser = {
                                        username: req.body.username,
                                        email: req.body.email,
                                        password: hash,
                                        first_name: req.body.first_name,
                                        last_name: req.body.last_name,
                                        wallet: `${stdout}`
                                    };

                                    db.collection("userdata").insertOne(newUser, function(err) {
                                        if (err) {
                                            exec("rm -rf wallet.pem", (error, stdout, stderr) => {});
                                            client.close();
                                            res.render('register',{
                                                message: err
                                            });
                                        }

                                        console.log("Inserted new user!");
                                        exec("rm -rf wallet.pem", (error, stdout, stderr) => {});
                                        client.close();
                                        res.render('login',{
                                            after_register: 'yes',
                                            message: 'The account was successfully registered! Use the same credentials to login.'
                                        });
                                    })
                                });
                            });
                        }
                    });
                });
            }
        });
    });
});

router.get('/login', (req, res) => {
    res.render('login',{
        after_register: '',
        message: ''
    });
});

router.post('/login', (req, res) => {
    let username = req.body.username;
    let password = req.body.password;

    // Create a new MongoClient
    const client = new MongoClient(url);

    // Use connect method to connect to the server
    client.connect(function(err) {
        if (err) {
            console.log('Error connecting to DB!');
            client.close();
            return res.render('login',{
                message: err
            });
        }

        // Connected successfully
        const db = client.db(dbName);
        console.log('Connected successfully to digipetsgo!');

        // Find if username or email is already in use
        db.collection('userdata').find({ username: req.body.username
        }).toArray(function(err, docs) {
            console.log(docs);
            if (docs.length > 0) {
                // User exists, check password
                let user = docs[0];
                bcrypt.compare(password, user.password, (err, result) => {
                    if(err){
                        res.render('login',{
                            after_register: '',
                            message: err
                        });
                    }

                    if(result){
                        const token = jwt.sign({
                                email: user.email,
                                userId: user.username
                            }, 'secret', {expiresIn: '5h'});

                        res.cookie('token', token, {maxAge: TIME_INTERVAL, httpOnly: true});
                        res.cookie('username', user.username, {maxAge: TIME_INTERVAL, httpOnly: true});
                        res.redirect('/dashboard/' + user.username);
                    } else{
                        res.render('login',{
                            after_register: '',
                            message: 'Incorrect username or password, try again!'
                        });
                    }
                })
            } else {
                res.render('login',{
                    after_register: '',
                    message: "There is no user registered with this username!"
                });
            }
        });
    });
});


router.get('/dashboard/:username', (req, res) => {
    const client = new MongoClient(url);

    // Use connect method to connect to the server
    client.connect(function(err) {
        if (err) {
            console.log('Error connecting to DB!');
            client.close();
            return res.render('login',{
                message: err
            });
        }

        // Connected successfully
        const db = client.db(dbName);
        console.log('Connected successfully to digipetsgo!');

        db.collection('userdata').find({ username: req.params.username
        }).toArray(function(err, docs) {
            console.log(docs);
            if (docs.length > 0) {
                // User exists,
                let user = docs[0];
                res.render('dashboard', {
                    first_name: user.first_name,
                    last_name: user.last_name,
                    username: user.username,
                    email: user.email,
                });
            } else {
                res.render('login',{
                    after_register: '',
                    message: err
                });
            }
        })
    })
});

router.get('/newdigipet/:username', (req, res) => {
    exec('bash -c "source ~/fob-project/smartcontract/contract/interactions/playground.sh && create_nft"', (error, stdout, stderr) => {
        let lines = `${stderr}`.split('\n');
        let words = lines[4].split(':');
        devnet_link = words[3].substring(1) + ':' + words[4];

        // Create a new MongoClient
        const client = new MongoClient(url);

        // Use connect method to connect to the server
        client.connect(function(err) {
            if (err) {
                console.log('Error connecting to DB!');
                client.close();
            }

            // Connected successfully
            const db = client.db(dbName);
            console.log('Connected successfully to digipetsgo!');

            db.listCollections({name: "pets"})
                .next(function(err, collinfo) {
                if (collinfo) {
                    // The "pets" collection exists
                    console.log("The pets collection exists")

                    const newPet = {
                        count: NFTS_COUNT,
                        owner: req.params.username
                    };

                    db.collection("pets").insertOne(newPet, function(err) {
                        client.close();
                    });
                } else {
                    // Create the "pets" collection
                    db.createCollection("pets", function(err) {
                        if (err) {
                            client.close();
                        }

                        console.log("Created pets collection")

                        const newPet = {
                            count: NFTS_COUNT,
                            owner: req.params.username
                        };

                        db.collection("pets").insertOne(newPet, function(err) {
                            client.close();
                        });
                    });
                }
            });
        });

        res.render('newdigipet', {
            username: req.params.username,
            devnet_link: devnet_link,
        });

        NFTS_COUNT++;
    });
});

router.get('/senddigipet/:username', (req, res) => {
    console.log('send digipet');
    let username = req.params.username;
    let devnet_link = '';

    // Create a new MongoClient
    const client = new MongoClient(url);

    // Use connect method to connect to the server
    client.connect(function(err) {
        if (err) {
            console.log('Error connecting to DB!');
            client.close();
            return res.redirect('dashboard' + username);
        }

        // Connected successfully
        const db = client.db(dbName);
        console.log('Connected successfully to digipetsgo!');

        // Find if username or email is already in use
        db.collection('pets').find({ owner: username
        }).toArray(function(err, docs) {
            if (docs.length > 0) {
                // User exists, check password
                let pet = docs[0];
                let command  = 'bash -c "source ~/fob-project/smartcontract/contract/interactions/playground.sh && transfer_nft_to_smart_contract ' + pet.count + '"';
                exec(command, (error, stdout, stderr) => {
                    let lines = `${stderr}`.split('\n');
                    let words = lines[4].split(':');
                    devnet_link = words[3].substring(1) + ':' + words[4];
                    console.log(devnet_link);
                });
            } else {
                res.render('newdigipet', {
                    username: req.params.username,
                    devnet_link: "https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley",
                });
            }
        });
    });

    res.render('newdigipet', {
        username: req.params.username,
        devnet_link: devnet_link,
    });
});

router.get('/logout', function(req, res) {
    res.clearCookie('token');
    res.redirect('/login');
});

// route middleware to ensure user is logged in
function isLoggedIn(req, res, next) {   //To verify an incoming token from client
    try{
        jwt.verify(req.cookies.token, 'test secret');
        return next();
    }
    catch(err){
        console.log(err.message);
        return res.status(401).render('login',{  //401 Unauthorized Accesss
            after_register: '',
            message: 'Your token is not longer usable'
        });
    }
}

module.exports = router;