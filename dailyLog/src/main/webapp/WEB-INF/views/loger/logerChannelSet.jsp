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
	/* height: 800px; */
	margin-top: 30px;
	/* border: 1px solid black; */
}

#line {
	border: 1px solid darkgray;
	width: 800px;
	margin-left: 100px;
}

#textarea {
	margin-left: 130px;
}

#Revisbtn {
	margin-top:80px;
	margin-left:-400px;
}
#editbtn{
	margin-top:-550px;
	margin-left:830px;
}
h4{

border:1px solid black;
}
</style>

</head>
<body>
	<jsp:include page="../common/logerBar.jsp"></jsp:include>



	<div class="mainpage">
		<h4 style="margin-left: 120px">
			<strong>채널정보</strong>
		</h4>
		<div id="line"></div>
		<textarea rows="10" cols="100" id="textarea" style="margin-top: 26px"></textarea>

		<button id="Revisbtn" class="btn btn-primary">수정</button>
		<br><br><br><br><br>
		
		<h4 style="margin-left: 120px width:500px">
			<strong>채널전체구성</strong>
		</h4>
		<div id="line"></div>
		<textarea rows="10" cols="100" id="textarea" style="margin-top: 26px"></textarea>

		<button id="editbtn" class="btn btn-primary">편집</button>
		
	</div>





	<br>
	<Br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>