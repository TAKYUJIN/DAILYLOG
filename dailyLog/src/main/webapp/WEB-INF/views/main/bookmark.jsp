<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://vjs.zencdn.net/7.6.0/video-js.css" rel="stylesheet">

<!-- If you'd like to support IE8 (for Video.js versions prior to v7) -->
<script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
<script src='https://vjs.zencdn.net/7.6.0/video.js'></script>
<style>
body {
	background: #FFF;
}

.bookmarkForm {
	width: 800px;
	text-align: center;
	margin-left: 50px;
}

#bookmarkArea {
	/* margin-left:50px; */
	margin-top: 50px;
	border-spacing: 10px;
	border-collapse: separate;
}

#searchArea {
	margin-top: 50px;
	width: 150px;
	text-align: right;
}

.video_td {
	border: none;
	background: #FFF;
}
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>

	<form action="selectBookmark.mb" method="post" class="bookmarkForm">

		<div id="searchArea" style="float: right;">

			<form class="navbar-form form-inline">
				<div class="input-group search-box">
					<input type="text" id="search" class="form-control"
						placeholder="북마크 검색"> <span class="input-group-addon"><i
						class="material-icons">&#xE8B6;</i></span>
				</div>
			</form>

		</div>

		<table id="bookmarkArea">
			<tr>
				<c:forEach items="${bList}" var="b" varStatus="status">
					<!-- 비디오 -->
					<% 	ArrayList bList = (ArrayList) request.getAttribute("bList");
						System.out.println(bList.size());
						System.out.println(bList.get(2));%>

					<%-- <c:choose>
						<c:when test="${fn:length(bList.get()) > 2">
						<td><video id='my-video' class='video-js' width="200px;"
							height="150px;" controls loop
							poster='resources/images/${b.filepath}' data-setup='{}'>
							<source src="resources/images/${b.filepath}" type="">
							 <source src='resources/uploadFiles/${b.filepath}' type='video/mp4'>
							<!--  <source src='MY_VIDEO.webm' type='video/webm'> -->
						</video><br> <input type="text" value="${b.vTitle}" class="video_td"
						id="videoTitle"> <input type="text"
						value="업데이트  ${fn:substring(b.uploadDT,0,10)}" class="video_td"
						id="videoDate"></td>
							<br>
						</c:when>
						<c:otherwise>
						<td><video id='my-video' class='video-js' width="200px;"
							height="150px;" controls loop
							poster='resources/images/${b.filepath}' data-setup='{}'>
							<source src="resources/images/${b.filepath}" type="">
							 <source src='resources/uploadFiles/${b.filepath}' type='video/mp4'>
							<!--  <source src='MY_VIDEO.webm' type='video/webm'> -->
						</video><br> <input type="text" value="${b.vTitle}" class="video_td"
						id="videoTitle"> <input type="text"
						value="업데이트  ${fn:substring(b.uploadDT,0,10)}" class="video_td"
						id="videoDate"></td>
						</c:otherwise>
					</c:choose> --%>
					<%--<td>
				 	  <video id='my-video' class='video-js' width="200px;" height="150px;" controls loop
						  poster='resources/images/${b.filepath}' data-setup='{}' >
						  <source src="resources/images/${b.filepath}" type="">
						  <source src='resources/uploadFiles/${b.filepath}' type='video/mp4'>
						 <!--  <source src='MY_VIDEO.webm' type='video/webm'> -->
					  </video><br>
					  <input type="text" value="동영상제목" class="video_td" id="videoTitle">
					<input type="text" value="업데이트 2019.08.13" class="video_td" id="videoDate">		
				</td>
				<td>
					  <video id='my-video' class='video-js' width="200px;" height="150px;" controls loop
						  poster='resources/images/${b.filepath}' data-setup='{}' >
						  <source src="resources/images/${b.filepath}" type="">
						  <source src='resources/uploadFiles/${b.filepath}' type='video/mp4'>
						 <!--  <source src='MY_VIDEO.webm' type='video/webm'> -->
					  </video><br>
					  <input type="text" value="동영상제목" class="video_td" id="videoTitle">
					<input type="text" value="업데이트 2019.08.13" class="video_td" id="videoDate">		
				</td><br> --%>
				</c:forEach>
			</tr>

			<!-- <td>
				<video width="200px;" height="150px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle">
			<input type="text" value="업데이트 2019.08.13" class="video_td" id="videoDate">
			</td>
			<td>
				<video width="200px;" height="150px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle">
			<input type="text" value="업데이트 2019.08.13" class="video_td" id="videoDate">
			</td>
		</tr>
		<tr>
			<td>
				<video width="200px;" height="150px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle">
			<input type="text" value="업데이트 2019.08.13" class="video_td" id="videoDate">
			</td>
			<td>
				<video width="200px;" height="150px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle">
			<input type="text" value="업데이트 2019.08.13" class="video_td" id="videoDate">
			</td>
			<td>
				<video width="200px;" height="150px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle">
			<input type="text" value="업데이트 2019.08.13" class="video_td" id="videoDate">
			</td> -->
		</table>
	</form>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>