var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var multer = require('multer'); //post response 관련 모듈
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var introductionRouter = require('./routes/introduction');
var membersRouter = require('./routes/members');
var researchMainRouter = require('./routes/research_main');
var researchFieldsRouter = require('./routes/research_fields');
var researchResultsRouter = require('./routes/research_results');
var questionBoardRouter = require('./routes/question_board');
var academicActivitiesRouter = require('./routes/academic_activities');
var galleryRouter = require('./routes/gallery');
var login = require('./routes/login');
var body_parser = require('body-parser');
var session = require('express-session');
//var newRouter = require('./routes/routes 폴더 내부의 js파일');
var app = express();

var i18n = require('./config/i18n');

//로그인 세션
app.use(session({
  secret: 'test@~',
  resave: false,
  saveUninitialized: true,
  cookie: {
    maxAge: 24000 * 60 * 60 // 쿠키 유효기간 24시간
  }
}));
// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({extended: true}));
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'views')));
app.use(i18n); //국가 설정
//registration_member
app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/introduction', introductionRouter);
app.use('/members', membersRouter);
app.use('/research_main', researchMainRouter);
app.use('/research_fields', researchFieldsRouter);
app.use('/research_results', researchResultsRouter);
app.use('/question_board', questionBoardRouter);
app.use('/academic_activities', academicActivitiesRouter);
app.use('/gallery', galleryRouter);
app.use('/login', login);
app.use(express.json(), body_parser);

app.use('/static', express.static(__dirname + '/view/images/members'));
//app.use('/서버 기본 주소 다음으로 나오는 url을 입력한다.', newRouter);
// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
