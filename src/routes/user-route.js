const express = require('express');

const router = express.Router();

//! admin cars
router.route('/').get((req, res) => {
	res.json({
		status: true,
		message: 'User Route',
	});
});

module.exports = router;
