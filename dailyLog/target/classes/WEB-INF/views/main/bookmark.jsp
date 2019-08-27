<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.bookmarkForm {
	width:75%;
	margin-left:10%;
	text-align:center;
}
#bookmarkArea {
	margin-top:150px;
	border-spacing: 10px;
	border-collapse: separate;

}

#searchArea {
	width:20%;
	text-align:right;
}

.video_td {
	border:none;
	background:#F6F6F7;
}
</style>
</head>
<body>
<jsp:include page="../common/mainBar.jsp"></jsp:include>

<form action="" method="" class="bookmarkForm">
	
			<div id="searchArea" style="float:right;">
                <fieldset>
                    <legend class="screen_out">검색어 입력폼</legend>
                    <div class="box_searchbar">
                        <span class="ico_kakaotv_new ico_search"></span>
                        <input type="text" class="inp_search" id="q" name="q" value="" title="검색어 입력" autocomplete="off">
                        <label for="q" class="lbl_search" align=center>북마크 검색</label> 
                        <button class="btn_search" type="submit"><span class="txt_search">검색</span></button>
                    </div>
                </fieldset>
                </div>

	<table id="bookmarkArea">
		<tr>
			<td>
				<video width="300px;" height="200px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle"> &nbsp;
			<input type="text" value="업데이트 2019.08.13" class="video_td" id="videoDate">
			</td>
			<td>
				<video width="300px;" height="200px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle"> &nbsp;
			<input type="text" value="업데이트 2019.08.13" class="video_td" id="videoDate">
			</td>
			<td>
				<video width="300px;" height="200px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle"> &nbsp;
			<input type="text" value="업데이트 2019.08.13" class="video_td" id="videoDate">
			</td>
		</tr>
		<tr>
			<td>
				<video width="300px;" height="200px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle"> &nbsp;
			<input type="text" value="업데이트 2019.08.13" class="video_td" id="videoDate">
			</td>
			<td>
				<video width="300px;" height="200px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle"> &nbsp;
			<input type="text" value="업데이트 2019.08.13" class="video_td" id="videoDate">
			</td>
			<td>
				<video width="300px;" height="200px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle"> &nbsp;
			<input type="text" value="업데이트 2019.08.13" class="video_td" id="videoDate">
			</td>
		</tr>
	</table>
</form>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>