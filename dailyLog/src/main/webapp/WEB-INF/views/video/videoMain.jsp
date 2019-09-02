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
					<img src="resources/images/heart_black.png">
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
	
	<br><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>