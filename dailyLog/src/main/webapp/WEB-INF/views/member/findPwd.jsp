<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	background: #A8B7BC;
}

div.right {
	width: 50%;
	float: right;
	line-height: 50px;
	background: #13334A;
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
			<div class="form-group">
				<input type="text" class="form-control" name="userNm" id="userNm"
					placeholder="Name" required="required" style="width: 292px;">
			</div>

			<div class="form-group">
				<div class="row">
					<div class="col-xs-9">
						<input type="email" class="form-control" name="email" id="email"
							placeholder="Email" required="required">
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
					<button type="button" id="sendPwd"
						class="btn btn-join btn-lg btn-block" 
						style="height: 40px; font-size: medium; background: #13334A; color: white;">번호
						발송</button>
				</div>
				<div class="col-xs-4">
					<button class="btn btn-join btn-lg btn-block"
						style="height: 40px; font-size: medium;">취소</button>
				</div>

			</div>
		</div>

	</div>
	<script>	
	
	// 아이디 값 받고 출력하는 ajax
	
	$(function() {
		$("#sendPwd").click(function(){
		
			$.ajax({
			type:"POST",
			url:sendPwd.me,
			data:{
				userNm : $("#userNm").val(), 
				userId : $("#email").val()
			},
			
			success:function(result){
				alert(result);
			},
		})
	});
	
	})

	</script>


	<br>
	<br>
	<br>
	<br>
	<br>


	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>