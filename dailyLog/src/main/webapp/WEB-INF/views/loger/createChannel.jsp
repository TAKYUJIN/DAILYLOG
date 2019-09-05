<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.mainpage {
	width: 1024px;
	height: 600px;
	margin-top: 200px;
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
#submit{
	margin-left:300px;
	margin-top:20px;
}
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>


	<form action="createChannel.lo" method="post">
		<div class="mainpage">

			<div class="text1">
				<p>
					<strong>DailyLog 채널 만들기</strong><br> 첫 채널을 만들기 위해 필요한 정보를
					작성해주세요
				</p>
				<hr>
			</div>

			<div id="createch1">
				<div class="container">
					
						<div class="form-group">
							<label for="usr">채널명</label> <input type="text"
								class="form-control" id="ch_Nm" style="width: 700px">
						</div>
						<br> <br> <br>
						<div class="form-group">
							<label for="comment">채널소개</label>
							<textarea class="form-control" rows="5" id="comment"
								style="width: 700px"></textarea>

						</div>
					
				</div>
				<button type="submit" id="submit" class="btn btn-primary btn-lg">채널개설</button>
			</div>

		</div>
	</form>


	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>