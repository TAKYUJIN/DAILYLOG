/* const express =require('express')

const socket =require('socket.io')
const http=require('http')

const fs = require('fs')
const app=express()

const server =http.createServer(app)

const io =socket(server)

app.use('/jsp', express.static('./static/jsp'))
app.use('/js', express.static('./static/js'))

 Get 방식으로 / 경로에 접속하면 실행 됨 
app.get('/', function(request, response) {
  fs.readFile('./static/chat.jsp', function(err, data) {
    if(err) {
      response.send('에러')
    } else {
      response.writeHead(200, {'Content-Type':'text/html'})
      response.write(data)
      response.end()
    }
  })
})



io.sockets.on('connection',function(){
	socket.on('uewUser',function(name){
		console.log(name+'님이 접속 하였습니다.')
		
		소켓에 이름 저장
		socket.name=name
		  io.sockets.emit('update',{type:'connect',name:'SERVER',message:name+'님이 접속하였습니다.'})
	})
	전송한 메세지 받기
	
	socket.on('message',function(data){
		
		data.name=socket.name
		console.log(data)
		socket.broadcast.emit('update',data);
	})
	
	socket.on('disconnect',function(){
		console.log(socket.name+'님이 나갔습니다.')
		
		socekt.broadcast.emit('update',{type:'disconnect',name:'SERVER',message:socket.name+'님이 나갔습니다.'})
	})
	
	
})


server.listen(82,function(){

	console.log('서버 실행 즁')
}) 


*/

var express =require('express')
.routes=require('./routes');
var app =module.exports =express.cresteServer();

app.configure(function(){
	app.set('views',__dirname+'/views');
	app.set('view engine','jade');
	app.use(express.bodyParser());
	app.use(express.methodOverride());
	app.use(app.router);
	app.use(express.static(__dirname+'/public'));
});

app.configure('development',function(){
	app.use(express.errorHandler({dumpExceptions:true, showStack:true}));
});

app.configure('production',function(){
	app.use(express.errorHandler());
});

app.get('/',routes.index);
app.listen(3000);
console.log("Express server listening on port %d in %s mode",app.address().port,
	app.settings.env	)


















