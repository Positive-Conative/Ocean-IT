var express = require('express');
var db = require('../config/db');
var router = express.Router();
var s_select;
var s_data;
var recheck=0;
var isthis="논문";
var fieldz1, fieldz2;
/* GET home page. */
router.get('/', function(req, res, next) {
    recheck=0;
    res.redirect('/research_results/select/1/1')
});

router.get('/select/:sel/:num', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}

    const sess = req.session;
    var tran = req.session.lang;
    recheck=0;
    switch(req.params.sel){
        case "1":
            var val = "select * from research_results where classification_ko='논문' order by p_date desc;";
            var check = 1;
            isthis="논문";
            break;
        case "2":
            var val = "select * from research_results where classification_ko='특허' order by p_date desc;";
            var check = 2;
            isthis="특허";
            break;
        case "3":
            var val = "select * from research_results where classification_ko='발표' order by p_date desc;";
            var check = 3;
            isthis="발표";
            break;
        case "4":
            var val = "select * from research_results where classification_ko='저서' order by p_date desc;";
            var check = 4;
            isthis="저서";
            break;
    }
    db.query(val,function (error, fields) {
        if(error){
            throw error;
        }
        res.render('research_results', {'research_results_table': fields, 'page_num' : req.params.num, tran_value:tran, 'num_check':check, name:sess.username, cpt:sess.usercpt, isthis:isthis});
    });
});
router.post('/select/:sel/:num', function(req, res, next) {
    const sess = req.session;
    s_select = req.body.search_select;
    s_data = req.body.search_data;
    var tran = req.session.lang;
    var check = 0;
    recheck=1;
    

    
    s_div = req.body.search_select_div;
    
    switch(s_div){
        case "1":
            isthis = "논문";
            fieldz1 = 'academic_journal_ko';
            fieldz2 = 'academic_journal_ko';
            var query5 = ' and classification_ko="논문" order by p_date desc';
            break;
        case "2":
            isthis = "특허";
            fieldz1 = 'country_ko';
            fieldz2 = 'country_en';
            var query5 = ' and classification_ko="특허" order by p_date desc';
            break;
        case "3":
            isthis = "발표";
            fieldz1 = 'academic_journal_ko';
            fieldz2 = 'academic_journal_ko';
            var query5 = ' and classification_ko="발표" order by p_date desc';
            break;
        case "4":
            isthis = "저서";
            fieldz1 = 'academic_journal_ko';
            fieldz2 = 'academic_journal_ko';
            var query5 = ' and classification_ko="저서" order by p_date desc';
            break;
    }
    
    switch(s_select){
        case "1":
            var query2 = 'result_name_ko like "%';
            var query3 = '%" or result_name_en like "%';
            break;
        case "2":
            var query2 = 'writers_ko like "%';
            var query3 = '%" or writers_en like "%';
            break;
        case "3":
            var query2 = fieldz1+' like "%';
            var query3 = '%" or '+fieldz2+' like "%';
            break;
    }
    var query1 = 'select * from research_results where(';
    var query4 = '%")';
    var fin = query1 + query2 + s_data + query3 + s_data + query4+query5;
    console.log("fieldz1  : "+fieldz1);
    console.log("fieldz2  : "+fieldz2);
    console.log("들어가는 데이터 값 : "+fin);
    db.query(fin, function (error, fields) {
        if(error){
            throw error;
        }
        res.render('research_results', {'research_results_table': fields, 'page_num' : req.params.num, tran_value:tran, 'num_check':check, name:sess.username, cpt:sess.usercpt, isthis:isthis});
    });
});

router.get('/page/:num', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
        
    const sess = req.session;
    var tran = req.session.lang;
    var check = 0;
    if(recheck ==0){
        db.query(`select * from research_results order by p_date desc`, function (error, fields) {
            if(error){
                throw error;
            }
            res.render('research_results', {'research_results_table': fields, 'page_num' : req.params.num, tran_value:tran, 'num_check':check, name:sess.username, cpt:sess.usercpt, isthis:"논문"});
        });
    }
    else{
        
        s_div = req.body.search_select_div;
        
        switch(s_div){
            case "1":
                isthis = "논문";
                fieldz1 = 'academic_journal_ko';
                fieldz2 = 'academic_journal_ko';
                var query5 = ' and classification_ko="논문" order by p_date desc';
                break;
            case "2":
                isthis = "특허";
                fieldz1 = 'country_ko';
                fieldz2 = 'country_en';
                var query5 = ' and classification_ko="특허" order by p_date desc';
                break;
            case "3":
                isthis = "발표";
                fieldz1 = 'academic_journal_ko';
                fieldz2 = 'academic_journal_ko';
                var query5 = ' and classification_ko="발표" order by p_date desc';
                break;
            case "4":
                isthis = "저서";
                fieldz1 = 'academic_journal_ko';
                fieldz2 = 'academic_journal_ko';
                var query5 = ' and classification_ko="저서" order by p_date desc';
                break;
        }
        switch(s_select){
            case "1":
                var query2 = 'result_name_ko like "%';
                var query3 = '%" or result_name_en like "%';
                break;
            case "2":
                var query2 = 'writers_ko like "%';
                var query3 = '%" or writers_en like "%';
                break;
            case "3":
                var query2 = fieldz1+' like "%';
                var query3 = '%" or '+fieldz2+' like "%';
                break;
        }
        var query1 = 'select * from research_results where ';
        var query4 = '%" order by p_date desc';
        var fin = query1 + query2 + s_data + query3 + s_data + query4;
        console.log("fieldz1  : "+fieldz1);
        console.log("fieldz2  : "+fieldz2);
        console.log("들어가는 데이터 값 : "+fin);
        db.query(fin, function (error, fields) {
            if(error){
                throw error;
            }
            res.render('research_results', {'research_results_table': fields, 'page_num' : req.params.num, tran_value:tran, 'num_check':check, name:sess.username, cpt:sess.usercpt, isthis:isthis});
        });
    }


});

