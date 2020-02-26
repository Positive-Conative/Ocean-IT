var express = require('express');
var db = require('../config/db');
var multer = require('multer');
var path = require('path');
var fs = require('fs');

var router = express.Router();
var local_filename;

fs.readdir('members/', (error)=>{
  if(error){
    console.log("err!");
    fs.mkdirSync("members");
  }
});
var upload = multer({
    storage : multer.diskStorage({
      destination(req,file,cd){
        cd(null, '../views/images/members');
    },
  filename(req,file,cb){
      const ext = path.extname(file.originalname);
          console.log(ext);

      New_File_Name = path.basename(file.originalname, ext) + new Date().valueOf()+ext;
      cb(null, New_File_Name);
    },
  }),
    limits : {fileSize : 5*1024*1024}
});
router.post('/img', upload.single('img'), (req,res)=>{
  local_filename =req.file.filename;
  console.log("++++++++++++++++++++++++++++++++++++"+local_filename);
  res.json({url:local_filename});
})

/* GET users listing. */
router.get('/', function (req, res, next) {
    var tran = res.cookie('lang').locale;
    const sess = req.session;
    var members_table;
    db.query(`select * from members`, function (error, members) {
        if(error){
            throw error;
        }
        members_table = members;
        switch(sess.langcheck){
          case 0:
            res.cookie('lang', 'en');
          break;
          case 1:
            res.cookie('lang', 'ko');
          break;
        }
        res.render('members', {'members_table': members_table, name:sess.username, tran_value:tran, cpt:sess.usercpt});
    });
});

router.get('/registration_member', function(req, res, next) {
    const sess = req.session;
    switch(sess.langcheck){
      case 0:
        res.cookie('lang', 'en');
      break;
      case 1:
        res.cookie('lang', 'ko');
      break;
    }
    res.render('registration_member', {name:sess.username, cpt:sess.usercpt});
});

router.post('/registration_member', upload.single('file_upload'), function (req, res, next) {
    var body = req.body;

    var insert_query_members = `INSERT INTO members set ?`;
    var insert_query_career_infomations = `INSERT INTO career_informations (mid, affiliation, major, degree) VALUES ?`;

    if(local_filename === undefined){
        local_filename = 'default-profile-image.png'
    }
    console.log("hello world!" + local_filename);
    var params_members = {
      mid: '0',
      name_ko: body.name_ko,
      name_en: body.name_en,
      affiliation: body.c_affiliation,
        position: body.c_position,
        interphone: body.c_interphone,
        email: body.email,
        profile_img:local_filename,
    };
    var params_career_informations = [];

    db.query(insert_query_members, params_members, function (err, rows, fields) {
        if(err){
            console.log(err);
        }else{
            console.log(body.degree_info);
            if(body.degree_info !== undefined){
                for (var i in body.degree_info) {
                    var param_degree_info = [
                        rows.insertId,
                        body.degree_info[i].affiliation,
                        body.degree_info[i].major,
                        body.degree_info[i].degree
                    ];
                    params_career_informations.push(param_degree_info);
                }
                db.query(insert_query_career_infomations, [params_career_informations], function (err, rows, fields) {
                    if(err){ //mysql 오류 발생 시
                        console.log(err);
                    }else{  //성공
                        params_career_informations = []; // 배열 초기화
                        res.redirect('/members/registration_member');
                    }
                });
            }else{
                res.redirect('/members/registration_member');
            }
        }
    });
});

router.get('/member_detail/:mid', function (req, res, next) {
    const sess = req.session;
    var select_query_members = `select * from members where mid = ?`;
    var select_query_degree = `SELECT * FROM career_informations where mid = ?`;

    db.query(select_query_members, req.params.mid, function (error, member) {
        if(error){
            throw error;
        }
        db.query(select_query_degree, req.params.mid, function (error, degree) {
            if(error){
                throw error;
            }

            console.log(degree[0]);
            //console.log(degree[1]);
            switch(sess.langcheck){
              case 0:
                res.cookie('lang', 'en');
              break;
              case 1:
                res.cookie('lang', 'ko');
              break;
            }
            res.render('member_detail', {'member_info':member, 'member_degree':degree, name:sess.username, cpt:sess.usercpt});
        });
    });
});

router.get('/delete_member/:mid', function(req, res, next) {
  console.log(req.params.mid);
  db.query(`delete from career_informations where mid=?`,req.params.mid, function (error, data) {
    if(error){
        throw error;
    }
    db.query(`delete from members where mid=?`,req.params.mid, function (error, data) {
      if(error){
          throw error;
      }
      res.redirect('/members');
    });
  });
});

module.exports = router;
