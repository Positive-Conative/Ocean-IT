var express = require('express');
var db = require('../config/db');
var router = express.Router();
var moment = require('moment');
var s_select;
var s_data;
var recheck=0;

/* GET home page. */
router.get('/', function(req, res, next) {
    recheck=0;
    res.redirect('research_fields/page/1');
});
router.get('/select/:sel/:num', function(req, res, next) {
    const sess = req.session;
    var date = moment().format("YYYY-MM-DD");
    var tran = res.cookie('lang').locale;
    switch(req.params.sel){
        case "1":
            var val = "select * from research_fields where date_end>=now();";
            var check = 1;
            break;
        case "2":
            var val = "select * from research_fields where date_end<now();";
            var check = 2;
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
        res.render('research_fields', {'research_fields_table': fields, 'today_date':date, 'num_check':check, 'page_num' : req.params.num, tran_value:tran, name:sess.username, cpt:sess.usercpt});
    });
});
router.post('/select/:sel/:num', function(req, res, next) {
    const sess = req.session;
    recheck=1;
    s_select = req.body.search_select;
    s_data = req.body.search_data;
    var tran = res.cookie('lang').locale;
    var check = 0;
    var date = moment().format("YYYY-MM-DD");
    switch(s_select){
        case "1":
            var query2 = 'research_name_ko like "%';
            var query3 = '%" or research_name_en like "%';
            break;
        case "2":
            var query2 = 'support_organization_ko like "%';
            var query3 = '%" or support_organization_en like "%';
            break;
        case "3":
            var query2 = 'research_charge_ko like "%';
            var query3 = '%" or research_charge_en like "%';
            break;
    }
    var query1 = 'select * from research_fields where ';
    var query4 = '%"';
    var fin = query1 + query2 + s_data + query3 + s_data + query4;
    db.query(fin, function (error, fields) {
        if(error){
            throw error;
        }
        res.render('research_fields', {'research_fields_table': fields, 'page_num' : 1, name:sess.username,'num_check':check, 'today_date':date, tran_value:tran, cpt:sess.usercpt});
    });
});
router.get('/page/:num', function(req, res, next) {
    const sess = req.session;
    var check = 0;
    var date = moment().format("YYYY-MM-DD");
    var tran = res.cookie('lang').locale;
    if(recheck ==0){
        db.query(`select * from research_fields`, function (error, fields) {
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
            res.render('research_fields', {'research_fields_table': fields, 'today_date':date, 'num_check':check, 'page_num' : req.params.num, tran_value:tran,  name:sess.username, cpt:sess.usercpt});
        });
    }
    else{
        switch(s_select){
            case "1":
                var query2 = 'research_name_ko like "%';
                var query3 = '%" or research_name_en like "%';
                break;
            case "2":
                var query2 = 'support_organization_ko like "%';
                var query3 = '%" or support_organization_en like "%';
                break;
            case "3":
                var query2 = 'research_charge_ko like "%';
                var query3 = '%" or research_charge_en like "%';
                break;
        }
        var query1 = 'select * from research_fields where ';
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
            res.render('research_fields', {'research_fields_table': fields, 'page_num' : req.params.num, name:sess.username,'num_check':check, 'today_date':date, tran_value:tran, cpt:sess.usercpt});
        });
    }
});
router.post('/page/:num', function(req, res, next) {
    const sess = req.session;
    recheck=1;
    s_select = req.body.search_select;
    s_data = req.body.search_data;
    var tran = res.cookie('lang').locale;
    var check = 0;
    var date = moment().format("YYYY-MM-DD");
    switch(s_select){
        case "1":
            var query2 = 'research_name_ko like "%';
            var query3 = '%" or research_name_en like "%';
            break;
        case "2":
            var query2 = 'support_organization_ko like "%';
            var query3 = '%" or support_organization_en like "%';
            break;
        case "3":
            var query2 = 'research_charge_ko like "%';
            var query3 = '%" or research_charge_en like "%';
            break;
    }
    var query1 = 'select * from research_fields where ';
    var query4 = '%"';
    var fin = query1 + query2 + s_data + query3 + s_data + query4;
    db.query(fin, function (error, fields) {
        if(error){
            throw error;
        }
        res.render('research_fields', {'research_fields_table': fields, 'page_num' : 1, name:sess.username,'num_check':check, 'today_date':date, tran_value:tran, cpt:sess.usercpt});
    });
});

router.get('/detail/:num', function(req, res, next) {
    const sess = req.session;
    var tran = res.cookie('lang').locale;
    var date = moment().format("YYYY-MM-DD");
    db.query(`select * from research_fields where rid = ?`, req.params.num, function (error, field) {
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
        res.render('research_fields_detail', {'field': field, name:sess.username, tran_value:tran,'today_date':date, cpt:sess.usercpt});
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
    res.render('research_fields_write_page',{name:sess.username, cpt:sess.usercpt});
});

router.post('/write', function(req, res, next) {
    const sess = req.session;
    var body = req.body;
    var data = {
        research_name_ko : body.r_research_name_ko,
        research_name_en : body.r_research_name_en,
        classification_ko : body.r_classification_ko,
        classification_en : body.r_classification_en,
        support_organization_ko : body.r_support_organization_ko,
        research_purpose_ko : body.r_research_purpose_ko,
        research_purpose_en : body.r_research_purpose_en,
        research_contents_ko : body.r_research_contents_ko,
        research_contents_en : body.r_research_contents_en,
        research_expected_ko : body.r_research_expected_ko,
        research_expected_en : body.r_research_expected_en,
        date_start : body.r_date_start,
        date_end : body.r_date_end,
        research_charge_ko : body.r_research_charge_ko,
        research_charge_belong_ko : body.r_research_charge_belong_ko
    };

    db.query(`INSERT INTO research_fields set ?`, data, function (error, field) {
        if(error){
            throw error;
        }
        else{
          switch(sess.langcheck){
            case 0:
              res.cookie('lang', 'en');
            break;
            case 1:
              res.cookie('lang', 'ko');
            break;
          }
            res.redirect('/research_fields');
        }
    });
});
//-----------------------------------------------------------------------------------------------------Android
router.get('/get_research', (req, res) => {
    db.query(`select * from research_fields order by rid desc`, function (error, fields) {
        if(error){
            throw error;
        }else{
			res.json(fields);
		}
	});
});
router.post('/insert_research', function(req, res, next) {

    var body = req.body;
    var data = {
        research_name_ko : body.research_Name_ko,
        research_name_en : body.research_Name_en,
        classification_ko : body.classification_ko,
        classification_en : body.classification_en,
        support_organization_ko : body.support_Agency_ko,
        support_organization_en : body.support_Agency_en,
        research_purpose_ko : body.research_goal_ko,
        research_purpose_en : body.research_goal_en,
        research_contents_ko : body.research_content_ko,
        research_contents_en : body.research_content_en,
        research_expected_ko : body.expected_performance_ko,
        research_expected_en : body.expected_performance_en,
        date_start : body.start_date,
        date_end : body.end_date,
        research_charge_ko : body.research_officer_ko,
        research_charge_en : body.research_officer_en,
        research_charge_belong_ko : body.belong_research_officer_ko,
        research_charge_belong_en : body.belong_research_officer_en
    };
    console.log("data",data);
    db.query(`INSERT INTO research_fields set ?`, data, function (error, field) {
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
