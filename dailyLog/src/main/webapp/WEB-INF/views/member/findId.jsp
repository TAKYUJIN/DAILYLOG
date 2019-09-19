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
	width:650px;
	height:500px;
	background:lightgray;
	margin: 0 auto;
}

div.menu {
	width: 650px;
	height: 50px;
	background: white;
	text-align:center;
	color:white;

}

div.left {
	width: 50%;
	float: left;
	line-height:50px;
	background: #13334A;
}

div.right {
	width: 50%;
	float: right;
	line-height:50px;
	background: #A8B7BC ;
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
		<div class="left">아이디 찾기</div>
		<div class="right"><a href="findPwd.me">비밀번호 찾기</a></div>
	</div>
	<br>
	<br>



	<div id="1nd_con">
		<p style="font-weight: bold; font-size: medium; margin-left:30px;">등록된 핸드폰으로 계정 찾기</p>
		<br> <p style="font-weight: bold; font-size: 13px; margin-left:30px;">회원가입 당시 휴대폰 번호를 잊었거나 변경한 경우 고객센터(02-1588-1004)로 먼저 연락주세요</p> <br>
		<br>
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