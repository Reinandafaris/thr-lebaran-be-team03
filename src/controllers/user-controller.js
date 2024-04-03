const getUsers = async (req, res) => {
	try {
		res.status(200).json({
			status: true,
			message: 'User',
		});
	} catch (error) {
		res.status(500).json({
			status: false,
			message: error.message,
		});
	}
};

module.exports = {
	getUsers,
};
