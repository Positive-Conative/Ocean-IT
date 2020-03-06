var express = require('express');//test
var db = require('../config/db');
var i18n = require('../config/i18n');
var router = express.Router();
/* GET home page. */
router.get(['/', '/index'], function(req, res, next) {
  if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
  else if(req.session.lang=="en"){res.cookie('lang', 'en');}
  else{res.cookie('lang', 'en');}
  const sess = req.session;
  var members_table;
  var research_fields;
  var research_results;
  var tran = req.session.lang;
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

        if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
        else if(req.session.lang=="en"){res.cookie('lang', 'en');}
        else{res.cookie('lang', 'en');}
        res.render('index', {'members_table': members_table , 'research_fields': research_fields, 'research_results': research_results, tran_value:tran, name:sess.username});
      });
    });
  });
});

router.get('/ko', function (req, res) {
  req.session.lang = "ko";
  res.cookie('lang', 'ko');
  res.redirect('back');
});

router.get('/en', function (req, res) {
  req.session.lang = "en";
  res.cookie('lang', 'en');
  res.redirect('back');
});

router.get('/generic', function (req, res, next) {
  res.render('generic', {name:1});
});

router.get('/elements', function (req, res, next) {
  res.render('elements', {name:1});
});

module.exports = router;
