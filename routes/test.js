var http = require('http');
var fs = require('fs');
var socketio = require('socket.io');
var server = http.createServer(function(req, res){
fs.readFile('index.html', function(err, data){
res.writeHead(200, {'Content-Type':'text/html'});
res.end(data);
});
}).listen(8080, function(){
console.log('Running ~~~~~~~~~~~~');
});
var io = socketio.listen(server);
io.sockets.on('connection', function(socket){
  socket.on('sMsg', function(data){
  io.sockets.emit('rMsg', data);
  });
  });
