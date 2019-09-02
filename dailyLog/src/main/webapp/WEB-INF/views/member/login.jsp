<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.form-horizontal1 {
		width:1024px; /* 전체 폼 사이즈임 */
		margin-top:50px;
		margin-bottom:50px;
	}
	
	
	/* .menu {
		display:inline-block;
		background:yellowgreen;
		text-align:center;
		line-height:50px;
		width:150px;
		height:50px;
		margin:0 auto;
		border-radius:20px;
	}
	.menu:hover {
		background:orangered;
		color:white;
		cursor:pointer;
	} */
	#loginBtn {
		height:50px;
	}
	
</style>
</head>
<body>
	
	
	<div class="loginArea" align="center">
		<c:if test="${ empty sessionScope.loginUser }">
			<jsp:include page="/WEB-INF/views/common/guest.jsp"></jsp:include>
			<form action="login.me" method="post" class="form-horizontal1">
				<table id="loginTable" style="text-align:center;">
					<tr>
						<td>아이디</td>
						<td><input type="text" name="userId"></td>
						<td rowspan="2">
							<a href="login.me" class="btn btn-primary get-started-btn" href="#">Login</a>
							
					</tr>
					<tr>
						<td>패스워드</td>
						<td><input type="password" name="userPwd"></td>
					</tr>
					<tr>
						<td colspan="3">
							<a href="memberJoinView.me">회원가입</a>
							<a href="#">아이디/비밀번호 찾기</a>
						</td>
					</tr>
				</table>
			</form>
		</c:if>
		<c:if test="${ !empty sessionScope.loginUser }">
			
		</c:if>
	</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
	
</body>
</html>