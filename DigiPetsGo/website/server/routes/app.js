const express = require('express');
const router = express.Router();
const bcrypt = require('bcrypt');
const HOST = '172.25.2.1';
const TIME_INTERVAL = 60 * 60 * 5 * 1000;

var jwt = require('jsonwebtoken');
var request = require('request-promise');
var uniqid = require('uniqid');

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
                                const { exec } = require("child_process");

                                exec("erdpy wallet derive wallet.pem", (error, stdout, stderr) => {
                                    exec("cat wallet.pem", (error, stdout, stderr) => {
                                        exec("erdpy wallet pem-address wallet.pem", (error, wallet_erd, stderr) => {
                                            // Insert new user into the "userdata" collection
                                            console.log(wallet_erd);
                                            const newUser = {
                                                username: req.body.username,
                                                email: req.body.email,
                                                password: hash,
                                                first_name: req.body.first_name,
                                                last_name: req.body.last_name,
                                                wallet: `${stdout}`,
                                                erd: wallet_erd
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
                            const { exec } = require("child_process");

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