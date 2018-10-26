var mysql = require("mysql");
var express = require("express");
var app = express();
var cookieParser = require("cookie-parser");
var path = require("path");

// for ejs templating

app.set('view engine', 'ejs');

//you need this to be able to process information sent to a POST route
var bodyParser = require('body-parser');

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// parse application/json
app.use(bodyParser.json());

var session = require("express-session");

app.use(session({secret: "app", cookie: {maxAge: 1*1000*60*24*365 }}));
app.use(cookieParser());
app.use(express.static("public"));



var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",

    password: "honey123",
    database: "users_db"
});

app.get("/", function(req,res){
    res.send('hi');
})




app.post("/submit" , function(req,res){
    connection.query(
        "INSERT INTO users (email, password) VALUES (?,?)",
        [req.body.email, req.body.password],
        function(err, response) {
            res.redirect("/");
        }
    );
});

app.get('/users', function(req, res){
    connection.query('select * from users',  function(err, data){
        res.json(data);
    });
});

app.get('/shop-bar', function(req,res){
    connection.query('select * from products', function(err, response){
        res.render('productpage', {
            products: response
            });
    });

});


app.listen(3002, function() {
    console.log("listening on 3002");
});