<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#joinForm").submit(function(){
			if($("#userPwd").val() !== $("#userPwd2").val()){
				alert("비밀번호가 다릅니다.");
				$("#userPwd").val("").focus();
				$("#userPwd2").val("");
				return false;
			}else if ($("#userPwd").val().length < 8) {
				alert("비밀번호는 8자 이상으로 설정해야 합니다.");
				$("#userPwd").val("").focus();
				return false;
			}else if($.trim($("#userPwd").val()) !== $("#userPwd").val() || $.trim($("#userId").val()) !== $("#userId").val() || $.trim($("#nickname").val()) !== $("#nickname").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
		})
		
		$("#userId").keyup(function() {
			$.ajax({
				url : "../member/check_id.do",
				type : "POST",
				data : {
					id : $("#userId").val()
				},
				success : function(result) {
					if (result == 1) {
						$("#id_check").html("중복된 아이디가 있습니다.");
						$("#joinBtn").attr("disabled", "disabled");
					} else {
						$("#id_check").html("");
						$("#joinBtn").removeAttr("disabled");
					}
				},
			})
		});
		
	})
</script>
</head>
<body>
	<jsp:include page="../common/guest.jsp"></jsp:include>
	
	<form id="joinForm" action="insert.me" method="post" encType="multipart/form-data">
		<table align="center">
			<tr>
				<td> 아이디 </td>
				<td><input type="email" name="userId" id="userId" required placeholder="이메일 인증 후 로그인이 가능합니다."></td>
				<td><button id="id_check">중복확인</button></td>
			</tr>
			<tr>
				<td> 비밀번호 </td>
				<td><input type="password" id="userPwd" name="userPwd" required></td>
			</tr>
			<tr>
				<td> 비밀번호확인 </td>
				<td><input type="password" id="userPwd2" name="userPwd2" required></td>
			</tr>
			<tr>
				<td> 이름 </td>
				<td><input type="text" id="userNm" name="userNm" required></td> 
			</tr>
			<tr>
				<td> 닉네임 </td>
				<td><input type="text" id="nickname" name="nickname" required></td>
				<td><button id="id_check">중복확인</button></td>
			</tr>
			<tr>
				<td> 전화번호 </td>
				<td><input type="tel" id="phone" name="phone"></td>
			</tr>
			<tr>
				<td> 성별 </td>
				<td><input type="radio" name="gender" id="gender" value="여" checked="checked">여 &nbsp; &nbsp; 
				&nbsp; &nbsp;<input type="radio" name="gender" id="gender" value="남" >남</td>
			</tr>	
			
		</table>
		<div align="center">
			<button type="reset">작성취소</button>
			<button id="joinBtn" type="submit">가입하기</button>
		</div>
	</form>
	<br><br><br><br><br>
	
	
	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>