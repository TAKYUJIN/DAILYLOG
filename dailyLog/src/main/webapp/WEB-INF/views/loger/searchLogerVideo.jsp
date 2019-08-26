<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.searchLogerVideoForm {
	width:75%;
	margin-top:200px;
	margin-left:auto;
	margin-right:auto;
	text-align:center;
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
	width:100%;
	text-align:center;
}
#searchLogerVideoArea > tr {
	border-bottom:1px solid black;
	text-align:cetner;
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
				<button type="button" style="margin-right:230px;">최신순</button>
				<button type="button" style="margin-right:240px;">인기순</button>
				<button type="button" style="margin-right:30px;">업로드</button>
                <button type="button" style="margin-right:20px;" onclick="location.href='updateBoardForm.do?idx=${board.idx }'">수정</button>
				<button type="button" style="margin-right:10px;" onclick="location.href='deleteBoard.do?idx=${board.idx }'">삭제</button>
                </div>

	<table id="searchLogerVideoArea">
		<tr>
		
	
		</tr>
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
				<video width="250px;" height="150px;" controls loop>
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
				<video width="250px;" height="150px;" controls loop>
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