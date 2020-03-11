var express = require('express');
var db = require('../config/db');
var router = express.Router();
var moment = require('moment');
var s_select;
var s_data;
var recheck=0;
var isthis="전체";

/* GET home page. */
router.get('/', function(req, res, next) {
    recheck=0;
    res.redirect('/research_fields/select/1/1');
});

router.get('/select/:sel/:num', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}

    const sess = req.session;
    var date = moment().format("YYYY-MM-DD");
    var tran = req.session.lang;
    switch(req.params.sel){
        case "1":
            var val = "select * from research_fields where date_end>=now();";
            var check = 1;
            isthis="진행과제";
            break;
        case "2":
            var val = "select * from research_fields where date_end<now();";
            var check = 2;
            isthis="완료과제";
            break;
    }
    db.query(val,function (error, fields) {
        if(error){
            throw error;
        }
        res.render('research_fields', {'research_fields_table': fields, 'today_date':date, 'num_check':check, 'page_num' : req.params.num, tran_value:tran, name:sess.username, cpt:sess.usercpt, isthis:isthis});
    });
});
router.post('/select/:sel/:num', function(req, res, next) {
    const sess = req.session;
    recheck=1;
    s_select = req.body.search_select;
    s_data = req.body.search_data;
    var tran = req.session.lang;
    var check = 0;
    var date = moment().format("YYYY-MM-DD");
    switch(s_select){
        case "1":
            var query2 = 'research_name_ko like "%';
            var query3 = '%" or research_name_en like "%';
            break;
        case "2":
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
        res.render('research_fields', {'research_fields_table': fields, 'page_num' : 1, name:sess.username,'num_check':check, 'today_date':date, tran_value:tran, cpt:sess.usercpt, isthis:"전체"});
    });
});
router.get('/page/:num', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
    const sess = req.session;
    var check = 0;
    var date = moment().format("YYYY-MM-DD");
    var tran = req.session.lang;
    if(recheck ==0){
        db.query(`select * from research_fields`, function (error, fields) {
            if(error){
                throw error;
            }
            res.render('research_fields', {'research_fields_table': fields, 'today_date':date, 'num_check':check, 'page_num' : req.params.num, tran_value:tran,  name:sess.username, cpt:sess.usercpt, isthis:isthis});
        });
    }
    else{
        switch(s_select){
            case "1":
                var query2 = 'research_name_ko like "%';
                var query3 = '%" or research_name_en like "%';
                break;
            case "2":
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
            res.render('research_fields', {'research_fields_table': fields, 'page_num' : req.params.num, name:sess.username,'num_check':check, 'today_date':date, tran_value:tran, cpt:sess.usercpt, isthis:isthis});
        });
    }
});
router.post('/page/:num', function(req, res, next) {
    const sess = req.session;
    recheck=1;
    s_select = req.body.search_select;
    s_data = req.body.search_data;
    var tran = req.session.lang;
    var check = 0;
    var date = moment().format("YYYY-MM-DD");
    switch(s_select){
        case "1":
            var query2 = 'research_name_ko like "%';
            var query3 = '%" or research_name_en like "%';
            break;
        case "2":
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
        res.render('research_fields', {'research_fields_table': fields, 'page_num' : 1, name:sess.username,'num_check':check, 'today_date':date, tran_value:tran, cpt:sess.usercpt, isthis:"전체"});
    });
});

router.get('/detail/:num', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
    const sess = req.session;
    var tran = req.session.lang;
    var date = moment().format("YYYY-MM-DD");
    db.query(`select * from research_fields where rid = ?`, req.params.num, function (error, field) {
        if(error){
            throw error;
        }
        db.query(`select field_picture from research_fields where rid=?;`, req.params.num, function (error, field2) {
            if(error){
                throw error;
            }
            db.query(`select * from research_fields_link where rid=?;`, req.params.num, function (error, link_field) {
                if(error){
                    throw error;
                }
                res.render('research_fields_detail', {'field': field, field2:field2, link_field:link_field, name:sess.username, tran_value:tran,'today_date':date, cpt:sess.usercpt, isthis:isthis});
            });
        });   
        
    });
});

router.get('/detail/popup/:num', function(req, res, next) {
    db.query(`select field_picture from research_fields where rid=?;`, req.params.num, function (error, field) {
        if(error){
            throw error;
        }
        // var jbString = 'abc,def,ghi';
        // var jbSplit = jbString.split(',');
        // for ( var i in jbSplit ) {
        // //console.log( '<p>' + jbSplit[i] + '</p>' );
        // }
        // var json_type = JSON.stringify(field);
        // console.log(json_type[1]);
        res.render('research_fields_detail_popup', {'field': field});
    });   
});

router.get('/write', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
    const sess = req.session;
    res.render('research_fields_write_page',{name:sess.username, cpt:sess.usercpt});
});

router.post('/write', function(req, res, next) {
    console.log("hello");
    const sess = req.session;
    var body = req.body;
    var data = {
        research_name_ko : body.research_name_ko,
        research_name_en : body.research_name_en,
        business_name_ko : body.business_name_ko,
        business_name_en : body.business_name_en,
        department_name_ko : body.department_name_ko,
        department_name_en : body.department_name_en,
        subjectivity_organization_ko : body.subjectivity_organization_ko,
        subjectivity_organization_en : body.subjectivity_organization_en,
        support_organization_ko : body.support_organization_ko,
        support_organization_en : body.support_organization_en,
        participation_organization_ko : body.participation_organization_ko,
        participation_organization_en : body.participation_organization_en,
        research_charge_ko : body.research_charge_ko,
        research_charge_en : body.research_charge_en,
        research_charge_belong_ko : body.research_charge_belong_ko,
        research_charge_belong_en : body.research_charge_belong_en,

        research_purpose_ko : body.r_research_purpose_ko,
        research_purpose_en : body.r_research_purpose_en,
        research_contents_ko : body.r_research_contents_ko,
        research_contents_en : body.r_research_contents_en,
        research_expected_ko : body.r_research_expected_ko,
        research_expected_en : body.r_research_expected_en,
        date_start : body.r_date_start,
        date_end : body.r_date_end,
        field_picture : ""
    };

    db.query(`INSERT INTO research_fields set ?`, data, function (error, field) {
        if(error){
            throw error;
        }
        else{
            res.redirect('/research_fields');
        }
    });
});
//-----------------------------------------------------------------------------------------------------Android
router.get('/get_research', (req, res) => {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
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
        business_ko : body.business_ko,
        business_en : body.business_en,
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
