// 언어설정 파일
// ko,en 지원

var i18n = require('i18n');

i18n.configure({
    locale:['ko', 'en'], // 추가지원 언어 설정 가능 ex ['언어1','언어2']
    directory: __dirname + '/../locales', // 추가 언어는 locales 폴더에 json 형식으로 지정
    defaultLocale: 'en', // 기본 언어설정 ko
    autoReload: true,
    updateFiles: false,
    queryParameter: 'lang',
    objectNotation: true,
    register: global,
     localStorageExpirationTime: 86400000,
    cookie: 'lang', // 쿠키 이름, 변경가능
});

module.exports = function (req, res, next) {
  i18n.init(req, res);
  res.locals.__ = res.__;
  var current_locale = i18n.getLocale();
  return next();
};
