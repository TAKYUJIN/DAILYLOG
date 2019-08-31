<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../common/mainBar.jsp"/>
<div>
<img src="#">
<form action="" method="post">
	<table align="center">
		<tr>
			<td>
				<img src="#">
				<input type="email" name="email" readonly="readonly" value="${member.userId }">
				<input type="button" value="편집">
			</td>
		</tr>
		<tr>
			<td>이름: </td>
			<td><input type="text" name="userName" readonly value="${member.userNm }"> </td>
		</tr>
		<tr>
			<td>비밀번호 : </td>
			<td><input type="password" name="userPwd"> </td>
		</tr>
		<tr>
			<td>비밀번호 확인 : </td>
			<td><input type="password" name="userPwd2"> </td>
		</tr>
		<tr>
			<td>휴대폰 번호 : </td>
			<td><input type="tel" name="phone" readonly value="${member.phone }"> </td>
		</tr>
	</table>
	</form>
	</div>
	<div align="center">
			<button colspan="3">탈퇴하기</button>
			<button type="reset">취소</button>
			<button type="submit">수정완료</button>
	</div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>