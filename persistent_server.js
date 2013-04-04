var mysql = require('mysql');
var http = require("http");
var router = require("./request-handler.js");

var requestListener = function (request, response) {
  console.log("Serving request type " + request.method + " for url " + request.url);
  router.handleRequest(request, response);
};

var defaultCorsHeaders = {
  "access-control-allow-origin": "*",
  "access-control-allow-methods": "GET, POST, PUT, DELETE, OPTIONS",
  "access-control-allow-headers": "content-type, accept",
  "access-control-max-age": 10 // Seconds.
};

var port = 8080;
var ip = "127.0.0.1";

var server = http.createServer(requestListener);
console.log("Listening on http://" + ip + ":" + port);
server.listen(port, ip);

var query = function(queryStr, doStuff) {
  var dbConnection = mysql.createConnection({
    host:'localhost',
    user: "root",
    password: "",
    database: "chat"
  });
  dbConnection.connect();

  dbConnection.query(queryStr, function(err, rows, fields) {
    if (err) throw err;
    // console.log("Result: \n" ,rows);
    console.log(rows);
    doStuff(rows);
    dbConnection.end();
    }
  );
};

exports.query = query;