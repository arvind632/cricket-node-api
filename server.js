var express    = require("express");
var cricket = require('./routes/cricket');
var bodyParser = require('body-parser');
var session = require('express-session');
var path = require('path');
const cors = require("cors");
var app = express();

const errorHandler = require('./_helpers/error-handler');


var corsOptions = {
    origin: "http://localhost:1000"
};

app.use(cors(corsOptions));

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true
}));

/*
app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});
*/

app.get('/', function(req, res) {
    res.json({ message: 'welcome to our upload module apis' });
});




// Api Route
app.get('/api/team',cricket.team);
app.get('/api/player',cricket.player);
app.post('/api/create',cricket.playerCreate);
app.get('/api/player/:id',cricket.playerFindById);
app.put('/api/player/:id',cricket.playerUpdate);

app.get('/api/history',cricket.history);

// global error handler
app.use(errorHandler);

app.listen(5000);