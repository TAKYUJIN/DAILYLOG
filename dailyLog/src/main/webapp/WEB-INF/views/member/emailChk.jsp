<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.form-horizontal1 {
	width: 1024px; /* 전체 폼 사이즈임 */ !
	important margin-top: 50px;
	margin-bottom: 50px;
}

#loginBtn {
	height: 50px;
}

.form-control {
	font-size: 16px;
	transition: all 0.4s;
	box-shadow: none;
}

.form-control:focus {
	border-color: #192466;
}

.form-control, .btn {
	border-radius: 50px;
	outline: none !important;
}

.signin-form {
	width: 400px;
	margin: 0 auto;
	padding: 30px 0;
}

.signin-form form {
	margin-bottom: 20px;
	background: #fff;
	padding: 40px;
}

.signin-form a {
	color: #192466;
}

.signin-form h2 {
	text-align: center;
	font-size: 34px;
	margin: 10px 0 15px;
}

.signin-form .hint-text {
	color: #999;
	text-align: center;
	margin-bottom: 20px;
}

.signin-form .formlogin-group {
	margin-bottom: 20px;
}

.signin-form .btn {
	font-size: 18px;
	line-height: 26px;
	font-weight: bold;
	text-align: center;
}

.signin-form .small {
	font-size: 13px;
}

.signup-btn {
	text-align: center;
	border-color: #192466;
	transition: all 0.4s;
}

.signup-btn:hover {
	background: #FBC52C;
	opacity: 0.8;
}

.or-seperator {
	margin: 50px 0 15px;
	text-align: center;
	border-top: 1px solid #e0e0e0;
}

.or-seperator b {
	padding: 0 10px;
	width: 40px;
	height: 40px;
	font-size: 16px;
	text-align: center;
	line-height: 40px;
	background: #fff;
	display: inline-block;
	border: 1px solid #e0e0e0;
	border-radius: 50%;
	position: relative;
	top: -22px;
	z-index: 1;
}

.social-btn .btn {
	color: #fff;
	margin: 10px 0 0 30px;
	font-size: 15px;
	width: 55px;
	height: 55px;
	line-height: 38px;
	border-radius: 50%;
	font-weight: normal;
	text-align: center;
	border: none;
	transition: all 0.4s;
}

.social-btn .btn:first-child {
	margin-left: 0;
}

.social-btn .btn-primary {
	background: #33CC00;
	!
	important
}

.social-btn .btn-info {
	background: #FFDD59;
	!
	important
}

.social-btn .btn-danger {
	background: #df4930;
	!
	important
}

.social-btn .btn-primary:hover {
	opacity: 0.1;
}

.social-btn .btn-info:hover {
	opacity: 0.1;
}

.social-btn .btn-danger:hover {
	opacity: 0.1;
}

.social-btn .btn i {
	font-size: 20px;
}
</style>
</head>
<body>
	
		<jsp:include page="/WEB-INF/views/common/guest.jsp"></jsp:include>
	<div class="signin-form">
		<h1> 이메일 인증 완료 후 로그인이 가능합니다.  </h1>
		
		
		<br>
		<br>
		<br>
		<br>
		<br>

	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>