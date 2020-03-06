var express = require('express');
var db = require('../config/db');
var router = express.Router();

router.get('/', function (req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    console.log("인트로"+req.session.lang)
  
    const sess = req.session;
    db.query(`select * from introduction`, function (error, data) {
      if(error){
          throw error;
      }
      res.render('introduction', {name:sess.username, intro_data : data, tran_value : req.session.lang, data_value:req.query.data});
    });
});

module.exports = router;
