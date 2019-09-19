<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.mainpage {
	width: 1024px;
	margin-top: 200px;
	/*    border: 1px solid black; */
}

#left {
	width: 200px;
	/* height:700px; */
	margin-top: 100px;
	margin-left: 20px;
	/* border: 1px solid black; */
}

#right {
	width: 600px;
	/* height:700px;  */
	margin-top:	-100px;
	margin-left: 400px;
	/*  border: 1px solid red;  */
}

#sub_list {
	margin-top: 50px;
}

.video_td {
	border:none;
	background:#FFF;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/mainBar.jsp"></jsp:include>
	<form action="subscribe.mb" method="post">
		<div class="maingape">
			<div id="left">
				<div id="sub_list">
					<div class="container">
						<div class="col-xs-3">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>구독</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${subscribeList}" var="s">
									<tr>
										<td><c:out value="${s.chNm}"/></td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="right">
		<table id="subscribeArea">
		<tr><th style ="font-size:1.5em">채널1</th></tr>
		<tr>
			<td>
				<video width="200px;" height="150px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle">
			<input type="text" value="조회수" class="video_td" id="videoCount">
			</td>
			<td>
				<video width="200px;" height="150px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle">
			<input type="text" value="조회수" class="video_td" id="videoCount">			
			</td>
		</tr>
		<tr></tr>
		<tr><th style ="font-size:1.5em; margin-top:100px;">채널2</th></tr>
		<tr>
			<td>
				<video width="200px;" height="150px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle">
			<input type="text" value="조회수" class="video_td" id="videoCount">
			</td>
			<td>
				<video width="200px;" height="150px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle">
			<input type="text" value="조회수" class="video_td" id="videoCount">
			</td>
		</tr>
		<tr><th style ="font-size:1.5em">채널3</th></tr>
		<tr>
			<td>
				<video width="200px;" height="150px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle">
			<input type="text" value="조회수" class="video_td" id="videoCount">
			</td>
			<td>
			
				<video width="200px;" height="150px;" controls loop>
					<source src="" type="">
					<source src="nature.ogg" type="">
				</video><br>
			<input type="text" value="동영상제목" class="video_td" id="videoTitle">
			<input type="text" value="업조회수" class="video_td" id="videoCount">
			</td>
		
		</tr>
	</table>
		</div>
	</form>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
 <br>
</html>