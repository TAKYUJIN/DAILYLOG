<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<style>
.mainpage {
	width: 1024px;
	height: 800px;
	margin-top: 100px;
	border: 1px solid black;
}

.btn {
	border: 1px solid lightgray;
	margin-left: 20px;
}

.infobtn {
	margin-top: 50px;
	margin-left: 20px;
}

#uploadbtn {
	margin-top: 30px;
	margin-left: 900px;
}
</style>

</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>

	<div class="mainpage">
		<br> <br> <br>
		<div class="container">
			<div class="progress">
				<div class="progress-bar progress-bar-striped active"
					role="progressbar" aria-valuenow="40" aria-valuemin="0"
					aria-valuemax="100" style="width: 40%"></div>
			</div>
		</div>
		<button id="uploadbtn" class="btn btn-primary">게시하기</button>
		<div class="infobtn">
			<button type="button" class="btn">기본정보</button>
			<button type="button" class="btn">추가정보</button>
		</div>
		<div class="basicInfo">
		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>