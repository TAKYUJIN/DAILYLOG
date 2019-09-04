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
	height: 800px;
	margin-top: 30px;
	/* border: 1px solid black; */
}

.logerMainImg {
	width: 900px;
	height: 200px;
	magin-top: -30px;
	/* 	border: 1px solid black; */
}



.imInfoPic {
	margin-top: 50px;
	margin-left: 50px;
	width: 70px;
	height: 70px;
	border-radius: 50%;
}

.container {
	margin-top: 20px;
}

#subscribebtn {
	margin-left: 250px;
	margin-top: -60px;
}

body {
	background: #fff;
	font-family: 'Varela Round', sans-serif;
}

#accordionExample {
	margin-bottom: 20px;
}

.noticeMain {
	margin-top: 50px;
	margin-left: 100px;
	width: 1000px;
	margin-bottom: 50px;
}

.accordion .card {
	background: none;
	border: none;
}

.accordion .card .card-header {
	background: none;
	border: none;
	padding: .4rem 1rem;
	font-family: 'Varela Round', sans-serif;
}

.accordion .card-header h2 span {
	float: left;
	margin-top: 10px;
}

.accordion .card-header .btn {
	color: #2f2f31;
	font-size: 16px; /* 질문 폰트 크기 */
	text-align: left;
	position: relative;
	font-weight: 500;
	padding-left: 2rem;
}

.accordion .card-header i {
	font-size: 1.2rem;
	font-weight: bold;
	position: absolute;
	left: 0;
	top: 9px;
}

.accordion .card-header .btn:hover {
	color: #ff8300;
}

.accordion .card-body {
	color: #324353;
	padding: 0.5rem 3rem;
}

.page-title1 {
	margin: 3rem 0 3rem 0rem;
	font-family: 'Varela Round', sans-serif;
	position: relative;
}

.page-title1::after {
	content: "";
	width: 70px;
	position: absolute;
	height: 3px;
	border-radius: 1px;
	background: #FBC52C; /* #73bb2b 원래 색 */
	left: 0;
	bottom: -15px;
}

.page-title2 {
	margin: 3rem 0 3rem 0rem;
	font-family: 'Varela Round', sans-serif;
	position: relative;
}

.page-title2::after {
	content: "";
	width: 70px;
	position: absolute;
	height: 3px;
	border-radius: 1px;
	background: #192466; /* #73bb2b 원래 색 */
	left: 0;
	bottom: -15px;
}

.page-title3 {
	margin: 3rem 0 3rem 0rem;
	font-family: 'Varela Round', sans-serif;
	position: relative;
}

.page-title3::after {
	content: "";
	width: 70px;
	position: absolute;
	height: 3px;
	border-radius: 1px;
	background: #192466; /* #73bb2b 원래 색 */
	left: 0;
	bottom: -15px;
}

.accordion .highlight .btn {
	color: #74bd30;
}

.accordion .highlight i {
	transform: rotate(180deg);
}

.search-box {
	margin-top: -30px;
	margin-left: 700px;
}

.newVideo {
	width: 400px;
	margin-top: 100px;
	/* 	border: 1px solid black; */
}

.infoarea {
	width: 1000px;
	margin-left: 30px;
	margin-top: 20px;
	/* 	border: 1px solid red; */
}

#videoarea1 {
	width: 1000px;
	margin-left: 30px;
	margin-top: 20px;
	/* 	border: 1px solid blue; */
}

#textInfo {
	width: 300px;
	margin-left: 5px;
	margin-top: 50px;
	/* border:1px solid green; */
}

#infoarea {
	width: 800px;
	/* border: 1px solid black; */
}
</style>
<script>
	$(document).ready(function() {
		// Add minus icon for collapse element which is open by default
		$(".collapse.show").each(function() {
			$(this).prev(".card-header").addClass("highlight");
		});

		// Highlight open collapsed element 
		$(".card-header .btn").click(function() {
			$(".card-header").not($(this).parents()).removeClass("highlight");
			$(this).parents(".card-header").toggleClass("highlight");
		});
	});
</script>
</head>
<body>
	<jsp:include page="../common/logerBar.jsp"></jsp:include>


	<form action="" method="post">
		<div class="mainpage">

			<div class="logerMainImg">
				<img src="resources/images/loger_home_title.png">
			</div>
			<br> <br>
			<div class="input-group search-box">
				<input type="text" id="search" class="form-control" placeholder="검색">
				<span class="input-group-addon"><i class="material-icons">&#xE8B6;</i></span>
			</div>

			<div class="myInfo">
				<img class="imInfoPic" src="resources/images/user.png">
				<div class="textInfo">
					<p style="widht: 200px; margin-left: 130px; margin-top: -50px;">
						<strong>채널명</strong>
					</p>
				</div>
				<button id="subscribebtn" class="btn btn-primary">구독</button>
				<p style="widht: 200px; margin-left: 130px; margin-top: -10px;">구독자:5명</p>
			</div>

			<div class="row" style="margin-left: 30px;">
				<div class="col-lg-15">
					<a href="newHomeChannel.lo" class="noticeLink"
						style="float: left; width: 15%;"><h4 class="page-title1">홈</h4></a>
					<a href="logerHomeAllVideo.lo" class="noticeLink"
						style="float: left; width: 15%;"><h4 class="page-title2">동영상</h4></a>
					<a href="logerHomeInfo.lo" class="noticeLink"
						style="float: left; width: 15%;"><h4 class="page-title3">정보</h4></a>
				</div>

				<br> <br> <br>
			
					<div class="table-wrapper" style="width: 300px">
						<table class="table table-striped" >
							<thead>
								<tr>
									<th>통계</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<td>가입일:2019.09.03</td>
								</tr>
								<tr>
									<td>구독자수:5명</td>
								</tr>
							</tbody>
						</table>
					</div>
					<p id="textInfo">
						<strong>정보</strong>
					</p>
					<div id="infoarea">설산에서 뭇 품고 현저하게 품었기 이것이야말로 약동하다. 들어 장식하는 이는
						길을 무한한 끝까지 같이, 따뜻한 인간이 말이다. 못할 그들은 열락의 그것을 사랑의 그들에게 것이다. 실로 관현악이며,
						인생의 같은 공자는 앞이 유소년에게서 심장은 사막이다. 불어 지혜는 살 것이다. 같지 인간의 있을 가슴이 모래뿐일
						동력은 있다. 고행을 천하를 굳세게 천고에 거친 뿐이다. 가지에 천하를 우는 그들은 얼마나 듣기만 뿐이다. 하는 그것은
						귀는 없는 인생에 불어 이 온갖 설산에서 것이다. 인간은 충분히 많이 두손을 이것이야말로 있는 가장 것이다. 이상은
						얼마나 피가 인류의 황금시대의 부패를 방지하는 사람은 소리다.이것은 있다.</div>
				</div>
			</div>
		

	</form>







	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>