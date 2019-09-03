<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>

</head>
<style>
.mainpage {
	width: 1024px;
	/* border: 1px solid black; */
	margin-top: 80px;
}

.button1 {
	background-color: #f08080;
	padding: 6px 24px;
	font-color: white;
	border: none;
}

.buttonarea {
	width: 180px;
	margin-left: 950px;
	margin-top: 30px;
}

</style>

<body>
	<jsp:include page="../common/adminBar.jsp"></jsp:include>
	<form action="" method="post">
		<div class="mainpage">
			<div class="container">
				<div class="table-wrapper">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>No</th>
								<th>Category</th>
								<th>Subject</th>
								<th>Writer</th>
								<th>Date</th>
							</tr>
						</thead>
						<tbody>
							<tr onclick="location.href='adminNoticeRevise.ad'">
								<td>1</td>
								<td>Thomas Hardy</td>
								<td>89 Chiaroscuro Rd.</td>
								<td>Portland</td>
								<td>97219</td>

							</tr>
							<tr">
								<td>2</td>
								<td>Maria Anders</td>
								<td>Obere Str. 57</td>
								<td>Berlin</td>
								<td>12209</td>

							</tr>
							<tr >
								<td>3</td>
								<td>Fran Wilson</td>
								<td>C/ Araquil, 67</td>
								<td>Madrid</td>
								<td>28023</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</form>

	<div class="buttonarea">
		<button class="button1" onclick="location.href='adminNoticeWrite.ad'">작성</button>
		<button class="button1">취소</button>
	</div>
	<br>
	<br>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>