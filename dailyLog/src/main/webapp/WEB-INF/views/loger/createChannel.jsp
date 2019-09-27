<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
.mainpage {
	width: 1600px;
	height: 600px;
	margin-top: 100px;
	margin-left: 200px;
	/* 	border: 1px solid black; */
}

.text1 {
	width: 800px;
	margin-left: 100px;
	margin-top: 50px;
}

#createch1 {
	width: 800px;
	height: 80px;
	margin-left: 100px;
	margin-top: 20px;
}

#submit {
	margin-left: 300px;
	margin-top: 20px;
}

.my-hr1 {
	border: 0;
	height: 1px;
	background: #A8B7BC;
	width: 1000px;
	margin-right: 1000px;
}

.button1 {
	margin-left: 50px;
	background-color: #13334A;
	padding: 10px 24px;
	color: white;
	border: none;
	border-radius: 7px;
	moz-border-radius: 7px;
	khtml-border-radius: 7px;
	webkit-border-radius: 7px;
}
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>


	<form action="createChannel.lo" method="post" enctype="multipart/form-data">
		<div class="mainpage">

			<div class="text1">
				<p>
					<strong style="font-size: 20px">DailyLog 채널 만들기</strong><br> 첫
					채널을 만들기 위해 필요한 정보를 작성해주세요
				</p>
				<hr class="my-hr1">
			</div>

			<div id="createch1">
				<div class="container" style="margin-left: 110px;">

					<div class="form-group">
						<label for="usr">채널명</label>
						<p>채널명을 기재하지 않을경우 닉네임으로 채널명이 개설됩니다 !</p>
						<input type="text" class="form-control" id="chNm" name="chNm"
							style="width: 700px">
					</div>
					<br> <br> <br>
					<div class="form-group">
						<label for="comment">채널소개</label>
						<textarea class="form-control" rows="5" id="comment" id="chInfo"
							name="chInfo" style="width: 700px"></textarea>
					</div>
					<br><br>
					<label for="usr">채널타이틀이미지 (1000*200)</label>
					<div class="form-group">
					 <input type="file" name="file2" value="file2" id="file2"/> 
					</div>
					<br> <br> <br> <br> <br> <br>
					<button type="submit" id="submit" class="btn btn-primary btn-lg">채널개설</button>
				</div>
			</div>
		</div>
	</form>
<script>
		$(document).ready(function(){
			$("#submit").click(function(){
				var chInfo = $("#chInfo").val();
				var chNm = $("#chNm").val();
				var file2 = $("#file2").val();
				
				$.ajax({
					url:"createChannel.lo",
					type:"post",
					data:{chInfo:chInfo,chNm:chNm,file2:file2,'allView':lists},
						traditional:true,
					success:function(data){
						window.location.reload();
						console.log("성공!");

					},
					error:function(data){
						console.log("실패!");
					}
				});
			});
		});
			</script>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>