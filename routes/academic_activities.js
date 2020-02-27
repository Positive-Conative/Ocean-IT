var express = require('express');
var db = require('../config/db');
var router = express.Router();
var s_select;
var s_data;
var recheck=0;
var isthis="포럼";

/* GET home page. */
router.get('/', function(req, res, next) {
    recheck=0;
    res.redirect('academic_activities/page/1')
});

router.get('/select/:sel/:num', function(req, res, next) {
    recheck=0;
    const sess = req.session;
    var tran = res.cookie('lang').locale;
    switch(req.params.sel){
        case "1":
            var val = "select * from academic_activities where classification_ko='포럼';";
            isthis="포럼";
            var check = 1;
            break;
        case "2":
            var val = "select * from academic_activities where classification_ko='세미나';";
            isthis="세미나";
            var check = 2;
            break;
        case "3":
            var val = "select * from academic_activities where classification_ko='워크샵';";
            isthis="워크샵";
            var check = 3;
            break;
    }
    db.query(val,function (error, fields) {
        if(error){
            throw error;
        }
        switch(sess.langcheck){
          case 0:
            res.cookie('lang', 'en');
          break;
          case 1:
            res.cookie('lang', 'ko');
          break;
        }
        res.render('academic_activities', {'academic_activities_table': fields, 'page_num' : req.params.num, tran_value:tran, 'num_check':check, name:sess.username
        , cpt:sess.usercpt, isthis:isthis});
    });
});
router.post('/select/:sel/:num', function(req, res, next) {
    const sess = req.session;
    s_select = req.body.search_select;
    s_data = req.body.search_data;
    var tran = res.cookie('lang').locale;
    var check = 0;
    recheck=1;
    switch(s_select){
        case "1":
            var query2 = 'name_ko like "%';
            var query3 = '%" or name_en like "%';
            break;
        case "2":
            var query2 = 'place_ko like "%';
            var query3 = '%" or place_en like "%';
            break;
    }
    var query1 = 'select * from academic_activities where ';
    var query4 = '%"';
    var fin = query1 + query2 + s_data + query3 + s_data + query4;
    db.query(fin, function (error, fields) {
        if(error){
            throw error;
        }
        switch(sess.langcheck){
          case 0:
            res.cookie('lang', 'en');
          break;
          case 1:
            res.cookie('lang', 'ko');
          break;
        }
        res.render('academic_activities', {'academic_activities_table': fields, 'page_num' : req.params.num, tran_value:tran, 'num_check':check, name:sess.username, cpt:sess.usercpt, isthis:isthis});
    });
});

router.get('/page/:num', function(req, res, next) {
    const sess = req.session;
    var tran = res.cookie('lang').locale;
    var check = 0;
    if(recheck ==0){
        db.query(`select * from academic_activities`, function (error, fields) {
            if(error){
                throw error;
            }
            switch(sess.langcheck){
              case 0:
                res.cookie('lang', 'en');
              break;
              case 1:
                res.cookie('lang', 'ko');
              break;
            }
            res.render('academic_activities', {'academic_activities_table': fields, 'page_num' : req.params.num, tran_value:tran, 'num_check':check, name:sess.username, cpt:sess.usercpt, isthis:"전체"});
        });
    }
    else{
        switch(s_select){
          case "1":
            var query2 = 'name_ko like "%';
            var query3 = '%" or name_en like "%';
            break;
        case "2":
            var query2 = 'place_ko like "%';
            var query3 = '%" or place_en like "%';
            break;
        }
        var query1 = 'select * from academic_activities where ';
        var query4 = '%"';
        var fin = query1 + query2 + s_data + query3 + s_data + query4;
        db.query(fin, function (error, fields) {
            if(error){
                throw error;
            }
            switch(sess.langcheck){
              case 0:
                res.cookie('lang', 'en');
              break;
              case 1:
                res.cookie('lang', 'ko');
              break;
            }
            res.render('academic_activities', {'academic_activities_table': fields, 'page_num' : req.params.num, tran_value:tran, 'num_check':check, name:sess.username, cpt:sess.usercpt, isthis:"전체"});
        });
    }


});

router.post('/page/:num', function(req, res, next) {
    const sess = req.session;
    s_select = req.body.search_select;
    s_data = req.body.search_data;
    var tran = res.cookie('lang').locale;
    var check = 0;
    recheck=1;
    switch(s_select){
      case "1":
        var query2 = 'name_ko like "%';
        var query3 = '%" or name_en like "%';
        break;
    case "2":
        var query2 = 'place_ko like "%';
        var query3 = '%" or place_en like "%';
        break;
    }
    var query1 = 'select * from academic_activities where ';
    var query4 = '%"';
    var fin = query1 + query2 + s_data + query3 + s_data + query4;
    db.query(fin, function (error, fields) {
        if(error){
            throw error;
        }
        res.render('academic_activities', {'academic_activities_table': fields, 'page_num' : req.params.num, tran_value:tran, 'num_check':check, name:sess.username, cpt:sess.usercpt, isthis:"전체"});
    });
});

router.get('/detail/:num', function(req, res, next) {
    const sess = req.session;
    var tran = res.cookie('lang').locale;
    db.query(`select * from academic_activities where num = ?`, req.params.num, function (error, field) {
        if(error){
            throw error;
        }
        switch(sess.langcheck){
          case 0:
            res.cookie('lang', 'en');
          break;
          case 1:
            res.cookie('lang', 'ko');
          break;
        }
        res.render('academic_activities_detail', {'field': field, name:sess.username, tran_value:tran, cpt:sess.usercpt, isthis:isthis});
    });
});
router.get('/write', function(req, res, next) {
    const sess = req.session;
    switch(sess.langcheck){
      case 0:
        res.cookie('lang', 'en');
      break;
      case 1:
        res.cookie('lang', 'ko');
      break;
    }
    res.render('academic_activities_write', {name:sess.username, cpt:sess.usercpt});
});

router.post('/write', function(req, res, next) {
    const sess = req.session;
    var body = req.body;
    var data = {
        classification_ko: body.r_classification_ko,
        classification_en: "영어분류",
        name_ko: body.r_name_ko,
        name_en: body.r_name_en,
        place_ko: body.r_place_ko,
        place_en: body.r_place_en,
        date: body.r_date
    };

    db.query(`INSERT INTO academic_activities set ?`, data, function (error, field) {
        if(error){
            throw error;
        }
        else{
            res.redirect('/academic_activities');
        }
    });
});

//-----------------------------------------------------------------------------------------------------Android
router.get('/get_result', (req, res) => {
    db.query(`select * from academic_activities order by rrid desc`, function (error, fields) {
        if(error){
            throw error;
        }else{
            res.json(fields);
        }
    });
});

router.post('/insert_result', function(req, res, next) {

    var body = req.body;
    var data = {
      classification_ko: body.r_classification_ko,
      classification_en: "영어분류",
      name_ko: body.r_name_ko,
      name_en: body.r_name_en,
      place_ko: body.r_place_ko,
      place_en: body.r_place_en,
      date: body.r_date
    };
    console.log("data",data);
    db.query(`INSERT INTO academic_activities set ?`, data, function (error, field) {
        if(error){
            throw error;
        }
        else{
            res.write("ok");
            res.end();
        }
    });
});

module.exports = router;
