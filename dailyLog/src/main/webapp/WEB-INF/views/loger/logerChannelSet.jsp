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
	margin-top: 80px;
	margin-left: -400px;
}

#editbtn {
	margin-top: -85px;
	margin-left: 830px;
}

h4 {
	width: 200px;
	/* border: 1px solid black; */
}

.dropdown {
	width: 150px;
	margin-top: -70px;
	margin-left: 600px;
	/* border: 1px solid black; */
}
</style>

</head>
<body>
	<jsp:include page="../common/logerBar.jsp"></jsp:include>



	<div class="mainpage">
	
	
		<h4 style="margin-left: 120px">
			<strong>채널전체구성</strong>
		</h4>
		<div id="line"></div>
		<button id="editbtn" class="btn btn-primary">편집</button>


		<div class="dropdown">
			<button class="btn btn-primary dropdown-toggle" type="button"
				data-toggle="dropdown">
				사용자임의지정 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="#">인기동영상</a></li>
				<li><a href="#">최신순</a></li>
			</ul>
		</div>


	</div>





	<br>
	<Br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>