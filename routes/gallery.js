var express = require('express');
var db = require('../config/db');
var router = express.Router();
var moment = require('moment');
var s_select;
var s_data;
var recheck=0;
var refresh = 0;

/* GET home page. */
router.get('/', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    var tran = req.session.lang;

    const sess = req.session;
    recheck=0;
    db.query(`select * from gallery`, function (error, field) {
        if(error){
            throw error;
        }
        res.render('gallery',{name:sess.username, refresh:refresh, field_data:field, tran_value:tran});
    });
});

router.get('/page/:num', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    var tran = req.session.lang;

    const sess = req.session;
    recheck=0;
    db.query(`select * from gallery where gid=?`,req.params.num, function (error, field) {
        if(error){
            throw error;
        }
        res.render('gallery_detail',{name:sess.username, refresh:refresh, field_data:field, tran_value:tran});
    });
});
module.exports = router;
