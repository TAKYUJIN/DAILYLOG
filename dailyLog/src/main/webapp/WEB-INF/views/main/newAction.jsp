<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://vjs.zencdn.net/7.6.0/video-js.css" rel="stylesheet">

<!-- If you'd like to support IE8 (for Video.js versions prior to v7) -->
<script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
<script src='https://vjs.zencdn.net/7.6.0/video.js'></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
<style>
body {
	color:#525252;
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
	<jsp:include page="../common/mainBar.jsp" />


	<form action="selectnewAction.mb" method="post">

		<p id="newvideos">
		<h3>시청기록</h3>

		</p>
		<div id="select">
			<select>
				<option href="newAction.mb">시청기록</option>
				<option href="#">댓글</option>
			</select>
		</div>
		<table id="videoarea">
			<tbody id="newvideo">
				<c:set var="i" value="0" />
				<c:set var="j" value="3" />
					<!-- 비디오 -->
				<c:choose>
					<c:when test="${vlist ne null && fn:length(vlist) gt 0 }">
				<c:forEach items="${vlist}" var="vl" varStatus="status">
					<c:if test="${i%j eq 0}">
						<tr>
					</c:if>
					<td><video id='new_video' class=video_js' sidth="300px;"
					height="200px;" controls loop poster='resources/uploadFiles/${vl.fileNm}' data-setup='{}'
					onclick="location.href='video.vd?userNo=${vl.userNo}&vNo=${vl.vNo}'">
					<source src="resources/uploadFiles/${vl.fileNm }" type="video/mp4">
					</video><br>
					<input type="text" value="${vl.vTitle}" class="video_td" id="videoTitle" readonly onfocus="this.blur();"> 
						<input type="text" value="업데이트  ${fn:substring(b.uploadDT,0,10)}" class="video_td" id="videoDate" readonly onfocus="this.blur();"></td>
					<c:if test="${i%j eq j-1}">
						</tr>
					</c:if>
					<c:set var="i" value="${i+1}"/>
						</c:forEach>
					</c:when>
				</c:choose>
				</tbody>

	
			<%-- <tr>
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
		</div>--%>
			</form>





			<jsp:include page="../common/footer.jsp"></jsp:include>
</body>

</html>