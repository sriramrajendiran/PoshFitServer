var express       = require('express');
var session       = require('express-session');
var cookieParser  = require('cookie-parser')
var mysql         = require('mysql');
var path          = require("path");
var bodyParser    = require("body-parser");

var app = express();
var envConfig = require('./config/' + (process.env.NODE_ENV || 'development') + '.json');  

var connection = mysql.createConnection({
  host     : envConfig.sql.host,
  user     : envConfig.sql.user,
  password : envConfig.sql.password,
  database : envConfig.sql.db
});

console.log(connection);

connection.connect(function(err){
if(!err) {
    console.log("Database is connected ... \n\n");  
} else {
    console.log("New \n\n"); 
    console.log("Error connecting database ... \n\n"); 
    console.log(err);
}
});

app.use(cookieParser());
app.use(session({secret: '$#$##@#!'}));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.set('view engine', 'ejs');
app.set('views', __dirname + '/views');



var server = app.listen(8083, function () {
  var host = server.address().address;
  var port = server.address().port;

  console.log('Example app listening at http://%s:%s', host, port);
});

//Validate user
var validateUser = function(userName, password, response) {
  console.log(userName.constructor);  
  console.log("------------");  
  var queryString = 'SELECT * FROM userInfo WHERE email = ' + 
                   connection.escape(userName);
  connection.query(queryString, function(err, rows, fields) {
    var found = 0; 
    if (!err) {
      if(rows.length == 1) {
        console.log('User Name: ', rows[0].email);
        console.log('Password: ', rows[0].password);
        console.log(rows[0].email.constructor);
        if(rows[0].email == userName && rows[0].password == password) {
          console.log("Success Here!");
          response.end("yes");
        } else {
          console.log("Failed Here!");
          response.end("no");
        }
      } else {
          console.log("Failed Here!");
          response.end("no");
      }
    } else {
      console.log('Error while performing Query.');
      response.end("no");
    }
    return found;
  });  
}

//test to confirm json results from db query
var getAllActivitiesInfo = function(cb) {
  var queryString = 'SELECT * FROM activityMetadata';
  connection.query(queryString, function(err, rows, fields) {
    if (!err) {
      console.log("Step 2\n\n");  
      console.log(cb);  
      return cb.success(rows);
    }
    else {
      console.log("Step 3\n\n");  
      return cb.error();
    }
  });  
}

//---------------------------------Routes-----------------------------
//Home Page
app.get('/', function (req, res) {
  console.log(req.session);
  console.log('session name = '+req.session.username+', session password is '+req.session.password);
  if(req.session.username) {
    res.redirect('/dashboard');
  }
  else{
    res.redirect('/login');
  }
});

//Activities Page
app.get('/activities', function (req, res) {
  var callback = {
    success : function success(result) {
      console.log("Step 3\n\n");  
      res.json(result);
    },
    error : function error(err) {
      res.send(err);
    }
  };
  console.log("Step1\n\n");  
  getAllActivitiesInfo( callback);
});

//Get login page
app.get('/login',function(req,res){
  console.log('User name = '+req.session.username+', password is '+req.session.password);
  res.render('login');
});

//Post login info
app.post('/login',function(req,res){
  req.session.username = req.body.user;
  req.session.password = req.body.password;
  console.log('User name = '+req.session.username+', password is '+req.session.password);
  validateUser(req.body.user, req.body.password, res); 
});

//Dashboard page (team homepage and data for other teams)
app.post('/dashboard',function(req,res){
  res.end("yes");
});
