<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	
%>
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


.table-wrapper {
	margin-left:70px;
	width: 1000px;
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
	border-color: 0;
	border-color: red;
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
	width: 1600px;
	margin-top: 100px;
}

.button1 {
	margin-left:90px;
	background-color: #13334A;
	padding: 10px 24px;
	color: white;
	border: none;
	border-radius: 7px;
	moz-border-radius: 7px;
	khtml-border-radius: 7px;
	webkit-border-radius: 7px;
}

.buttonarea {
	width: 180px;
	margin-left: 1050px;
	margin-top: 20px;
}
</style>
<body>

	<jsp:include page="../common/mainBar.jsp"></jsp:include>

	<div class="mainpage">
		<div class="container">
			<div class="table-wrapper" >
				<div class="table-title">
					<div class="row"></div>

					<table class="table table-bordered">
						<thead>

						</thead>

						<tbody>

							<tr>
								<td><strong>NO</strong></td>
								<td
									style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; width: 500px;">
									<input disabled id="bNo" type="text"
									style="border: none; width: 300px; background: none;"
									value=<c:out value="${result.bNo}" />> <%-- <c:out value="${result.bNo}" /> --%>
								</td>

							</tr>
							<tr>
								<td><strong>Subject</strong></td>
								<td><input disabled id="bNo" type="text"
									style="border: none; width: 300px; background: none;"
									value=<c:out  value="${result.bTitle}" />></td>

							</tr>
							<tr>
								<td id="Writer"><strong>Writer</strong></td>
								<td
									style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; width: 500px;">
									<c:set var="name" value="${result.userNo}" /> <c:if
										test="${name =v0 }" /> <c:out value="관리자" />
								</td>
							</tr>
							<tr>
								<td id="Date"><strong>Date</strong></td>
								<td><c:out value="${result.createDt}" /></td>
							</tr>
							<tr>
								<td colspan="2" align="center"><textarea disabled rows="20"
										cols="150" wrap="soft" id="bcontent" name="bcontent"
										style="border: none; background: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;">
						<c:out value="${result.bcontent}" /></textarea></td>


							</tr>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="buttonarea">

		<button class="button1" type="button"
			onclick="location.href='noticeList.no'">확인</button>

	</div>

	<br>
	<br>



	<jsp:include page="../common/footer.jsp" />

</body>
</html>







