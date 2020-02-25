var express = require('express');
var db = require('../config/db');
var router = express.Router();
/* GET home page. */
router.get(['/', '/index'], function(req, res, next) {
  const sess = req.session;
  var members_table;
  var research_fields;
  var research_results;
  var tran = res.cookie('lang').locale;
  db.query(`select * from members`, function (error, members) {
    if(error){
      throw error;
    }
    members_table = members;
    db.query(`select * from research_fields`, function (error, fields) {
      if(error){
        throw error;
      }
      research_fields = fields;
      db.query(`select * from research_results`, function (error, result) {
        if(error){
          throw error;
        }
        research_results = result;
        switch(sess.langcheck){
          case 0:
            res.cookie('lang', 'en');
          break;
          case 1:
            res.cookie('lang', 'ko');
          break;
        }
        res.render('index', {'members_table': members_table , 'research_fields': research_fields, 'research_results': research_results, tran_value:tran, name:sess.username});
      });
    });
  });
});

router.get('/ko', function (req, res) {
sess = req.session;
sess.langcheck = 1;
  res.cookie('lang', 'ko');
  res.redirect('back');
});

router.get('/en', function (req, res) {
sess = req.session;
sess.langcheck = 0;
  res.cookie('lang', 'en');
  res.redirect('back');
});

router.get('/generic', function (req, res, next) {
  res.render('generic');
});

router.get('/elements', function (req, res, next) {
  res.render('elements');
});

module.exports = router;
