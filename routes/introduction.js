var express = require('express');
var db = require('../config/db');
var router = express.Router();

router.get('/', function (req, res, next) {
    res.redirect('/introduction/1')
});

router.get('/:num', function (req, res, next) {
  if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
  else if(req.session.lang=="en"){res.cookie('lang', 'en');}
  else{res.cookie('lang', 'en');}
  const sess = req.session;
  db.query(`select * from introduction`, function (error, data) {
    if(error){
        throw error;
    }
    if(req.params.num==1){
      res.render('introduction', {name:sess.username, intro_data : data, tran_value : req.session.lang, data_value:req.query.data});
    }
    else if(req.params.num==2){
      res.render('introduction2', {name:sess.username, intro_data : data, tran_value : req.session.lang, data_value:req.query.data});
    }
    else{
      res.render('introduction3', {name:sess.username, intro_data : data, tran_value : req.session.lang, data_value:req.query.data});
    }
  });
});

module.exports = router;
