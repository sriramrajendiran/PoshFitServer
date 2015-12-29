	var mysql         = require('mysql');
	
	var envConfig;
	var argv = require('minimist')(process.argv.slice(2));
	console.log(argv);
	if(argv.e == "dev") {
		envConfig = require('./config/development.json');  
	} else {
		envConfig = require('./config/production.json');  
	}
	
	module.exports.pool      =    mysql.createPool({
    	connectionLimit : 100, //important
	  	host     : envConfig.sql.host,
	  	user     : envConfig.sql.user,
	  	password : envConfig.sql.password,
	  	database : envConfig.sql.db,
    	debug    :  false
	});

	module.exports.runQuery = function(queryString, onSuccess, onError) {
		console.log("Query :")
		console.log(queryString);
		module.exports.pool.getConnection(function(err,connection){
        	if (err) {
				console.log("Query Error 1");
            	connection.release();
            	onError(err);
        	} else {
            	connection.query(queryString,function(err,rows){
                connection.release();
                if(!err) {
					console.log("Query Success");
                    onSuccess(rows);
                } else {
					console.log("Query Error 2");
                    onError(err);
                }           
            });
        }   
      });
	};

	module.exports.esc = function(string) {
		return mysql.escape(string);
	};	
