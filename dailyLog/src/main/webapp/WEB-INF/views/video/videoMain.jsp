<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
	div img {
		margin:5px;
	}
	.chImg {
		width:60px; 
		height:60px;
		border:1px dashed gray;
		border-radius: 50%;
		vertical-align: middle;
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
				<td width="60px" height="60px">
					<!-- 채널이미지 -->
					<div>
						<img class="chImg" src="resources/images/man.jpg">
					</div>
				</td>
				<td width="180px" height="60px">
					<div style="margin-left:10%;">
						<div>
							<div style="margin-right:10%; display:inline-block;">채널명</div>
							<div style="display:inline-block;"><button>30만</button></div>
						</div>
						<p>게시일 : 2019.09.03</p>
					</div>
				</td>
				<td width="150px" height="60px"></td>
				<td width="200px" height="60px">
					<div style="margin:10px;">
						<a onclick="selectLike();"><img src="resources/images/dollar.png" style="width:20px;"></a>
						<a onclick="selectLike();"><img src="resources/images/heart_black.png" style="width:20px;"></a>
						<!-- <img src="resources/images/heart_red.png" style="width:20px"> -->
						<img src="resources/images/broken.png" style="width:22px">
						<!-- <img src="resources/images/broken_color.png" style="width:22px"> -->
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
				url:"/with/imgCheck.vd",
				type:"post",
				/* data:{userId:userId}, */
				success:function(data){
					console.log("성공!");
					
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