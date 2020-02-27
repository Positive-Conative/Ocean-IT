var express = require('express');
var db = require('../config/db');
var router = express.Router();
var moment = require('moment');
var s_select;
var s_data;
var recheck=0;

/* GET home page. */
router.get('/', function(req, res, next) {
    
    const sess = req.session;
    recheck=0;
    res.render('research_main',{name:sess.username});
});
module.exports = router;
