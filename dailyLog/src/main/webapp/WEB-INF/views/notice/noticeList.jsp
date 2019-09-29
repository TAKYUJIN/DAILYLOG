<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WITH</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	text-align: center;
	/* backgroudn:white; */
	/* text-align:center; */
}

table.table-striped tbody tr:nth-of-type(odd) {
	
}
.main{
	margin-left:250px;
}
.noticeList {
	margin-top: 50px;
	margin-left: 100px;
	width: 1000px;
	margin-bottom: 50px;
}

.table-wrapper {
	width: 800px;
	background: none;
	padding: 20px;
	margin: 30px 0;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.pagination {
	margin: 10px 0 5px;
}

.pagination li a {
	border: none;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 4px !important;
	text-align: center;
	padding: 0;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a, .pagination li.active a.page-link {
	background: #59bdb3;
}

.pagination li.active a:hover {
	background: #45aba0;
}

.pagination li:first-child a, .pagination li:last-child a {
	padding: 0 10px;
}

.pagination li.disabled a {
	color: #ccc;
}

.pagination li i {
	font-size: 17px;
	position: relative;
	top: 1px;
	margin: 0 2px;
}

.page-title1 {
	margin: 3rem 0 3rem 1rem;
	font-family: 'Varela Round', sans-serif;
	position: relative;
}

.page-title1::after {
	content: "";
	width: 90px;
	position: absolute;
	height: 3px;
	border-radius: 1px;
	background: #192466; /* #73bb2b 원래 색 */
	left: 0;
	bottom: -15px;
}

.page-title2 {
	margin: 3rem 0 3rem 1rem;
	font-family: 'Varela Round', sans-serif;
	position: relative;
}

.page-title2::after {
	content: "";
	width: 110px;
	position: absolute;
	height: 3px;
	border-radius: 1px;
	background: #FBC52C; /* #73bb2b 원래 색 */
	left: 0;
	bottom: -15px;
}

.page-title3 {
	margin: 3rem 0 3rem 1rem;
	font-family: 'Varela Round', sans-serif;
	position: relative;
}

.page-title3::after {
	content: "";
	width: 150px;
	position: absolute;
	height: 3px;
	border-radius: 1px;
	background: #192466; /* #73bb2b 원래 색 */
	left: 0;
	bottom: -15px;
}
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<div class="main">
		<div class="noticeList">
			<div class="col-lg-15">
				<a href="noticeMain.no" class="noticeLink"
					style="float: left; width: 25%;"><h1 class="page-title1">FAQs</h1></a>
				<a href="noticeList.no" class="noticeLink"
					style="float: left; width: 25%;"><h1 class="page-title2">Notice</h1></a>
				<a href="noticeEmail.no" class="noticeLink"
					style="float: left; width: 25%;"><h1 class="page-title3">question</h1></a>
			</div>
			<div class="table-wrapper">

				<table class="table table-striped">
					<thead>
						<tr>
							<th>No</th>
							<th>제목</th>
							<th>날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${showNoticeList}" var="n">
							<tr onclick="noticeDetail(${n.bNo});">
								<td><c:out value="${n.bNo}" /></td>
								<td><c:out value="${n.bTitle}" /></td>
								<td><c:out value="${n.createDt}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="text-center">
				<!-- 	<ul class="pagination justify-content-center">
						<li class="page-item disabled"><a href="#"><i
								class="fa fa-long-arrow-left"></i> Previous</a></li>
						<li class="page-item"><a href="#" class="page-link">1</a></li>
						<li class="page-item"><a href="#" class="page-link">2</a></li>
						<li class="page-item active"><a href="#" class="page-link">3</a></li>
						<li class="page-item"><a href="#" class="page-link">4</a></li>
						<li class="page-item"><a href="#" class="page-link">5</a></li>
						<li class="page-item"><a href="#" class="page-link">Next
								<i class="fa fa-long-arrow-right"></i>
						</a></li>
					</ul>
				</div> -->
			</div>
		</div>
	</div>
	<script>
		function noticeDetail(bNo){
		
			location.href='noticeDetail.no?bNo='+bNo;
			
		}
	</script>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
