var express = require('express');
var db = require('../config/db');
var router = express.Router();

router.get('/', function (req, res, next) {
    const sess = req.session;
    console.log("+++++++++++++++++++++++++++++"+req.query.data);
    switch(sess.langcheck){
      case 0:
        res.cookie('lang', 'en');
      break;
      case 1:
        res.cookie('lang', 'ko');
      break;
    }
    db.query(`select * from introduction`, function (error, data) {
      if(error){
          throw error;
      }
      res.render('introduction', {name:sess.username, intro_data : data, tran_value : res.cookie('lang').locale, data_value:req.query.data});
    });
});

module.exports = router;
