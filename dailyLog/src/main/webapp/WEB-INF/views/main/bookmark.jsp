<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background:#FFF;
}
.bookmarkForm {
	
	width:800px;
	text-align:center;
	margin-left:50px;
}
#bookmarkArea {
	margin-left:50px;
	margin-top:50px;
	border-spacing: 10px;
	border-collapse: separate;

}

#searchArea {
	margin-top:50px;
	width:150px;
	text-align:right;
}

.video_td {
	border:none;
	background:#FFF;
}
</style>
</head>
<body>
<jsp:include page="../common/logerBar.jsp"></jsp:include>

<form action="" method="" class="bookmarkForm">
	
			<div id="searchArea" style="float:right;">
               
               <form class="navbar-form form-inline">
					<div class="input-group search-box">								
					<input type="text" id="search" class="form-control" placeholder="북마크 검색">
					<span class="input-group-addon"><i class="material-icons">&#xE8B6;</i></span>
					</div>
				</form>
                
                </div>

	<table id="bookmarkArea">
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
			</td>
		</tr>
	</table>
</form>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>