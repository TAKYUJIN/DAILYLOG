<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/adminBar.jsp"></jsp:include>
	<form id="detail" action="selectDetail" method="post">
	<!-- <form id="mypage" action="update_myPage.me" method="post"
			class="form-horizontal"> -->

		<div>
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" id="userid" value=""></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" id="userNm" value=""></td>
				</tr>
				<tr>
					<th>휴대폰</th>
					<td><input type="phone" id="phone" value=""></td>
				</tr>
				<tr>
					<th>채널명</th>
					<td><input type="text" id="chNm" value=""></td>
				</tr>
				<tr>
					<th>가입일</th>
					<td><input type="text" id="enrollDate" value=""></td>
				</tr>
				<tr>
					<th>회원신고횟수</th>
					<td><input type="text" id="re1" value=""></td>
				</tr>
				<tr>
					<th>회원경고횟수</th>
					<td><input type="text" id="c1" value=""></td>
				</tr>
				<tr>
					<th>채널신고횟수</th>
					<td><input type="text" id="re2" value=""></td>
				</tr>
				<tr>
					<th>채널경고횟수</th>
					<td><input type="text" id="c2" value=""></td>
				</tr>
				<tr>
					<th>회원중지유무</th>
					<td><input type="text" id="userb" value=""></td>
				</tr>
				<tr>
					<th>채널중지유무</th>
					<td><input type="text" id="chb" value=""></td>
				</tr>
				<tr>
					<th>블랙리스트유무</th>
					<td><input type="text" id="blackb" value=""></td>
				</tr>


				<button type="submit" value="확인"></button>

			</table>
		</div>

	</form>
</body>
</html>