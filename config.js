var mysql = require('mysql');
var connection = mysql.createConnection({
	host: 'localhost',
	port: '3333',
	user: 'root',
	password: 'password',
	database: 'employee'
});

function dbconnection(){
	connection.connect(function(err){
		if(err)
			throw err;
		console.log('Database Connection Successful!');
	});
}

module.exports = {
	dbconnection: dbconnection,
	connection: connection
}