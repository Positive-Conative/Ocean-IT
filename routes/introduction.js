var express = require('express');
var router = express.Router();

router.get('/', function (req, res, next) {
    const sess = req.session;
    switch(sess.langcheck){
      case 0:
        res.cookie('lang', 'en');
      break;
      case 1:
        res.cookie('lang', 'ko');
      break;
    }
    res.render('introduction', {name:sess.username});
});

module.exports = router;
