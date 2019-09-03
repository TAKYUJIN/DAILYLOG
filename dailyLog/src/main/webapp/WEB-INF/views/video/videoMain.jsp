<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
	div img {
		margin:5px;
	}
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<br><br>
	
	<div align="center">
		<table border="1px">
			<tr>
				<!-- 채널소개, 좋아요 등 -->
				<td width="100px" height="100px"></td>
				<td width="200px" height="100px"></td>
				<td width="150px" height="100px"></td>
				<td width="200px" height="100px">
					<div style="margin:10px;">
						<a onclick="selectLike();"><img src="resources/images/heart_black.png" style="width:20px;"></a>
						<!-- <img src="resources/images/heart_red.png" style="width:20px"> -->
						<img src="resources/images/broken_black.png" style="width:22px">
						<!-- <img src="resources/images/broken_red.png" style="width:22px"> -->
						<img src="resources/images/bookmark_black.png" style="width:20px">
						<!-- <img src="resources/images/bookmark_yellow.png" style="width:20px"> -->
						<img src="resources/images/more.png" style="width:20px">
					</div>
				</td>
			</tr>
			<tr>
				<!-- 비디오 -->
				<td colspan="4" height="400px"></td>
				<!-- 댓글 -->
				<td rowspan="3" width="250px"></td>
			</tr>
			<tr>
				<!-- 영상 제목, 태그 -->
				<td colspan="4" height="130px"></td>
			</tr>
			<tr>				
				<!-- 더보기 -->
				<td colspan="4" height="130px"></td>
			</tr>
		</table>
	</div>
	
	<script>
		function selectLike(){
			
			$.ajax({
				url:"/coc/idCheck.me",
				type:"post",
				data:{userId:userId},
				success:function(data){
					
					if(data === "fail"){
						
						document.getElementById('checkId').style.color = "red";
						document.getElementById('checkId').innerHTML = "중복된 아이디입니다"; 
						
					}else {
			            if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
			                //alert("아이디는 영문 대소문자, 숫자만 입력가능합니다.");
			                document.getElementById('checkId').style.color = "red";
							document.getElementById('checkId').innerHTML = "아이디는 영문 대소문자, 숫자만 입력가능합니다."; 
			                document.f.id.focus();
			                document.f.id.select();
			            }else {
			            	
						document.getElementById('checkId').style.color = "gray";
						document.getElementById('checkId').innerHTML = "사용가능한 아이디입니다";
			            }
					}
					
				},
				error:function(){
					console.log("실패!");
				}
			});
		}
	</script>
	
	<br><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>