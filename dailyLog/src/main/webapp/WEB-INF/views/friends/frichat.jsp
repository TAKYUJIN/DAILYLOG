<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소켓 서버</title>
 <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<style>
body{
		font-family: 'Varela Round', sans-serif;
		margin: 10px;
		    height:100%;
		    background:#fff;
	}
#chat_box {
    width: 300px;
    height: 500px;
    border: 1px solid #bdb7b7;
}
#msg {
    width: 300px;
}
#msg_process {
    width: 90px;
}
 
</style>
</head>
<body>
<nav >
 
	<div >
		<img src="resources/images/logo.png" style="width:90px; padding-top:10px;">	
	</div><br><br>
	
    <div id="chat_box"></div>
    <input type="text" id="msg">
    <button id="msg_process" class="btn btn-default" >전송</button>
 
    <script src="http://localhost:82/socket.io/socket.io.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.js"></script>
    <script>
        $(document).ready(function() {
            var socket = io("http://localhost:82");
 
            //msg에서 키를 누를떄
            $("#msg").keydown(function(key) {
                //해당하는 키가 엔터키(13) 일떄
                if (key.keyCode == 13) {
                    //msg_process를 클릭해준다.
                    msg_process.click();
                }
            });
 
            //msg_process를 클릭할 때
            $("#msg_process").click(function() {
                //소켓에 send_msg라는 이벤트로 input에 #msg의 벨류를 담고 보내준다.
                socket.emit("send_msg", $("#msg").val());
                //#msg에 벨류값을 비워준다.
                $("#msg").val("");
            });
 
            //소켓 서버로 부터 send_msg를 통해 이벤트를 받을 경우 
            socket.on('send_msg', function(msg) {
                //div 태그를 만들어 텍스트를 msg로 지정을 한뒤 #chat_box에 추가를 시켜준다.
                $('<div></div>').text(msg).appendTo("#chat_box");
                
            });
        });
    </script>
    </nav>
</body>
</html>

 --%>
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
 </style>
<body>

<%-- <c:forEach var="l" items="${friId}" >  --%>
    <!-- 로그인한 상태일 경우와 비로그인 상태일 경우의 chat_id설정 -->
    <%--  <c:if test="${ empty sessionScope.loginUser }">
        <input type="hidden" value='${login.id }' id='chat_id' />
    </c:if> --%>
   ${loginUser.nickname}
    <c:forEach var="l" items="${m}" >
    
      <input type="hidden" value="${loginUser.nickname}" id='chat_id' />
        </c:forEach>
    <!--     채팅창 -->
    <div id="_chatbox" style="display: none">
        <fieldset>
            <div id="messageWindow"> 
            
             </div>
           
             <input id="inputMessage" type="text" onkeyup="enterkey()" />
            <input type="submit" value="보내기" onclick="send()" />
          
        </fieldset>
    </div>
   <img class="chat" src="resources/images/chat.png" />
</body>

<!-- 말풍선아이콘 클릭시 채팅창 열고 닫기 -->
<script type="text/javascript">
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
</script>
<script type="text/javascript">
    var textarea = document.getElementById("messageWindow");
    
    var webSocket = new WebSocket('ws://localhost:8001/with/broadcasting');
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
        var message = event.data.split("|");
        var sender = message[0];
        var content = message[1];
        if (content == "") {
            
        } else {
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
            } else {
                if (content.match("!")) {
                    $("#messageWindow").html($("#messageWindow").html()
                        + "<p class='chat_content'><b class='impress'>" + sender + " : " + content + "</b></p>");
                } else {
                    $("#messageWindow").html($("#messageWindow").html()
                        + "<p class='chat_content'>" + sender + " : " + content + "</p>");
                }
            }
        }
    }
    function onOpen(event) {
        $("#messageWindow").html("  <p class='chat_content'> "+"님이 채팅에 참여하였습니다.</p> ");
    }
    function onError(event) {
        alert(event.data);
    }
    function send() {
        if (inputMessage.value == "") {
        } else {
            $("#messageWindow").html($("#messageWindow").html()
                + "<p class='chat_content'>나 : " + inputMessage.value + "</p>");
        }
        webSocket.send($("#chat_id").val() + "|" + inputMessage.value);
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
 
 
 
 
 
 
 
 
 
 
 
 
 