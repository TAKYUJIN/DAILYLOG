<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* #LogerVideoNav {
	list-style:none;
	height:35px;
	width:450px;
	background:#F6F6F7;
}

#LogerVideoNav li {
	float:left;
	width:100px;
	position:relative;
}

#LogerVideoNav ul {
	list-style:none;
	position:absolute;
	display:none;
}

#LogerVideoNav li:hover ul {
	display:block;
}

#LogerVideoNav ul li {
	background:pink;
	width:100px;
}
 */
.searchLogerVideoForm {
	width:800px;
	margin-top:200px;
/* 	margin-left:auto;
	margin-right:auto; */
	text-align:left;
}
#searchLogerVideoArea {
	border-top:1px solid black;
	border-bottom:1px solid black;
	border-spacing: 10px;
	border-collapse: separate;
	margin-right:center;
	margin-left:center;

}

#searchLogerVideoBtn {
	width:900px;
	text-align:center;
	padding:30px;
}
.btn_bookmark {
	/* border:1px solid black; */
	font-size:15px;
}

#searchLogerVideoArea > tr {
	border-bottom:1px solid black;
	text-align:cetner;
	width:50px;
}

.video_td {
	border:none;
	text-align:center;
	background:#F6F6F7;
}

.video_th {
	text-align:center;
}

.dropdownLogerVideo li ul {
	background:;
	display:none;  /* 평상시에는 서브메뉴가 안보이게 하기 */
	height:auto;
	padding:0px;
	border:0px;
	position:absolute;
	width:200px;
	z-index:200;
}
.dropdownLogerVideo li:hover ul {
	display:block;   /* 마우스 커서 올리면 서브메뉴 보이게 하기 */
}
	
</style>
</head>
<body>
<jsp:include page="../common/loger.jsp"></jsp:include>

<form action="" method="" class="searchLogerVideoForm">
			<div id="searchLogerVideoBtn">
				<button type="button" class="btn_bookmark" style="float:left;" onclick="location.href='deleteBoard.do?idx=${board.idx }'">&nbsp;최신순&nbsp;</button> 
                <button type="button" class="btn_bookmark" style="float:left;" onclick="location.href='updateBoardForm.do?idx=${board.idx }'">&nbsp;인기순&nbsp;</button>
			
				<button type="button" class="btn_bookmark" style="float:right;" onclick="location.href='deleteBoard.do?idx=${board.idx }'">&nbsp;삭제&nbsp;</button> 
				<button type="button" class="btn_bookmark" style="float:right;" onclick="location.href='updateLogerVideo.jsp'">&nbsp;수정&nbsp;</button>
                <%-- <button type="button" class="btn_bookmark" style="float:right;" onclick="location.href='updateBoardForm.do?idx=${board.idx }'">&nbsp;수정&nbsp;</button> --%>
                </div>
	<table id="searchLogerVideoArea">
		<tr>
		<th class="video_th"><input type="checkbox" name="selectedAll"></th>
		<th class="video_th" colspan="2">목록</th>
		<th class="video_th">상태</th>
		<th class="video_th">날짜</th>
		<th class="video_th">조회수</th>
		<th class="video_th">댓글</th>
		</tr>
		<tr>
			<td><input type="checkbox" name="selectedOne" value=""></td>
			<td>
				<video width="200px;" height="150px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			</td>
			<td>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle"><br>
			<input type="text" value="채널명" class="video_td" id="channelName">
			</td>
			<td><input type="text" value="공개" class="video_td" id="videoTitle"></td>
			<td><input type="text" value="2019.08.13" class="video_td" id="videoDate"></td>
			<td><input type="text" value="조회수" class="video_td" id="videoCount"></td>
			<td><input type="text" value="댓글수" class="video_td" id="videoReply"></td>
		</tr>
		<tr>
			<td><input type="checkbox" name="selectedOne" value=""></td>
			<td>
				<video width="200px;" height="150px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			</td>
			<td>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle"><br>
			<input type="text" value="채널명" class="video_td" id="channelName">
			</td>
			<td><input type="text" value="공개" class="video_td" id="videoTitle"></td>
			<td><input type="text" value="2019.08.13" class="video_td" id="videoDate"></td>
			<td><input type="text" value="조회수" class="video_td" id="videoCount"></td>
			<td><input type="text" value="댓글수" class="video_td" id="videoReply"></td>
		</tr>
	</table>
</form>

<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>