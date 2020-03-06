var express = require('express');
var db = require('../config/db');
var router = express.Router();
var s_select;
var s_data;
var recheck=0; // 검색기능 활성화

/* GET home page. */
router.get('/', function(req, res, next) {
    recheck=0;
    res.redirect('question_board/page/1');
});

router.get('/page/:num', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
    const sess = req.session;
    if(recheck==0){
        db.query(`select * from question_board`, function (error, fields) {
            if(error){
                throw error;
            }
            res.render('question_board', {'question_board_table': fields, 'page_num' : req.params.num, name:sess.username, cpt:sess.usercpt});
        });
    }
    else{
        const sess = req.session;
        var query1 = 'select * from question_board where ';
        var query2 = ' like "%';
        var query3 = '%";';
        var fin = query1 + s_select + query2 + s_data + query3;
        db.query(fin, function (error, fields) {
            if(error){
                throw error;
            }
            res.render('question_board', {'question_board_table': fields, 'page_num' : req.params.num, name:sess.username, cpt:sess.usercpt});
        });
    }
});
router.post('/page/:num', function(req, res, next) {
    recheck=1;
    const sess = req.session;
    s_select = req.body.search_select;
    s_data = req.body.search_data;
    var query1 = 'select * from question_board where ';
    var query2 = ' like "%';
    var query3 = '%";';
    var fin = query1 + s_select + query2 + s_data + query3;
    db.query(fin, function (error, fields) {
        if(error){
            throw error;
        }
        res.render('question_board', {'question_board_table': fields, 'page_num' : 1, name:sess.username, cpt:sess.usercpt});
    });
});

router.get('/detail/:num', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
    const sess = req.session;
    db.query(`select * from question_board where qid = ?`, req.params.num, function (error, field) {
        if(error){
            throw error;
        }
        db.query(`update question_board set hits = hits+1 where qid = ?;`,req.params.num, function (error, hits) {
            if(error){
                throw error;
            }
            field[0].hits++;
            res.render('question_board_detail', {'field': field, name:sess.username, cpt:sess.usercpt, uid:sess.userid});
        });
    });
});
router.post('/detail/:num', function(req, res, next) {
    db.query(`DELETE FROM question_board where qid=?;`,req.params.num, function (error, hits) {
        if(error){
            throw error;
        }
        res.redirect('/question_board');
    });
});
router.get('/write', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
    const sess = req.session;
    var fields = [{
        title:undefined,
        writer:undefined,
        contents:undefined,
        coments:undefined
    }];
    res.render('question_board_write_page', {'field': fields, name:sess.username, cpt:sess.usercpt, uid:sess.userid});
});

router.post('/write', function(req, res, next) {
    var body = req.body;
    const date = new Date();
    if(req.session.userid){
        q_user = req.session.userid;
    }
    else{
        q_user = '손님';
    }
    var data = {
        title: body.q_title,
        writer: q_user,
        contents: body.q_contents,
        date : date,
        hits : 0
    };

    db.query(`INSERT INTO question_board set ?`, data, function (error, field) {
        if(error){
            throw error;
        }
        else{
            res.redirect('/question_board');
        }
    });
});

router.get('/write/:num', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
    const sess = req.session;
    db.query(`select * from question_board where qid = ?`, req.params.num, function (error, field) {
        if(error){
            throw error;
        }
        if(field[0].coments==undefined){
            res.render('question_board_write_page', {'field': field, name:sess.username, cpt:sess.usercpt, uid:sess.userid});
        }
        else{
            res.redirect('/question_board');
        }
    });
});

router.post('/write/:num', function(req, res, next) {
    const date = new Date();
    db.query(`UPDATE question_board SET title=?, contents=?, date=? where qid=?`, [req.body.q_title,req.body.q_contents,date,req.params.num], function (error, field) {
        if(error){
            throw error;
        }
        else{
            res.redirect('/question_board');
        }
    });
});

router.get('/coment/:num', (req, res) => {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
    const sess = req.session;
    db.query(`select * from question_board where qid = ?`, req.params.num, function (error, field) {
        if(error){
            throw error;
        }
        res.render('question_board_coment', {'field': field, name:sess.username, cpt:sess.usercpt});
    });
});
router.post('/coment/:num', (req, res) => {
    const date = new Date();
    console.log("asdf " + date);
    db.query(`UPDATE question_board SET coments=?, coments_date=? where qid=?`, [req.body.q_coment,date,req.params.num], function (error, field) {
        if(error){
            throw error;
        }
            res.redirect('/question_board');
    });
});
//-----------------------------------------------------------------------------------------------------Android
router.get('/get_question', (req, res) => {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
    db.query(`select * from question_board order by qid desc`, function (error, fields) {
        if(error){
            throw error;
        }else{
            res.json(fields);
        }
    });
});
router.post('/get_post', function(req, res){
    console.log('who get in here post /users');
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth()+1;
    var day = date.getDate();
    if(month < 10){
        month = "0"+month;
    }
    if(day < 10){
        day = "0"+day;
    }
    var today = year+"-"+month+"-"+day;
    var take_title = req.body.title;
    var take_writer = req.body.writer;
    var take_contents = req.body.contents;
    var data = {
        title :take_title,
        writer : take_writer,
        contents : take_contents,
        date : today
    }
    db.query(`INSERT INTO question_board set ?`, data, function (error, field) {
        if(error){
            throw error;
        }
        else{

        }
    });
    res.write("OK!");
    res.end();
});

router.post('/get_comment', (req, res) => {
    //const date = new Date();
    console.log("comment",req.body.comment);
    console.log("qid",req.body.qid);
    db.query(`UPDATE question_board SET coments=?, coments_date=? where qid=?`, [req.body.comment,req.body.time,req.body.qid], function (error, field) {
        if(error){
            throw error;
        }
        else{
        }
    });
});
module.exports = router;
