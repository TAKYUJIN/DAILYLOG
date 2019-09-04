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
	height:700px;
	margin-top: 100px;
	border: 1px solid black;
}

.btn {
	border: 1px solid lightgray;
	margin-left: 20px;
}

.infobtn {
	margin-top: 50px;
	margin-left: -10px;
}

#uploadbtn {
	margin-top: 30px;
	margin-left: 900px;
}

#advertising {
	color: gray;
}
#innerbox{
	margin-left:100px;
}
#minor{
	margin-left:600px;
	margin-top:-400px;
}
#minorimg{
	margin-left:70px;
}
.form-group{
	width:500px;
	margin-left:-10px;
}
</style>

</head>
<body>

 <jsp:include page="../common/mainBar.jsp"></jsp:include> 

	<div class="mainpage">
		<form action="" class="mainForm">
			<br> <br> <br>
			<div class="container">
				<div class="progress" style="width:950px;">
					<div class="progress-bar progress-bar-striped active"
						role="progressbar" aria-valuenow="40" aria-valuemin="0"
						aria-valuemax="100" style="width: 40%"></div>
				</div>
			</div>
			<button id="uploadbtn" class="btn btn-primary">게시하기</button>
			<div id="innerbox">
				<div class="infobtn">
					<button type="button" class="btn">기본정보</button>
					<button type="button" class="btn">추가정보</button>
				</div>
				<br>
				<div class="basicInfo">
					<div class="container">
						<div class="form-group">
							<input type="text" class="form-control" id="title_name"
								style="width: 400px" placeholder="동영상제목">
						</div>
						<div class="form-group">
							<textarea class="form-control" rows="3" id="comment"
								style="width: 400px" placeholder="태그(예:일상기록,여행,강아지,음식)"></textarea>
						</div>
					</div>
					<a>시청등급을 선택하세요</a> <br>
					<br> <input type="checkbox" name="vehicle1" value="Bike">
					전체시청가능<br> <input type="checkbox" name="vehicle2" value="Car">
					19세 이상 시청가능<br> <br>
					<br> <input type="checkbox" name="vehicle1" value="Bike">
					광고여부<br> <a id="advertising">광고여부 체크시 아래의 문구가 자동으로 기재됩니다<br>
						본 컨텐츠는 유료제품 추천, 후원, 보증과 같은 유료 광고 내용이 포함되어 있습니다
					</a>
				</div>
				<div id="minor">
				<img id="minorimg" src="resources/images/family.png" style="width:100px;">
				<br>
				<a>동영상에 미성년자가 등장하는지 살펴주세요<br>
				DailyLog에서의 아동 안전에 대한 정책과 <br>거주 지역의 모든 노동법 의무를 준수해야합니다</a>
				</div>




			</div>
		</form>
	</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>