var express = require('express');
var app = express();

app.get('/', function (req, res) {
    res.send('{ "response": "Hello From SteallantisOPSTigers Team" }');
});

app.get('/will', function (req, res) {
    res.send('{ "response": "This is the DevSecOps Demo" }');
});
app.get('/ready', function (req, res) {
    res.send('{ "response": " Great!, It works!, Have a NICE DAY" }');
});
app.listen(process.env.PORT || 3000);
module.exports = app;
