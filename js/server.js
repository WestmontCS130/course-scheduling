const express = require("express");
const bodyParser = require("body-parser");
const app = express();
//const PORT = process.env.PORT || 3000;

app.set('port', process.env.PORT || 3000);
// parse requests of content-type: application/json
app.use(bodyParser.json());

// parse requests of content-type: application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// simple route
app.get("/", (req, res) => {
    res.json({ message: "app.get successful" });
});
//including all the routings and endpoints made
require("./apps/testing.routing.js")(app);
require("./apps/year.routing.js")(app);
require("./apps/schedule.routing.js")(app);
require("./apps/requirements.routing.js")(app);
// set port, listen for requests
app.listen(app.get('port'), () => {
    console.log(`Server is running on port ${app.get('port')}`);
});
app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", '*');
    res.header("Access-Control-Allow-Credentials", true);
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,OPTIONS');
    res.header("Access-Control-Allow-Headers", 'Origin,X-Requested-With,Content-Type,Accept,content-type,application/json');
    next();
});