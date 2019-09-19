var socket =io()

socket.on('connect',function(){
	var name=prompt('반갑습니다!','')
	
	if(!name){
		name='익명'
	}
	socket.emit('newUser',name)})
	
	socket.on('update',function(data){
		
		console.log('${data.name}:${data.message}')
	})
	
	/*var input =document.getElementsById('test')
	input.value='접속 됨'*/
		




function send(){
	
	var message =document.getElementsById('test').value
	document.getElementsById('test').value=''
		
		socket.emit('message',{type:'message',message:message})
}

