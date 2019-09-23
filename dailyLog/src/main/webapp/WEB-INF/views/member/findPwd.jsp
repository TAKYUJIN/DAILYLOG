<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH </title>
<style>
.form-horizontal1 {
	width: 1600px; /* 전체 폼 사이즈임 */ !
	important margin-top: 50px;
	margin-bottom: 50px;
}

.findId {
	width: 650px;
	height: 500px;
	/*background: lightgray;*/
	margin: 0 auto;
}

div.menu {
	width: 650px;
	height: 50px;
	background: white;
	text-align: center;
	color: white;
}

div.left {
	width: 50%;
	float: left;
	line-height: 50px;
	background: lightgray;
}

div.right {
	width: 50%;
	float: right;
	line-height: 50px;
	background: #DDD0DA;
}

A:link {
	text-decoration: none;
	color: white;
}

A:visited {
	text-decoration: none;
	color: white;
}

A:active {
	text-decoration: none;
	color: white;
}

A:hover {
	text-decoration: none;
	color: white;
}
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
			function login(){
				location.href="loginbutton.me";
			}
			function sendPwd(){
				var userNm = $("#userNm").val();
				var email = $('#email').val();
				
				$.ajax({
					url:"/sendPwd.me",
					type:"post",
					data:{userNm:userNm, email:email},
					success:function(data){
						location.href="loginbutton.me";				
					},
					error:function(){
						console.log("실패!");
					}
				});
				alert("임시비밀번호가 발송되었습니다.\n확인 후 로그인 해주세요");
			}
		</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/guest.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<br>
	<div class="findId">
		<div class="menu">
			<div class="left">
				<a href="findId.me">아이디 찾기 
			</div>
			<div class="right">
				<a href="findPwd.me">비밀번호 찾기</a>
			</div>
		</div>
		<br> <br>


		
		<div id="1nd_con">
			<p style="font-weight: bold; font-size: medium; margin-left: 30px;">이메일로
				비밀번호 찾기</p>
			<br> <br> <br>
		</div>

		<div id="inputdiv" style="width: 400px; margin: 0 auto;">
			<form action= "sendPwd.me" method="POST">
			<div class="form-group">
				<input type="text" class="form-control" name="userNm" id="userNm"
					placeholder="Name" required="required" style="width: 292px; color:black;">
			</div>

			<div class="form-group">
				<div class="row">
					<div class="col-xs-9">
						<input type="email" class="form-control" name="email" id="email"
							placeholder="Email" required="required" style="color:black;">
					</div>
					<div class="col-xs-3">
						<button id="ckNn"
							style="height: 35px; border-radius: 5px; background: #13334A; color: white; border: solid 1px;"
							name="sendPwdE" onclick="sendPwdE();" hidden>번호발송</button>
					</div>
				</div>
			</div>


			<br> <br>
			<div class="form-group">
				<div class="col-xs-4">
					<button id="sendPwd"
						class="btn btn-join btn-lg btn-block" 
						style="height: 40px; font-size: medium; background: #13334A; color: white;" onclick="sendPwd();">번호
						발송</button>
				</div>
				<div class="col-xs-4">
					<button class="btn btn-join btn-lg btn-block"
						style="height: 40px; font-size: medium;" onclick="login();">취소</button>
				</div>

			</div>
			</form>
		</div>

	</div>
	
	

	<br>
	<br>
	<br>
	<br>
	<br>


	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>