<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<style type="text/css">
body {
	color: black;
	background: white;
	font-family: 'Open Sans', sans-serif;
}

.table-wrapper {
	width: 700px;
	margin: 30px auto;
	background: white;
	padding: 20px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-title {
	padding-bottom: 10px;
	margin: 0 0 10px;
}

.table-title h2 {
	margin: 6px 0 0;
	font-size: 22px;
}

.table-title .add-new {
	float: right;
	height: 30px;
	font-weight: bold;
	font-size: 12px;
	text-shadow: none;
	min-width: 100px;
	border-radius: 50px;
	line-height: 13px;
}

.table-title .add-new i {
	margin-right: 4px;
}

table.table {
	table-layout: fixed;
}

table.table tr th, table.table tr td {
	border-color: gray;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table th:last-child {
	width: 100px;
}

table.table td a {
	cursor: pointer;
	display: inline-block;
	margin: 0 5px;
	min-width: 24px;
}

table.table td a.add {
	color: #27C46B;
}

table.table td a.edit {
	color: #FFC107;
}

table.table td a.delete {
	color: #E34724;
}

table.table td i {
	font-size: 19px;
}

table.table td a.add i {
	font-size: 24px;
	margin-right: -1px;
	position: relative;
	top: 3px;
}

table.table .form-control {
	height: 32px;
	line-height: 32px;
	box-shadow: none;
	border-radius: 2px;
}

table.table .form-control.error {
	border-color: #f50000;
}

table.table td .add {
	display: none;
}

#subject {
	width: 100px;
}
.mainpage {
	width:1600px;
	margin-top:-150px;
}
.button1 {
	margin-left:1100px;
	background-color: #13334A;
	padding: 10px 24px;
	color: white;
	border: none;
	border-radius: 7px;
	moz-border-radius: 7px;
	khtml-border-radius: 7px;
	webkit-border-radius: 7px;
}
.button2 {
	margin-left:50px;
	background-color: #A8B7BC ;
	padding: 10px 24px;
	color: white;
	border: none;
	border-radius: 7px;
	moz-border-radius: 7px;
	khtml-border-radius: 7px;
	webkit-border-radius: 7px;
}
</style>
<body>

	<jsp:include page="../common/adminBar.jsp"></jsp:include>
	<form action="noticeWriteAdmin.ad" method="post">
	<div class="mainpage">
		<div class="container">
			<!-- <div class="table-wrapper">
				<div class="table-title">
					<div class="row"></div>
				</div>
			</div> -->
			<table class="table table-bordered">
				<thead>

				</thead>
				<tbody>
				
					<tr>
						<td id="subject"><strong>Subject</strong></td>
						<td><input type="text" placeholder="제목"   id="bTitle" name="bTitle"
						style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; width:500px;" ></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><textarea rows = "20"  cols="150"  id="bcontent" name="bcontent"
						style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"></textarea></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="buttonarea">
		<button class="button1" type="submit" >작성</button>
		<button class="button2">취소</button>
	</div>
	</form>
	<br><br>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>