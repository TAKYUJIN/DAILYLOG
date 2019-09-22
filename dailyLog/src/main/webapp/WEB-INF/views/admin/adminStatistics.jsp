<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<style>
	#statisTable {
		border:1px solid black;
	}
</style>
</head>
<body>
<jsp:include page="../common/adminBar.jsp"></jsp:include>
<div class="adminStatisticsDiv">
	<table id="statisTable">
		<tr>
			<th>구분</th>
			<th>기간</th>
			<th>매출액</th>
			<th>비고</th>
		</tr>
		
		<tr>
			<td rowspan="7">상반기</td>
		</tr>
		
		<tr>
			<td>1월</td>
			<td>1월 매출액</td>
			<td></td>
		</tr>
		<tr>
			<td>2월</td>
			<td>2월 매출액</td>
			<td></td>
		</tr>
		<tr>
			<td>3월</td>
			<td>3월 매출액</td>
			<td></td>
		</tr>
		<tr>
			<td>4월</td>
			<td>4월 매출액</td>
			<td></td>
		</tr>
		<tr>
			<td>5월</td>
			<td>5월 매출액</td>
			<td></td>
		</tr>
		<tr>
			<td>6월</td>
			<td>6월 매출액</td>
			<td></td>
		</tr>
		<tr>
			<td rowspan="7">하반기</td>
		</tr>
		
		<tr>
			<td>7월</td>
			<td>7월 매출액</td>
			<td></td>
		</tr>
		<tr>
			<td>8월</td>
			<td>8월 매출액</td>
			<td></td>
		</tr>
		<tr>
			<td>9월</td>
			<td>9월 매출액</td>
			<td></td>
		</tr>
		<tr>
			<td>10월</td>
			<td>10월 매출액</td>
			<td></td>
		</tr>
		<tr>
			<td>11월</td>
			<td>11월 매출액</td>
			<td></td>
		</tr>
		<tr>
			<td>12월</td>
			<td>12월 매출액</td>
			<td></td>
		</tr>
	</table>
</div>
<jsp:include page="../common/footer.jsp"></jsp:include> 
</body>
</html>