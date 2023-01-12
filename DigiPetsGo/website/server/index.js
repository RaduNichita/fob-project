const PORT = 3001
const express = require('express');
const bodyParser = require('body-parser');
var path = require('path');
var cookieParser = require('cookie-parser');

const app = express();
app.use(cookieParser());

app.use(bodyParser.urlencoded({extended: false}));

// Set view engine
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// Set static public data
app.use(express.static(path.join(__dirname, 'public')));

// Look for static files in current directory
app.use(express.static(path.join(__dirname, '.')));

app.use('/', require('./routes/app'));

app.listen(PORT, () => console.log(`server running on PORT ${PORT}`))
