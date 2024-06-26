const express = require('express');
const cors = require('cors');
const logger = require('morgan');
const bodyParser = require('body-parser');
const router = require('./routes');
const session = require('express-session');
const flash = require('connect-flash');

//! config
const app = express();

app.use(bodyParser.urlencoded({ extended: false }));

app.use(express.static(`${__dirname}/public`));

app.set('view engine', 'ejs');
app.set('views', __dirname + '/views');

//! middleware
app.use(cors());
app.use(express.json());
app.use(logger('dev'));
app.use(
	session({
		secret: 'mySecretKey',
		saveUninitialized: true,
		resave: false,
	})
);
app.use(flash());

app.use(router);

app.use((req, res) => {
	const url = req.url;
	res.status(404).json({
		status: false,
		url: url,
		message: 'Not Found!',
	});
});

module.exports = app;
