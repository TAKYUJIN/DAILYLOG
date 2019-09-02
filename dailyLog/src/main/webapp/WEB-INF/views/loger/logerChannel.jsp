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
	height: 600px;
	margin-top: 30px;
	/* border: 1px solid red;  */
}

.logerMainImg {
	width: 1000px;
	height: 200px;
	magin-top: -30px;
	border: 1px solid black;
}

.my-hr {
	border: 0;
	height: 1px;
	background: #ccc;
	width: 900px;
	margin-left: -10px;
	margin-top: 1px;
}

.btn-group {
	padding: 0;
	border: none;
	background: none;
	color: black;
}

a {
	font-size: 30px;
	color: black;
}

 a:link {color:black; text-decoration:none;}
    a:visited {color:black; text-decoration:none;}
    a:hover {color:black; text-decoration:none;}
    a:active {color:black; text-decoration:none;}


</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>


	<form action="" method="post">
		<div class="mainpage">
			<div class="logerMainImg">여기는 이미지 넣는곳입니다 !!!</div>
			<br> <br> <br> <br>
			<div class="container">

				<div class="btn-group">
					<a href="#" class="button" style="text-decoration: none">홈</a> <a
						href="#" class="button" style="text-decoration: none">동영상</a> <a
						href="#" class="button" style="text-decoration: none">정보</a>
				</div>
				<hr class="my-hr">
			</div>
		</div>

	</form>


	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>