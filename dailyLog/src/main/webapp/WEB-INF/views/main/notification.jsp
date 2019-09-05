<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

	.item {
		width:250px;
		height:300px;
		border:1px solid black;
		padding-top:20px;
		display:table-cell;
	}
	#photo {
		width:200px;
		height:150px;
		background:yellow;
	}
	table {
		text-align:right;
	}
	#history {
		display:table-cell;
		border:1px solid black;
		width:500px;
		max-height:300px;
		vertical-align:top;
	}
</style>
</head>
<body onload="getConnection();">
	<br><br>
	<h1 align="center">${m.userNm}님 환영합니다</h1>
	<br><br>
	<h5 align="center">당신만을 위한 시크릿 경매!!</h5>
	<div id="wrap" align="center">
		<div class="item">
			<div id="photo"></div>
			<div id="content">
				<br>
				<table>
					<tr>
						<td><label id="productText">상품명 : </label></td>
						<td width="150px"><label id="productName"></label></td>
					</tr>
					<tr>
						<td><label id="startText">시작가 : </label></td>
						<td><label id="startPrice"></label></td>
					</tr>
					<tr>
						<td><label id="currentText">현재가 : </label></td>
						<td><label id="currentPrice"></label></td>
					</tr>
					<tr>
						<td><label id="remainText">남은시간 : </label></td>
						<td><label id="remainTime"></label></td>
					</tr>
				</table>
			</div>
		</div>
		<div id="history">
			
		</div>
	</div>
	<br>
	<div id="inputArea" align="center">
		<label>입찰금액 : </label>
		<input type="text" name="tryMoney" id="tryMoney">
		<button id="tryBtn" class="btn btn-danger" onclick="send2()">입찰하기</button>
	</div>
	
	<script>
		$(function(){
			$("#tryMoney").select();
			
			
		})
	</script>
	<script>
		$(function(){
			getConnection2();
			
		})
			function getConnection(){
				ws = new WebSocket("ws://localhost:8001" + '<%=request.getContextPath()%>/serverStart');
				//서버 시작할 때 동작
				ws.onopen = function(event){

				}
				//서버로부터 메세지를 전달 받을 때 동작하는 메소드
				ws.onmessage = function(event){
					onMessage(event);
				}
				
				//서버에서 에러가 발생할 경우 동작할 메소드
				ws.onerror = function(event){
					onError(event);
				}
				
				//서버와의 연결이 종료될 경우 동작하는 메소드
				ws.onclose = function(event){
					onClose(event);
				}
			
			}
			
			function send(msg){
				
				ws.send(msg);
				
				
			}
			
			function onMessage(event){
				var serverMessage = event.data.split(":");
				
				var productName = serverMessage[0];
				var startPrice = serverMessage[1];
				var currentPrice = serverMessage[1];
				var remainHour = serverMessage[2];
				var remainMin = serverMessage[3];
				var remainSec = serverMessage[4];
				
				$productName = $("#productName");
				$startPrice = $("#startPrice");
				$currentPrice = $("#currentPrice");
				$remainTime = $("#remainTime");
							
				$productName.html(productName);
				$startPrice.html(startPrice);
				$currentPrice.html(currentPrice);
				$remainTime.html(remainHour + " : " + remainMin + " : " + remainSec);
				
				
			}
			
			function onError(event){
				alert(event.data);
			}
			
			function onClose(event){
				alert(event);
			}
			
			function getConnection2(){
				ws2 = new WebSocket("ws://localhost:8001" + "<%=request.getContextPath()%>/auctionStart");
				
				ws2.onopen2 = function(event){

				}
				//서버로부터 메세지를 전달 받을 때 동작하는 메소드
				ws2.onmessage = function(event){
					onMessage2(event);
				}
				
				//서버에서 에러가 발생할 경우 동작할 메소드
				ws.onerror = function(event){
					onError2(event);
				}
				
				//서버와의 연결이 종료될 경우 동작하는 메소드
				ws2.onclose = function(event){
					onClose2(event);
				}
			}
			
			function send2(msg){
				var tryMoney = $("#tryMoney").val();
				var userId = "${m.userNm}";
				var sendMsg = userId + ":" + tryMoney;
				ws2.send(sendMsg);
			}
			
			function onMessage2(event){
				var msg = event.data.split(":");
				var user = msg[0];
				var price = msg[1];
				$("#currentPrice").html(price);
				$("#history").append("<span>" + user + "님이 " + price + " 원으로 입찰하셨습니다</span><br>");
			}
			
			function onError2(event){
				alert(event.data);
			}
			
			function onClose2(event){
				alert(event);
			}
		</script>
</body>
</html>
