router.post('/page/:num', function(req, res, next) {
    const sess = req.session;
    s_select = req.body.search_select;
    s_data = req.body.search_data;
    var tran = req.session.lang;
    var check = 0;
    recheck=1;
    s_div = req.body.search_select_div;
    
    
    switch(s_div){
        case "1":
            isthis = "논문";
            fieldz1 = 'academic_journal_ko';
            fieldz2 = 'academic_journal_ko';
            var query5 = ' and classification_ko="논문" order by p_date desc';
            break;
        case "2":
            isthis = "특허";
            fieldz1 = 'country_ko';
            fieldz2 = 'country_en';
            var query5 = ' and classification_ko="특허" order by p_date desc';
            break;
        case "3":
            isthis = "발표";
            fieldz1 = 'academic_journal_ko';
            fieldz2 = 'academic_journal_ko';
            var query5 = ' and classification_ko="발표" order by p_date desc';
            break;
        case "4":
            isthis = "저서";
            fieldz1 = 'academic_journal_ko';
            fieldz2 = 'academic_journal_ko';
            var query5 = ' and classification_ko="저서" order by p_date desc';
            break;
    }
    switch(s_select){
        case "1":
            var query2 = 'result_name_ko like "%';
            var query3 = '%" or result_name_en like "%';
            break;
        case "2":
            var query2 = 'writers_ko like "%';
            var query3 = '%" or writers_en like "%';
            break;
        case "3":
            var query2 = fieldz1+' like "%';
            var query3 = '%" or '+fieldz2+' like "%';
            break;
    }
    var query1 = 'select * from research_results where ';
    var query4 = '%" order by p_date desc';
    var fin = query1 + query2 + s_data + query3 + s_data + query4;
    console.log("fieldz1  : "+fieldz1);
    console.log("fieldz2  : "+fieldz2);
    console.log("들어가는 데이터 값 : "+fin);
    db.query(fin, function (error, fields) {
        if(error){
            throw error;
        }
        res.render('research_results', {'research_results_table': fields, 'page_num' : req.params.num, tran_value:tran, 'num_check':check, name:sess.username, cpt:sess.usercpt, isthis:isthis});
    });
});

router.get('/detail/:num', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
    const sess = req.session;
    var tran = req.session.lang;
    db.query(`select * from research_results where rrid = ?`, req.params.num, function (error, field) {
        if(error){
            throw error;
        }
        res.render('research_results_detail', {'field': field, name:sess.username, tran_value:tran, cpt:sess.usercpt, isthis:isthis});
    });
});
router.get('/write', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
    const sess = req.session;
    res.render('research_results_write_page', {name:sess.username, cpt:sess.usercpt, isthis:isthis});
});
router.post('/write', function(req, res, next) {
    const sess = req.session;
    var body = req.body;
    const date = new Date();
    var data = {
        classification_ko: body.r_classification_ko,
        result_name_ko: body.r_result_name_ko,
        result_name_en: body.r_result_name_en,
        p_date: body.r_p_date,
        academic_journal_ko: body.r_academic_journal_ko,
        writers_ko: body.r_writers_ko,
        writers_en: body.r_writers_en,
        announce_media_ko: body.r_announce_media_ko,
        country_ko: body.r_country_ko,
        relation_task_ko: body.r_relation_task_ko,
        abstract_ko: body.r_abstract_ko,
        abstract_en : body.r_abstract_en

    };

    db.query(`INSERT INTO research_results set ?`, data, function (error, field) {
        if(error){
            throw error;
        }
        else{
            res.redirect('/research_results');
        }
    });
});

//-----------------------------------------------------------------------------------------------------Android
router.get('/get_result', (req, res) => {
    db.query(`select * from research_results order by rrid desc`, function (error, fields) {
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
      classification_ko: body.classification_ko,
      classification_en: body.classification_en,
      result_name_ko: body.Thesis_name_ko,
      result_name_en: body.Thesis_name_en,
      academic_journal_ko: body.Academic_society_academic_name_ko,
      academic_journal_en: body.Academic_society_academic_name_en,
      writers_ko: body.Author_ko_txt,
      writers_en: body.Author_en_txt,
      announce_media_ko: body.Presentation_medium_ko_txt,
      announce_media_en: body.Presentation_medium_en_txt,
      country_ko: body.country_ko,
      country_en: body.country_en,
      relation_task_ko: body.Related_task_ko_txt,
      relation_task_en: body.Related_task_en_txt,
      abstract_ko: body.Abstract_ko_txt,
      abstract_en : body.Abstract_en_txt,
      p_date: body.Announcement_date_txt
    };
    console.log("data",data);
    db.query(`INSERT INTO research_results set ?`, data, function (error, field) {
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
