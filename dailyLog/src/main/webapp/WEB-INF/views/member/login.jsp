<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.nav {
		width:780px;
		margin:0 auto;
	}
	.menu {
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
	}
	#loginBtn {
		height:50px;
	}
</style>
</head>
<body>
	
	
	<div class="loginArea" align="center">
		<c:if test="${ empty sessionScope.loginUser }">
			<jsp:include page="/WEB-INF/views/common/guest.jsp"></jsp:include>
			<form action="login.me" method="post">
				<table id="loginTable" style="text-align:center;">
					<tr>
						<td>아이디</td>
						<td><input type="text" name="userId"></td>
						<td rowspan="2">
							<a href="${ contextPath }/login.me" class="btn btn-primary get-started-btn mt-1 mb-1" href="#">Login</a>
							
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