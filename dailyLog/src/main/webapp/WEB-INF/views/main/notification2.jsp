<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	var wsUri = "ws://echo.websocket.org/";
	var output;
	
	function init(){
		output = document.getElementById("output");
		testWebSocket();
	}
	
	function testWebSocket(){
		websocket = new WebSocket(wsUri);
		websocket.onopen = function(evt) {onOpen(evt);};
		websocket.onclose = function(ect) {onClose(evt);};
		websocket.onmessage = function(evt) {onMessage(evt);};
		websocket.onerror = function(evt) {onError(evt);};
	}
	
	function onOpen(evt){
		writeToScreen("연결완료");
		doSend("테스트 메세지");
	}
	
	function onClose(evt){
		writeToScreen("연결해제");
	}
	
	function onMessage(evt){
		writeToScreen('<span style="color: blue;">수신: ' + evt.data + '</span>');
	}
	function onError(evt){
		writeToScreen('<span style="color: red;">에러:</span>' + evt.data);
	}
	
	function doSend(message){
		writeToScreen("발신: " + message);
		websocket.send(message);
	}
	
	function writeToScreen(message){
		var pre = document.createElement("p");
		pre.style.wordWrap = "break-word";
		pre.innerHTML = message;
		output.appendChild(pre);
	}
	
	window.addEventListener("load", init, false);
</script>
<body>

<h2>WebSocket Test</h2>
<div id="output"></div>

</body>
</html>