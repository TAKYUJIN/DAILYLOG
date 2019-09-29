<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<style>
.mainpage {
	width: 1024px;
	height: 500px;
	margin-top: 20px;
}

.upload {
	width: 300px;
	margin-top: 50px;
	margin-left: 350px;
	/* border: 1px solid black;  */
}

#uploadimg {
	margin-top: 50px;
}

.container {
	margin-left: 400px;
	margin-top: 20px;
}

#uploadbtn {
margin-left:500px;
margin-top:-50px;
}

#text {
	width: 700px;
	text-color: gray;
	margin-left: 200px;
}

.dropdown {
	margin-left: 400px;
}
#file {
 display:none;
  }
</style>

</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<form action="insertvideo.vd" method="post" enctype="multipart/form-data">
	<div class="mainpage">
		<div class="upload">
			<div id="uploadimg" align="center">
		
				<input type=file name='file1' style='display: none;'> 
				<img src="resources/images/upload.png" border='0'  style="width: 200px;"
					onclick='document.all.file1.click(); document.all.file2.value=document.all.file1.value'>
			</div>

			<br> <br>
			<div align="center">
				<h2>업로드파일 선택</h2>
			</div>
		</div>
	
		<br>
		<div id="text">
			<a style="color: gray">DailyLog에 동영상을 업로드하면 DailyLog 서비스 약관 및 운영
				정책에 동의한 것으로 간주합니다. <br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;타인의
				저작권 또는 개인정보 보호 권한을 침해해서는 안됩니다.
			</a>
		</div>
	</div>
	<button id="uploadbtn" class="btn btn-primary" >다음으로</button>
	</form>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>



