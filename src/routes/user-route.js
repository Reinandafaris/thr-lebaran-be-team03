const express = require('express');

const router = express.Router();

const { getUsers } = require('../controllers/user-controller');

//! admin cars
router.use('/', getUsers);

module.exports = router;
