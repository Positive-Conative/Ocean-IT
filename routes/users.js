var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});
router.get('/:input_id', function(req, res, next) {
  db.query(`select * from research_results where rrid = ?`, req.params.num, function (error, field) {
    if(error){
      throw error;
    }
    
    res.render('research_results_detail', {'field': field});
  });
});
module.exports = router;
