<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
.nav {
margin-top: 50px;

}
.img_wrap {
	width: 100px; height: 100px;
    object-fit: cover;
    object-position: top;
    border-radius: 50%;
    magin-top : 50px;
}
.img_wrap{
	max-width: 100%;
}

</style>
<script type="text/javascript">
	var profile;
	$(document).read(function() {
		$("#input_img").on("change", handImgFileSelect);
	});
	
	function handleImgFileSelect(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f){
			if
		})
	}
</script>
</head>
<body>
<jsp:include page="../common/mainBar.jsp"/>
<h1>마이페이지</h1>
<div class="nav" align="center">
<form id="myForm" action="myPage" method="post">
	<table align="center">
		<tr>
			<td>
				<img class="img_wrap">
				</td>
				<td>		
				<input type="email" name="email" readonly value="${ m.userId }">
			<input type="file" class="pro">
			</td>
		</tr>
		<tr>
			<td>이름: </td>
			<td><input type="text" name="userName" value="${ m.userNm }"> </td>
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
			<td><input type="tel" name="phone" value="${m.phone }"> </td>
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