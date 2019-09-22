<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				 <img	src="resources/uploadFiles/${logertitleimg.fileNm}" >
			</div>
			<br> <br>
			<div class="input-group search-box">
				<input type="text" id="search" class="form-control" placeholder="검색">
				<span class="input-group-addon"><i class="material-icons">&#xE8B6;</i></span>
			</div>

			<div class="myInfo" style="margin-left:30px;">
			 <img	src="resources/uploadFiles/${result.fileNm}" width="100px" height="100px">
			 
				<div class="textInfo">
					<p style="widht: 200px; margin-left: 130px; margin-top: -50px;">
						<strong><c:out value="${result.chNm}" /></strong>
					</p>
				</div>
				<button id="subscribebtn" class="btn btn-primary">구독</button>
				<p style="widht: 200px; margin-left: 130px; margin-top: -10px;"><c:out value="${result.subNum}" />명</p>
			</div>
			
			
			

			<div class="row" style="margin-left: 30px;">
				<div class="col-lg-15">
					<a href="newHomeChannel.lo?userNo=${sessionScope.userNo}" class="noticeLink"
						style="float: left; width: 15%;"><h4 class="page-title1">홈</h4></a>
					<a href="logerHomeAllVideo.lo?userNo=${sessionScope.userNo}" class="noticeLink"
						style="float: left; width: 15%;"><h4 class="page-title2">동영상</h4></a>
					<a href="logerHomeInfo.lo?userNo=${sessionScope.userNo}" class="noticeLink"
						style="float: left; width: 15%;"><h4 class="page-title3">정보</h4></a>
				</div>

				<br>
				<hr>
				<p id="newvideos">
					<strong>모든동영상</strong>
				</p>
					<c:forEach items="${logerHomeAllVideo}" var="av" begin="0" end="5">
					
				<div class="col-sm-4">
					
							<a href="video.vd?userNo=${av.userNo}&vNo=${av.vNo}">
							 <img	src="resources/uploadFiles/${av.fileNm}" width="250px"
								height="200px"></a> <br>
								
								<div class="ch_cnt">
									
								<strong style="font-size:15px;"><c:out value="${av.vTitle}" /></strong>
								<br><br>
						<img src="resources/images/playbtn.png" style="width: 15px;">
						<span class="hit"> 
						<strong class="blind">조회수</strong> 
						<em><c:out value="${av.count}" />회</em>
						&nbsp;</span> <span class="bar">
						</span> <span class="date"> 
						<strong >등록</strong>
							<em><c:out value="${av.uploadDt}" /></em>
						</span> <br><span class="tag"><em><c:out value="${av.tag}" /></em> </span>
					</div>
					
							
							
						</div>
				</c:forEach>

		
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