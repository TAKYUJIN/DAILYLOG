<%--  
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>WITH</title><script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

<style type="text/css">
 
	#messageWindow{
		background: #d9c7c7;
	 
	}
	#inputMessage{
		width:410px;
		height:20px
	}
	#btn-submit{
		 
		background-color: #13334A;  
		width:60px;
		height:30px;
		color:#d9c7c7;
		border:none;
	}
	
	#main-container{
		width:520px;
		height:520px;
		border:1px solid #c2baba;
		margin:10px;
		display: inline-block;
		border-radius: 10px 10px 10px 10px;
	}
	#chat-container{
		vertical-align: bottom;
		border: 1px solid black;
		margin:10px;
		width:500px;
		height:500px;
		  background-image: url( "resources/images/newlogo3.png" ); 
 background-size: 515px;
		overflow-x:hidden;
		 
		border-radius: 10px 10px 10px 10px;
		
	}
	
	.chat{
		font-size: 20px;
		color:black;
		margin: 5px;
		min-height: 20px;
		padding: 5px;
		min-width: 50px;
		text-align: left;
        height:auto;
        word-break : break-all;
        background: #ffffff;
        width:auto;
        display:inline-block;
        border-radius: 10px 10px 10px 10px;
        
        
	}
	
	.notice {
		color:black;
		font-weight: bold;
		border : none;
		text-align: center;
		 		display: block;
		font-size:17px;
		border-radius :0px 0px 0px 0px;
		margin:0px;
		height:30px; 
		    opacity: 0.5;
	}

	.my-chat{
		text-align: right;
		background: #e6e6e6;
		border-radius: 10px 10px 10px 10px;
		border:1px solid #c2baba;
	}
	
	#bottom-container{
		margin:20px;
	}
	
	.chat-info{
		color:#556677;
		font-size: 10px;
		text-align: right;
		padding: 5px;
		padding-top: 0px;

	}
	
	.chat-box{
		text-align:left;
		 
	}
	.my-chat-box{
		text-align: right;
		 
	}
	
	#frilist{
	float:left;
	border :1px solid #b8bdc2;
	margin:10px;
	width:150px;
	height:150px;
	 border-radius: 10px 10px 10px 10px;
	}
#daily a{
 width:100px;
   
  padding-left:10px; 
  color:black;
  text-decoration:none;
 }
 #daily  {
 width:200px;
  
  padding-left:10px; 
  color:black;
  text-decoration:none;
 }
  #daily a:hover{
 width:200px;
  
    padding-left:10px; 
  
  color:black;
  text-decoration:none;
 }
</style>
</head>
<body>	<div id="daily">
<a href="List.mb"> <h2>Daily Log</h2>  </a></div>
	<div id="main-container" style="float:left; ">
		<div id="chat-container"  >
			
	 <!-- <img class="max-small" src="resources/images/newlogo3.png" style="border-radius: 60%; margin-left:30px;z-index:1px; ">
	 -->	</div>
		<div id="bottom-container">
			<input id="inputMessage" type="text">
			<input id="btn-submit" type="submit" style="background:#7c6585; color:#fff"value="전송" >
		</div>
	</div>
	
	<div id="frilist">
	<h4>친구 리스트</h4>
 <%if(request.getParameter("list") != null){%>
   <%!
    String[] list;
   %>
   <%
   list = request.getParameterValues("list");
    for(int i = 0; i < list.length; i++){
   %>
    <tr>
   
       <%= list[i]%> 
      
       <br>
    </tr>
   <%}%>
  <%}%>
</div>
	
	
	
</body>
<script type="text/javascript">
var nickname='${loginUser.userId}';
console.log(nickname);
	var textarea = document.getElementById("messageWindow");
	 webSocket = new WebSocket("ws://192.168.30.16:8001"+"<%=request.getContextPath()%>/broadcasting?nickname"+"="+nickname); 
				
	console.log(webSocket);
	// 로컬에서 테스트할 때 사용하는 URL입니다.
