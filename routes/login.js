var express = require('express');
var db = require('../config/db');
var router = express.Router();
var app = express();
/* GET home page. */
router.get('/', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
    var one_more_try = false;
    var login_data;
    sess = req.session;
    sess.username = undefined;
    sess.usercpt = undefined;
    db.query(`select * from user_data`, function (error, data) {
        if(error){
            throw error;
        }
        login_data = data;
        res.render('login', {'one_more_try': one_more_try, name:sess.username, cpt:sess.usercpt});
    });
});
router.post('/', function(req, res, next) {
    db.query(`select * from user_data where uid=? and upw=?`,[req.body.input_id,req.body.input_pw], function (error, field) {
        if(error){
            throw error;
        }
        else{
            if(field[0]==undefined){ //로그인 실패
                var one_more_try = true;
                var login_data;
                sess = req.session;
                sess.username = undefined;
                sess.usercpt = undefined;
                db.query(`select * from user_data`, function (error, data) {
                    if(error){
                        throw error;
                    }
                    login_data = data;
                    res.render('login', {'one_more_try': one_more_try, name:sess.username, cpt:sess.usercpt});
                });
            }
            else{ //로그인 성공
                const sess = req.session;
                sess.userid=field[0].uid;
                sess.username=field[0].uname;
                sess.usercpt = field[0].ucpt;
                var tran = req.session.lang;
                var members_table;
                var research_fields;
                var research_results;
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
                            res.render('index', {'members_table': members_table , 'research_fields': research_fields, 'research_results': research_results, name:sess.username, tran_value:tran, cpt:sess.usercpt});
                        });
                    });
                });
            }
        }
    });
});
router.get('/login_join', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    
    const sess = req.session;
    sess.username = undefined
    sess.usercpt = undefined;
    db.query(`select uid from user_data`, function (error, data) {
        if(error){
            throw error;
        }
        var login_data = data;
        var num = data.length;
        res.render('login_join', {'login_data': login_data, 'user_num':num, name:sess.username, cpt:sess.usercpt});
    });
});
router.post('/login_join', function(req, res, next) {
    var body = req.body;
    var data = {
        uid: body.input_id,
        upw: body.input_pw,
        uname: body.input_name,
        uadr: body.input_adr,
        unum: body.input_num,
        uemail: body.input_mail
    };

    db.query(`INSERT INTO user_data set ?`, data, function (error, field) {
        if(error){
            throw error;
        }
        else{
            res.redirect('/login');
        }
    });
});
router.get('/logout', function(req, res, next) {
    if(req.session.lang=="ko"){res.cookie('lang', 'ko');}
    else if(req.session.lang=="en"){res.cookie('lang', 'en');}
    else{res.cookie('lang', 'en');}
    const sess = req.session;
    sess.username = undefined;
    sess.usercpt = undefined;
    var tran = req.session.lang;
    var members_table;
    var research_fields;
    var research_results;
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
                res.render('index', {'members_table': members_table , 'research_fields': research_fields, 'research_results': research_results, name:sess.username, tran_value:tran,cpt:sess.usercpt});
            });
        });
    });
});
//-----------------------------------------------------------------------------------------------------Android
router.post('/match_info', function(req, res) {
    db.query(`select * from user_data where uid=? and upw=?`,[req.body.uid,req.body.upw], function (error, field) {
        console.log("hello " + field[0]);
        //console.log("hello " + field[0].uname);
        if(error){
            throw error;
        }
        else{
            if(field[0]==undefined){ //로그인 실패
                res.write("undefined");
                res.end();
            }
            else{ //로그인 성공
                console.log(field[0].uname);
                res.write(field[0].uname+","+field[0].ucpt);
                res.end();
            }
            /*console.log(field[0]);
            res.write(field[0].uname);
            res.end();*/
        }
    });
});
router.post('/isexist_id', function(req, res) {
    db.query(`select * from user_data where uid=?`,[req.body.uid], function (error, field) {
        console.log("hello " + field[0]);
        //console.log("hello " + field[0].uname);
        if(error){
            throw error;
        }
        else{
            if(field[0]==undefined){ //중복아이디 없음
                res.write("undefined");
                res.end();
            }
            else{ //중복아이디 있음
                console.log("exist"+field[0].uid);
                res.write("exist");
                res.end();
            }
            /*console.log(field[0]);
            res.write(field[0].uname);
            res.end();*/
        }
    });

});

router.post('/create_account', function(req, res) {
    //console.log(req.body.id+","+req.body.password+","+req.body.name+","+req.body.phonenum+","+req.body.email+","+req.body.address);
    var input_id = req.body.id;
    var input_password = req.body.password;
    var input_name = req.body.name;
    var input_phonenum = req.body.phonenum;
    var input_email = req.body.email;
    var input_address = req.body.address;

    var data = {
        uid: input_id,
        upw: input_password,
        uname:input_name,
        uadr: input_phonenum,
        unum: input_email,
        uemail: input_address
    };

    db.query(`INSERT INTO user_data set ?`, data, function (error, field) {
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
