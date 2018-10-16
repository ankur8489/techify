# Pre-requisites
  - MYSQL
  - Node.js(Version above 6 is recommended)
  
# Steps to perform before executing the project
  - Clone the repository on  your local machine
  - Open MYSQL Workbench
  - Goto the project home directory and import and execute the .sql file located inside schema folder to get the data ready
  
# How to run the Project?
  - Goto the project home directory from command prompt and execute 'npm install' command
  - Once the node_modules installation is completed
  - Goto config.js and make changes to the connection object(port no., user, password etc)
  - Execute 'node index.js' to start the project
  - Open Postman or any REST client of your choice to hit the endpoints
  
# Endpoint Details  
  - POST  /login (http://localhost:8080/api/login) : 
    This endpoint is used for authentication, it takes email and password in the request body. Login is mandatory to access other endpoints.
  
  - GET  /list (http://localhost:8080/api/list) : 
    This endpoint lists all the employees along with all the attributes present in the database. This endpoint can only be accessed by the admin role user
    
  - GET  /:emp-id (http://localhost:8080/employee/:emp-id) : 
    This endpoint is responsible for fetching the data of the employee based on employee id. Employee whose role is admin can access any employee's data but the employee with editor role will only be able to access his/her data only. **For e.g.: If the logged in user is of type editor and its employee id is 2 then he will be able to access only emp-id 2's data, but if the logged in user is of type admin, then he can access data of any employee**
    
# Important Note
  - While starting the project using 'node index.js', if you run into an error related to authentication, first check your connection parameters. If the connection parameters are correct and still you are not able to establish connection to the database then execute below query in MYSQL - **"ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password'"**
  
# Validations Not Done
  - Since in this project only APIs are written, validations for email and password are not done