// 	var webSocket = new WebSocket('ws://localhost/DevEricServers/webChatServer');
	var inputMessage = document.getElementById('inputMessage');
	
	webSocket.onerror = function(e){
		onError(e);
	};
	webSocket.onopen = function(e){
		onOpen(e);
	};
	webSocket.onmessage = function(e){
		onMessage(e);
	};
	
	
	function onMessage(e){
		var chatMsg = event.data;
		var chatMsg1 = event.data;
		var date = new Date();
		var dateInfo = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
		
		 /*  if(chatMsg1.substring(0,8) == 'sendlist'){
			 // $('#frilist').append($chat);
				 if (chatMsg1 =='sendlist : heejung9655@gmail.com'){
					
					 $('#frilist').append(chatMsg1);
				   }else{
					   
					   $('#frilist').append(chatMsg1);
				   }  
				 
			 console.log(chatMsg1);
			}  */
		  
		  
		if(chatMsg.substring(0,8) == 'DAILYLOG' ){
			var $chat = $("<div class='chat notice'>" + chatMsg + "</div>");
			$('#chat-container').append($chat);
			console.log(chatMsg);
			
		}  else if(chatMsg.substring(0,8) == 'sendlist'){
			 console.log('');
		}   else{
			
			var $chat = $("<div class='chat-box'><div class='chat'>" + chatMsg + "</div><div class='chat-info chat-box'>"+ dateInfo +"</div></div>");
			$('#chat-container').append($chat);
			}
	 
		
		$('#chat-container').scrollTop($('#chat-container')[0].scrollHeight+20);
	}
	
	function onOpen(e){
		 
	}
	
	function onError(e){
		alert(e.data);
	}
	
	function send(){
		var chatMsg = inputMessage.value;
		if(chatMsg == ''){
			return;
		}
		var date = new Date();
		var dateInfo = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
		var $chat = $("<div class='my-chat-box'><div class='chat my-chat'>" + chatMsg + "</div><div class='chat-info'>"+ dateInfo +"</div></div>");
		$('#chat-container').append($chat);
		webSocket.send(chatMsg);
		inputMessage.value = "";
		$('#chat-container').scrollTop($('#chat-container')[0].scrollHeight+20);
	}
	
</script>

<script type="text/javascript">
	$(function(){
		$('#inputMessage').keydown(function(key){
			if(key.keyCode == 13){
				$('#inputMessage').focus();
				send();
			}
		});
		$('#btn-submit').click(function(){
			send();
		});
		
	})
</script>
 
</html>
 --%>
 
 
  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>WITH</title><script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

<style type="text/css">
 
	#messageWindow{
		background: #d9c7c7;
	 
	}
	#inputMessage{
		width:410px;
		height:20px
	}
	#btn-submit{
		 
		background-color: #13334A;  
		width:60px;
		height:30px;
		color:#d9c7c7;
		border:none;
	}
	
	#main-container{
		width:520px;
		height:520px;
		border:1px solid #c2baba;
		margin:10px;
		display: inline-block;
		border-radius: 10px 10px 10px 10px;
	}
	#chat-container{
		vertical-align: bottom;
		border: 1px solid black;
		margin:10px;
		width:500px;
		height:500px;
		 /*  background-image: url( "resources/images/newlogo3.png" ); 
 background-size: 515px; */
		overflow-x:hidden;
		 
		border-radius: 10px 10px 10px 10px;
		
	}
	
	.chat{
		font-size: 20px;
		color:black;
		margin: 5px;
		min-height: 20px;
		padding: 5px;
		min-width: 50px;
		text-align: left;
        height:auto;
        word-break : break-all;
        background: #ffffff;
        width:auto;
        display:inline-block;
        border-radius: 10px 10px 10px 10px;
        
        
	}
	
	.notice {
		color:black;
		font-weight: bold;
		border : none;
		text-align: center;
		 		display: block;
		font-size:17px;
		border-radius :0px 0px 0px 0px;
		margin:0px;
		height:30px; 
		    opacity: 0.5;
	}

	.my-chat{
		text-align: right;
		background: #e6e6e6;
		border-radius: 10px 10px 10px 10px;
		border:1px solid #c2baba;
	}
	
	#bottom-container{
		margin:20px;
	}
	
	.chat-info{
		color:#556677;
		font-size: 10px;
		text-align: right;
		padding: 5px;
		padding-top: 0px;

	}
	
	.chat-box{
		text-align:left;
		 
	}
	.my-chat-box{
		text-align: right;
		 
	}
	
	#frilist{
	float:left;
	border :1px solid #b8bdc2;
	margin:10px;
	width:150px;
	height:150px;
	 border-radius: 10px 10px 10px 10px;
	}
#daily a{
 width:100px;
   
  padding-left:10px; 
  color:black;
  text-decoration:none;
 }
 #daily  {
 width:200px;
  
  padding-left:10px; 
  color:black;
  text-decoration:none;
 }
  #daily a:hover{
 width:200px;
  
    padding-left:10px; 
  
  color:black;
  text-decoration:none;
 }
 
.userImg {
		width:40px; 
		height:40px;
		/* border:1px dashed gray; */
		border-radius: 50%;
		/* vertical-align: middle; */
	} 
 
