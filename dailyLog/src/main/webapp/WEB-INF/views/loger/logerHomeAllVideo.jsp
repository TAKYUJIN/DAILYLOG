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
	/* border: 1px solid red;  */
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

#videoarea {
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

.ch_info {
	margin-top: -30px;
}

.video_title {
	margin-top: -10px;
}

#favvideo {
	width: 300px;
	margin-left: 30px;
	margin-top: 100px;
	/* border:1px solid green; */
}

#newvideos {
	width: 300px;
	margin-left: 30px;
	margin-top: 100px;
	/* border:1px solid green; */
	hr
	{
	color
	:
	blue;
}
</style>
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

				<br>
				<hr>
				<p id="newvideos">
					<strong>모든동영상</strong>
				</p>
				<table id="videoarea">
					<tr>
						<td><video width="200px;" height="150px;" controls loop>
								<source src="${pageContext.request.contextPath }${url }">
								<source src="nature.ogg" type="">
							</video><br> <br>
							<div class="video_title">
								<p>
									<strong>동영상제목</strong>
								</p>
							</div> <br>
							<div class="ch_info">
								<img src="resources/images/playbtn.png" style="width: 15px;">
								<span class="hit"> <strong class="blind">조회수</strong> <em>80,634</em>
								</span> <span class="bar"></span>
							</div></td>
						<td><video width="200px;" height="150px;" controls loop>
								<source src="" type="">
								<source src="nature.ogg" type="">
							</video><br> <br>
							<div class="video_title">
								<p>
									<strong>동영상제목</strong>
								</p>
							</div> <br>
							<div class="ch_info">
								<img src="resources/images/playbtn.png" style="width: 15px;">
								<span class="hit"> <strong class="blind">조회수</strong> <em>80,634</em>
								</span> <span class="bar"></span>
							</div></td>
						<td><video width="200px;" height="150px;" controls loop>
								<source src="" type="">
								<source src="nature.ogg" type="">
							</video><br> <br>
							<div class="video_title">
								<p>
									<strong>동영상제목</strong>
								</p>
							</div> <br>
							<div class="ch_info">
								<img src="resources/images/playbtn.png" style="width: 15px;">
								<span class="hit"> <strong class="blind">조회수</strong> <em>80,634</em>
								</span> <span class="bar"></span>
							</div></td>
					</tr>
				</table>

				<hr>
				<table id="videoarea1">
					<tr>
						<td><video width="200px;" height="150px;" controls loop>
								<source src="" type="">
								<source src="nature.ogg" type="">
							</video><br>
							<div class="video_title">
								<br>
								<p>
									<strong>동영상제목</strong>
								</p>
							</div> <br>
							<div class="ch_info">
								<img src="resources/images/playbtn.png" style="width: 15px;">
								<span class="hit"> <strong class="blind">조회수</strong> <em>80,634</em>
								</span> <span class="bar"></span>
							</div></td>
						<td><video width="200px;" height="150px;" controls loop>
								<source src="" type="">
								<source src="nature.ogg" type="">
							</video><br>
							<div class="video_title">
								<br>
								<p>
									<strong>동영상제목</strong>
								</p>
							</div> <br>
							<div class="ch_info">
								<img src="resources/images/playbtn.png" style="width: 15px;">
								<span class="hit"> <strong class="blind">조회수</strong> <em>80,634</em>
								</span> <span class="bar"></span>
							</div></td>

						<td><video width="200px;" height="150px;" controls loop>
								<source src="" type="">
								<source src="nature.ogg" type="">
							</video><br>
							<div class="video_title">
								<br>
								<p>
									<strong>동영상제목</strong>
								</p>
							</div> <br>
							<div class="ch_info">
								<img src="resources/images/playbtn.png" style="width: 15px;">
								<span class="hit"> <strong class="blind">조회수</strong> <em>80,634</em>
								</span> <span class="bar"></span>
							</div></td>
					</tr>
				</table>

				<table id="videoarea1">
					<tr>
						<td><video width="200px;" height="150px;" controls loop>
								<source src="" type="">
								<source src="nature.ogg" type="">
							</video><br>
							<div class="video_title">
								<br>
								<p>
									<strong>동영상제목</strong>
								</p>
							</div> <br>
							<div class="ch_info">
								<img src="resources/images/playbtn.png" style="width: 15px;">
								<span class="hit"> <strong class="blind">조회수</strong> <em>80,634</em>
								</span> <span class="bar"></span>
							</div></td>
						<td><video width="200px;" height="150px;" controls loop>
								<source src="" type="">
								<source src="nature.ogg" type="">
							</video><br>
							<div class="video_title">
								<br>
								<p>
									<strong>동영상제목</strong>
								</p>
							</div> <br>
							<div class="ch_info">
								<img src="resources/images/playbtn.png" style="width: 15px;">
								<span class="hit"> <strong class="blind">조회수</strong> <em>80,634</em>
								</span> <span class="bar"></span>
							</div></td>

						<td><video width="200px;" height="150px;" controls loop>
								<source src="" type="">
								<source src="nature.ogg" type="">
							</video><br>
							<div class="video_title">
								<br>
								<p>
									<strong>동영상제목</strong>
								</p>
							</div> <br>
							<div class="ch_info">
								<img src="resources/images/playbtn.png" style="width: 15px;">
								<span class="hit"> <strong class="blind">조회수</strong> <em>80,634</em>
								</span> <span class="bar"></span>
							</div></td>
					</tr>
				</table>
			</div>
		</div>
	</form>
<br>
<br>

<br>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>




	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>