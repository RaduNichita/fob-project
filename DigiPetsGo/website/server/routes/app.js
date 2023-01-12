const express = require('express');
const router = express.Router();
const bcrypt = require('bcrypt');
const HOST = '172.25.2.1';
const TIME_INTERVAL = 60 * 60 * 5 * 1000;

var jwt = require('jsonwebtoken');
var request = require('request-promise');
var uniqid = require('uniqid');


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

    const Influx = require('influx');
    const influx= new Influx.InfluxDB({
      host:     HOST,
      database: 'digipetsgo',
    });

    module.exports=influx;

    influx.query(`select * from userdata where email='${req.body.email}' or username='${req.body.username}'`)
    .then(user=> {
        if (user.length === 0) {
            // There is no user registered with this email
            const rounds = 10;
            bcrypt.hash(password, rounds, (err, hash) => {
                if(err) {
                    return res.render('register', {
                        message: err
                    });
                } else {
                    // Add the new user to the database
                    influx.writePoints([
                        {
                            measurement: 'userdata',
                            tags: {
                                username: req.body.username,
                                email: req.body.email,
                        },
                            fields: {
                                password: hash,
                                first_name: req.body.first_name,
                                last_name: req.body.last_name,
                            },
                        }
                    ])
                    .then(() => {
                        res.render('login',{
                            after_register: 'yes',
                            message: 'The account was successfully registered! Use the same credentials to login.'
                        });
                    })
                    .catch(err =>{
                        res.render('register',{
                            message: err
                        });
                    })
                }
            });
        } else {
            return res.render('register',{
                message: "The email or username is already used by another person!"
            });
        }
    })
    .catch(err=>{
        return res.render('register',{
            message: err
        });
    })
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

    const Influx = require('influx');
    const influx= new Influx.InfluxDB({
      host:     HOST,
      database: 'digipetsgo',
    });

    module.exports=influx;

    influx.query(`select * from userdata where username='${username}'`)
    .then(users=> {
        if (users.length == 0) {
            res.render('login',{
                after_register: '',
                message: "There is no user registered with this email address!"
            });
        } else {
            const user = users[0]

            bcrypt.compare(password, user.password, (err,result) => {
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
        }
    })
    .catch(err=>{
        console.log(err);
        res.render('login',{
            after_register: '',
            message: err
        });
    })
});

router.get('/dashboard/:username', (req, res) => {
    const Influx = require('influx');
    const influx= new Influx.InfluxDB({
      host:     HOST,
      database: 'digipetsgo',
    });

    module.exports=influx;

    influx.query(`select * from userdata where username='${req.params.username}'`)
    .then(users=> {
        const user = users[0]
        res.render('dashboard', {
            first_name: user.first_name,
            last_name: user.last_name,
            username: user.username,
            email: user.email,
        });
    })
    .catch(err=>{
        res.render('login',{
            after_register: '',
            message: err
        });
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