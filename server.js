var express    = require("express");
var cricket = require('./routes/cricket');
var bodyParser = require('body-parser');
var session = require('express-session');
var path = require('path');

var app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true
}));


app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});

app.get('/', function(req, res) {
    res.json({ message: 'welcome to our upload module apis' });
});




// Api Route
app.get('/api/team',cricket.team);
app.get('/api/player',cricket.player);
app.get('/api/history',cricket.history);
app.listen(5000);