</style>
</head>
<body>	<div id="daily">
<a href="List.mb"> <h2>Daily Log</h2>  </a></div>
	<!-- <div id="main-container" style="float:left; ">
		<div id="chat-container"  >
			
	 <img class="max-small" src="resources/images/newlogo3.png" style="border-radius: 60%; margin-left:30px;z-index:1px; ">
		</div>
		<div id="bottom-container">
			<input id="inputMessage" type="text">
			<input id="btn-submit" type="submit" style="background:#7c6585; color:#fff"value="전송" >
		</div>
	</div>
	 -->
	 
	 <div id="chatForm" style=" color:white; width:430px; height:350px; text-align:center; background-color:#13334A; border-radius:10%; margin-bottom:10%; opacity:0.6; float:left;  border :1px solid black;">
			<div class="scrollChat" style="overflow:auto;  padding:10px; width:425px; height:260px;">
				<div id="messageWindow" style="margin:5%; text-align:right !important;">
				</div> 
			</div>
			<!-- 채팅 -->
			<div style="margin-top:4%; opacity:1; ">
           		<div style="width:50px; display:inline-block;">
       			    <div>
						<c:if test="${userImg != null}">
							<img class="userImg" src="resources/uploadFiles/${userImg}" style="margin-bottom:30px;">
						</c:if>
						<c:if test="${userImg == null}">
							<img class="userImg" src="resources/images/newlogo3.png" style="margin-bottom:30px;">
						</c:if>	
					</div>
           		</div>
         		<div style="display:inline-block; margin-left:1%; margin-right:1%;">
     			    <div class="input-group">
						<input type="text" id="inputMessage" name="chatInput" value=""  autofocus placeholder="실시간 채팅에 참여하세요" style="background:none !important; width:250px; color:white;" onkeyup="enterkey()">
					</div>
           		</div>
           		<div style="display:inline-block;">
           			<input type="button" id="insertChat" class="btn" value="작성" onclick="send();" style="width:60px; margin-bottom:30px; background:#A8B7BC;">
           			
					<!-- <a><i class="material-icons">&#xE876;</i></a> -->
           		</div>
			</div>
		</div>
	 
	 
	<div id="frilist">
	<h4>친구 리스트</h4>
 <%if(request.getParameter("list") != null){%>
   <%!
    String[] list;
   %>
   <%
   list = request.getParameterValues("list");
    for(int i = 0; i < list.length; i++){
   %>
    <tr>
   
       <%= list[i]%> 
      
       <br>
    </tr>
   <%}%>
  <%}%>
</div>
	
	
	
</body>
<script type="text/javascript">
  var nickname='${loginUser.nickname}';
console.log(nickname);
	var textarea = document.getElementById("messageWindow");
	 webSocket = new WebSocket("ws://192.168.30.142:8001"+"<%=request.getContextPath()%>/broadcasting?nickname"+"="+nickname); 
				
	console.log(webSocket);
	// 로컬에서 테스트할 때 사용하는 URL입니다.
// 	var webSocket = new WebSocket('ws://localhost/DevEricServers/webChatServer');
	var inputMessage = document.getElementById('inputMessage');
	
	webSocket.onerror = function(e){
		onError(e);
	};
	webSocket.onopen = function(e){
		onOpen(e);
	};
	webSocket.onmessage = function(e){
		onMessage(e);
	};
	
	
	function onMessage(e){
		var chatMsg = event.data;
		var chatMsg1 = event.data;
		var date = new Date();
		var dateInfo = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
		
		 /*  if(chatMsg1.substring(0,8) == 'sendlist'){
			 // $('#frilist').append($chat);
				 if (chatMsg1 =='sendlist : heejung9655@gmail.com'){
					
					 $('#frilist').append(chatMsg1);
				   }else{
					   
					   $('#frilist').append(chatMsg1);
				   }  
				 
			 console.log(chatMsg1);
			}  */
		  
		  
		if(chatMsg.substring(0,8) == 'DAILYLOG' ){
			var $chat = $("<div class='chat notice'>" + chatMsg + "</div>");
			$('#chat-container').append($chat);
			console.log(chatMsg);
			
		}  else if(chatMsg.substring(0,8) == 'sendlist'){
			 console.log('');
		}   else{
			
			var $chat = $("<div class='chat-box'><div class='chat'>" + chatMsg + "</div><div class='chat-info chat-box'>"+ dateInfo +"</div></div>");
			$('#chat-container').append($chat);
			}
	 
		
		$('#chat-container').scrollTop($('#chat-container')[0].scrollHeight+20);
	}
	
	function onOpen(e){
		 
	}
	
	function onError(e){
		alert(e.data);
	}
	
	function send(){
		var chatMsg = inputMessage.value;
		if(chatMsg == ''){
			return;
		}
		var date = new Date();
		var dateInfo = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
		var $chat = $("<div class='my-chat-box'><div class='chat my-chat'>" + chatMsg + "</div><div class='chat-info'>"+ dateInfo +"</div></div>");
		$('#chat-container').append($chat);
		webSocket.send(chatMsg);
		inputMessage.value = "";
		$('#chat-container').scrollTop($('#chat-container')[0].scrollHeight+20);
	}
	
</script>

<script type="text/javascript">
	$(function(){
		$('#inputMessage').keydown(function(key){
			if(key.keyCode == 13){
				$('#inputMessage').focus();
				send();
			}
		});
		$('#btn-submit').click(function(){
			send();
		});
		
	})
</script>  
 
</html>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 