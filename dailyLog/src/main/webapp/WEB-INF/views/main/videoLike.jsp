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
<title>WITH</title>
<link href="https://vjs.zencdn.net/7.6.0/video-js.css" rel="stylesheet">

<!-- If you'd like to support IE8 (for Video.js versions prior to v7) -->
<script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
<script src='https://vjs.zencdn.net/7.6.0/video.js'></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
<style>
body {
	color:#525252;
}
.bookmarkForm {
	width:60%;
	margin:0 auto;
	font-size:16px;
	font-weight:bold;
}

#bookmarkArea {
	/* margin-left:50px; */
	margin-top: 50px;
	border-spacing: 10px;
	border-collapse: separate;
}

#searchArea {
	margin-top:50px;
	width:25%;
	text-align:right;
}

.video_td {
	border:none;
	background-color:transparent;
	align:left;
	margin-bottom:10px;
}
input:focus {outline:none;}
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>

	<form action="selectVideoLike.mb" method="post" class="bookmarkForm">
		<div id="searchArea" style="float:right;">

				<div class="input-group search-box">
					<input type="text" id="searchTitle" class="form-control" placeholder="좋아요 검색">
					<span class="input-group-addon"><i class="material-icons" onclick="selectBookmark();">&#xE8B6;</i></span>
				</div>

		</div>
		

		<table id="bookmarkArea">
			<tbody id="bookmark">
			<c:set var="i" value="0" />
			 <c:set var="j" value="3" />
					<!-- 비디오 -->
				<c:choose>
					<c:when test="${bList ne null && fn:length(bList) gt 0}">
				<c:forEach items="${bList}" var="b" varStatus="status">
					<c:if test="${i%j eq 0}">
						<tr>
					</c:if>
					<td><video id='my-video' class='video-js' width="300px;"
							height="200px;" controls loop poster='resources/images/${b.fileNm}' data-setup='{}'
							onclick="location.href='video.vd?userNo=${b.logerNo}&vNo=${b.vNo}'">
							<source src="resources/images/${b.fileNm}" type="">
							 <source src='resources/uploadFiles/${b.vfileNm}' type='video/mp4'>
							<!--  <source src='MY_VIDEO.webm' type='video/webm'> -->
						</video><br> 
						<input type="text" value="${b.vTitle}" class="video_td" id="videoTitle" readonly onfocus="this.blur();"> 
						<input type="text" value="업데이트  ${fn:substring(b.uploadDT,0,10)}" class="video_td" id="videoDate" readonly onfocus="this.blur();"></td>
					<c:if test="${i%j eq j-1}">
						</tr>
					</c:if>
					<c:set var="i" value="${i+1}"/>
						</c:forEach>
					</c:when>
				</c:choose>
				</tbody>
						<%-- 
					<c:choose>
						<c:when test="${fn:length(bList.get()) > 2">
						<td><video id='my-video' class='video-js' width="200px;"
							height="150px;" controls loop poster='resources/images/${b.filepath}' data-setup='{}'>
							<source src="resources/images/${b.filepath}" type="">
							 <source src='resources/uploadFiles/${b.vfilepath}' type='video/mp4'>
							<!--  <source src='MY_VIDEO.webm' type='video/webm'> -->
						</video><br> 
						<input type="text" value="${b.vTitle}" class="video_td" id="videoTitle"> 
						<input type="text" value="업데이트  ${fn:substring(b.uploadDT,0,10)}" class="video_td" id="videoDate"></td>
							<br>
						</c:when>
						<c:otherwise>
						<td><video id='my-video' class='video-js' width="200px;"
							height="150px;" controls loop
							poster='resources/images/${b.filepath}' data-setup='{}'>
							<source src="resources/images/${b.filepath}" type="">
							 <source src='resources/uploadFiles/${b.vfilepath}' type='video/mp4'>
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
<script>
			function selectBookmark(){
				var title = $("#searchTitle").val();
				console.log(title);
				
				location.href='selectVideoLike.mb?title='+title;
				
			}
			
</script>
		
</html>