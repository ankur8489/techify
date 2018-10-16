//ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password'

var express = require('express');
var bodyParser = require('body-parser');
var config = require('./config');

var port = process.env.PORT || 8080;
var app = express(); 
var router = express.Router();
var role, empId;

//Get the connection object
config.dbconnection();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use('/api', router);

router.post('/login', function(req, res) {
	if(!req.body.email || !req.body.password){
		res.status(400).json('Please enter email and password');
	} else if(req.body.email) {
		var query = 'select * from emp_table where emp_email = \"'+ req.body.email + '\"';
		config.connection.query(query, function(err, result) {
			if(!err && result.length > 0){
				if(result[0].emp_password == req.body.password){
					//Setting the role and emp_id on success for role based authentication and authorization
					role = result[0].emp_role;
					empId = result[0].emp_id;
					res.json('Authentication Successful!');
				}					
				else {					
					res.status(401).json('Authentication failed!');
				}					
			} else {
				res.status(404).json('User not found!');
			}				
		})
	}
});

router.get('/list', function(req, res) {
	if(role && role == 'admin'){
		config.connection.query('select * from emp_table', function (err, result) {
			if(err){
				res.json(err);
			}
			else{
				res.json(result);
			}
		})
	} else {
		res.status(403).json('This route is forbidden for users other than admin');
	}	
});

router.get('/employee/:emp_id', function(req, res) {
	if(role != undefined && empId == req.params.emp_id || role == 'admin'){
		config.connection.query('select * from employee.emp_table where emp_id = '+ req.params.emp_id, function (err, result) {
			if(err){
				res.json(err);
			}
			else{
				res.json(result);
			}
		})
	} else {
		res.status(403).json('Either you are not logged in or you are forbidden to access this route');
	}	
});

app.listen(port);
console.log('Server started on Port:', port);