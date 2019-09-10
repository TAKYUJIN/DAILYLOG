<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
								<th>Subject</th>
								<th>Writer</th>
								<th>views</th>
								<th>Date</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${adminNoticeList}" var="n">
							<tr onclick="noticeResult(${n.bNo});">
							 <td><c:out value="${n.bNo}"/></td>			
								<td><c:out value="${n.bTitle}"/></td>	 	
							<td><c:set var="name" value="${n.userNo}" />
							<c:if test="${name =v0 }"/>
  							  <c:out value="관리자" /></td>
								<td><c:out value="${n.bcount}"/></td>								
								<td><c:out value="${n.createDt}"/></td>
							</tr>
							</c:forEach>
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
	<script>
		function noticeResult(bNo){
		
			location.href='adminNoticeRevise.ad?bNo='+bNo;
			
		}
	</script>
	
	<jsp:include page="../common/footer.jsp" />
</body>
</html>