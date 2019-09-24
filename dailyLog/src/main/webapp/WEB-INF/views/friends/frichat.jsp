 
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

<%-- <c:forEach var="l" items="${friId}" >  --%>
    <!-- 로그인한 상태일 경우와 비로그인 상태일 경우의 chat_id설정 -->
    <%--  <c:if test="${ empty sessionScope.loginUser }">
        <input type="hidden" value='${login.id }' id='chat_id' />
    </c:if> --%>
   
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
 
 
 
 
 
 
 
 
 
 
 
 
 