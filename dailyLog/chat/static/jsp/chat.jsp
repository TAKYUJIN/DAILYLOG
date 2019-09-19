<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>with</title>
 <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="/socket.io/socket.io.js"></script>
<script src="/js/index.js"></script>
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
 #main {
  margin: auto;
  margin-top: 100px;
  border-radius: 20px;
  background-color: lightblue;
  text-align: center;
  width: 500px;
  height: 800px;
}

/* 채팅 영역 */
#chat {
  height: 90%;
  width: 100%;
  overflow-y: auto;
}

/* 접속 알림 */
.connect {
  width: 90%;
  margin: auto;
  background-color: aquamarine;
  text-align: center;
  margin-top: 10px;
}

/* 접속 종료 알림 */
.disconnect {
  width: 90%;
  margin: auto;
  background-color: indianred;
  text-align: center;
  margin-top: 10px;
}

/* 내가 보낸 메시지 */
.me {
  width: 90%;
  margin: auto;
  background-color: lemonchiffon;
  border-radius: 5px;
  margin-top: 10px;
}

/* 상대방이 보낸 메시지 */
.other {
  width: 90%;
  margin: auto;
  background-color: white;
  border-radius: 5px;
  margin-top: 10px;
}
</style>
</head>
<body>
 
	<div id="main" >
		<input type="text" id="test">
		<button onclick="send()">전송 </button>
	</div>
	
	
	</body></html>
 
 
 
 