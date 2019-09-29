<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>WITH</title>
<style>
.mainpage {
	width: 1600px;
	/* height: 800px; */
	margin-top: 50px;
	margin-left: 300px;
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
	margin-left: 500px;
	margin-top: 200px;
}

#editbtn {
	margin-top: -85px;
	margin-left: 830px;
}

h4 {
	width: 200px;
	/* border: 1px solid black; */
}

.submit {
	margin-left: 50px;
	background-color: #13334A;
	padding: 10px 24px;
	color: white;
	border: none;
	border-radius: 7px;
	moz-border-radius: 7px;
	khtml-border-radius: 7px;
	webkit-border-radius: 7px;
}
  .button1 {
  	margin-top:20px;
	margin-left:450px;
	background-color: #13334A;
	padding: 10px 24px;
	color: white;
	border: none;
	border-radius: 7px;
	moz-border-radius: 7px;
	khtml-border-radius: 7px;
	webkit-border-radius: 7px;
}
</style>

</head>
<body>
	<jsp:include page="../common/logerBar.jsp"></jsp:include>


	<form action="logerChannelChangeInfo.lo" method="post"
		enctype="multipart/form-data" id="fileUploadForm">
		<div class="mainpage">
			<h4 style="margin-left: 120px">
				<strong>채널정보</strong>
			</h4>
			<div id="line"></div>
			<div class="form-group">
				<textarea class="form-control" rows="7" id="chInfo" name="chInfo"
					style="width: 750px; margin-top: 30px; margin-left: 100px;"></textarea>
			</div>


			<br> <br> <br> <br> <br>

			<h4 style="margin-left: 120px">
				<strong>채널 타이틀 이미지변경</strong>
			</h4>
			<div id="line"></div>
			<div class="form-group">
				<input style="margin-left: 100px; margin-top: 30px" type="file"
					name="file3" value="file3" id="file3" />
			</div>
			<button type="submit" id="submit" class="button1">수정</button>
		</div>

	</form>
	<script>
		$(document).ready(function(){
			$("#submit").click(function(){
				   var form = $('#fileUploadForm')[0];
		           var data = new FormData(form);
					
				
				$.ajax({
					url:"logerChannelChangeInfo.lo",
					type:"post",
					  enctype: 'multipart/form-data',
					  contentType: false,
					  processData: false,
					data:data,
					success:function(data){
						console.log("성공!");

					},
					error:function(data){
						console.log("실패!");
					}
				});
			});
		});
			</script>


	<br>
	<Br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>