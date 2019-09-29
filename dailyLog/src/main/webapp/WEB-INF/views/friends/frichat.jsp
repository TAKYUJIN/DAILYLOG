<%-- 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style>
 
 #messageWindow{
 width:150px;
 height:500px;
 
 }
 
 .logo{
/*  vertical-align: middle; */
/* width:300px;
height:300px;
background-image:url('resources/images/newlogo.png');
 */
 width:400px;
 border : 0.5px solid #9f9aa1;
 background:#d1d1d1;
 margin-bottom:10px;
 }
 </style>
<body>

<c:forEach var="l" items="${friId}" > 
    <!-- 로그인한 상태일 경우와 비로그인 상태일 경우의 chat_id설정 -->
     <c:if test="${ empty sessionScope.loginUser }">
        <input type="hidden" value='${login.id }' id='chat_id' />
    </c:if>
   
    <c:forEach var="l" items="${m}" >
  
      <input type="hidden" value="${loginUser.nickname}" id='chat_id' />
      
        </c:forEach>
    <!--     채팅창 -->
            
     <!--        <img src="resources/images/newlogo.png"  style=" width:100px;height:50px;">
    -->
    <div id="_chatbox" class="logo" >
   <%=request.getAttribute("${list}") %>
     <c:forEach var="MailVo" items="${list}">
     </c:forEach>
        
            <div id="messageWindow" style="width:600px; "> 
             </div>
           
             <!-- <input id="inputMessage" type="text" onkeyup="enterkey()" />
            <input type="submit" value="보내기" onclick="send()" />
           -->
       
    </div>
    
    <tr height="100px;">
    <td>
   		<input type="text" id="inputMessage" size="50"  value="" style="width:400px; height: 100%; font-weight: bold;" 
   		class="ui message blue" name="chatInput" placeholder="내용 입력" onkeyup="enterkey()">
   	</td>
   	
   	<!-- 보내기 버튼 -->
   	<td>
   		<input type="submit" value="보내기" onclick="send()" >
   		<!-- 
   		<id="buttonMessage" style="width:100px; height: 100%" class="ui primary button" > -->
   	</td>
   	</tr>
 </body>

<!-- 말풍선아이콘 클릭시 채팅창 열고 닫기 -->
<!-- <script type="text/javascript">
    $(".chat").on({
        "click" : function() {
            if ($(this).attr("src") == "resources/images/chat.png") {
                $(".chat").attr("src", "resources/images/chat.png");
                $("#_chatbox").css("display", "block");
            } else if ($(this).attr("src") == "resources/images/chat.png") {
                $(".chat").attr("src", "resources/images/chat.png");
                $("#_chatbox").css("display", "none");
            }
        }
    });
</script> -->
<script type="text/javascript">
var socket;
var login_ids={};
    var textarea = document.getElementById("messageWindow");
    var nickname="${loginUser.nickname}";
    var webSocket = new WebSocket('ws://192.168.0.7:8001/with/broadcasting');
    /* socket.emit('login','nickname'); */
    var inputMessage = document.getElementById('inputMessage');
    webSocket.onerror = function(event) {
        onError(event)
    };
    webSocket.onopen = function(event) {
        onOpen(event)
    };
    webSocket.onmessage = function(event) {
        onMessage(event)
    };
   function onMessage(event) {
	   var chat_id ="${loginUser.nickname}";
/* 	   $("#messageWindow").html("  <p class='chat_content'>"+chat_id  +"님이 채팅에 참여하였습니다.</p> ");  
 */	   console.log("event"+event);
        var message = event.data.split("|");
        var sender = message[0];
        var content = message[1];
        alert("11");
       
        if (content == "") {
        	 
        } /* else {
            if (content.match("/")) {
                if (content.match(("/" + $("#chat_id").val()))) {
                    var temp = content.replace("/" + $("#chat_id").val(), "(귓속말) :").split(":");
                   
                    if (temp[1].trim() == "") {
                    } else {
                        $("#messageWindow").html($("#messageWindow").html() + "<p class='whisper'>"
                            + sender + content.replace("/" + $("#chat_id").val(), "(귓속말) :") + "</p>");
                    }
                } else {
                }
            }  */else {
                if (content.match("/")) {
                	
                    $("#messageWindow").html($("#messageWindow").html()
                        + "<p class='chat_content'><b class='impress'>" + sender + " : " + content + "</b></p>");
                } else {
                    $("#messageWindow").html($("#messageWindow").html()
                        + "<p class='chat_content'>" + sender + " : " + content + "</p>");
                }
            }
       
    } 
    function onOpen(event) {
    	var chat_id ="${loginUser.nickname}";
    	console.log(chat_id);
    	console.log(event+"11");
      $("#messageWindow").append("  <p class='chat_content'>"+chat_id  +"님이 채팅에 참여하였습니다.</p> ");  
   
        
       /*  if (inputMessage.value == "") {
        } else {
            $("#messageWindow").html($("#messageWindow").html()
            		("  <p class='chat_content'>" +chat_id+ "님이 채팅에 참여하였습니다."+"</p> "));
            
        } */
        webSocket.send(chat_id  +"님이 채팅에 참여하였습니다." + inputMessage.value);
      /*   inputMessage.value = ""; */
        
        
        
    }
  /*   function onError(event) {
        alert(event.data);
    } */
    function send() {
    	var chat_id ="${loginUser.nickname}";
    	  
        if (inputMessage.value == "") {
        } else {
            $("#messageWindow").html($("#messageWindow").html()
                + "<p class='chat_content'>  "+"<b>"+chat_id+"<b>" + inputMessage.value + "</p>");
            
        }
        
        
        webSocket.send(chat_id + "|" + inputMessage.value);
        inputMessage.value = "";
    }
    //     엔터키를 통해 send함
    function enterkey() {
        if (window.event.keyCode == 13) {
            send();
        }
    }
    //     채팅이 많아져 스크롤바가 넘어가더라도 자동적으로 스크롤바가 내려가게함
    window.setInterval(function() {
        var elem = document.getElementById('messageWindow');
        elem.scrollTop = elem.scrollHeight;
    }, 0);
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
	 webSocket = new WebSocket("ws://192.168.30.130:8001"+"<%=request.getContextPath()%>/broadcasting?nickname"+"="+nickname); 
				
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 