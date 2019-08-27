<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.selectLogerCalculateForm {
	margin-top:150px;
	margin-left:auto;
	margin-right:auto;
	width:800px;
}


.selectLogersupport {
	width:800px;
	border:1px solid black;
	text-align:center;
	margin-bottom:100px;
}

.selectLogersupport th{
	border:1px solid black;
}

.selectLogersupport tr td{
	border:1px solid black;
}

.selectLogerCalculate {
	width:800px;
	border:1px solid black;
	text-align:center;
}

.selectLogerCalculate th {
	border:1px solid black;
}

.selectLogerCalculate tr td {
	border:1px solid black;
}

#calculateBtn {
	margin-top:50px;
	border:1px solid black;
	margin-left:380px;
	background:#F6F6F7;
	padding:5px;
}

</style>
</head>
<body>
<jsp:include page="../common/loger.jsp"></jsp:include>
	<form action="" method="" class="selectLogerCalculateForm">
		<table class="selectLogersupport" align="center">
		<h3 align="left">후원내역</h3>
		<tr><hr></tr>
		<tr><br></tr>
			<tr style="border:1px solid black;">
				<th class="calculate_th">No</th>
				<th class="calculate_th">구분</th>
				<th class="calculate_th">후원자</th>
				<th class="calculate_th">후원금액</th>
				<th class="calculate_th">후원날짜</th>
			</tr>
			
			<tr>
				<td>1</td>
				<td>좋아요</td>
				<td>은주의 쿠킹교실</td>
				<td>3,000원</td>
				<td>2019.08.16</td>
			</tr>
		
		</table>
		
		<table class="selectLogerCalculate" align="center">
		<h3 align="left">정산내역</h3>
		<tr><hr></tr>
		<tr><br></tr>
			<tr style="border:1px solid black;">
				<th class="calculate_th">No</th>
				<th class="calculate_th">정산기간</th>
				<th class="calculate_th">정산금액</th>
				<th class="calculate_th">정산상태</th>
			</tr>
			
			<tr>
				<td>1</td>
				<td>2019.07.16~2019.08.16</td>
				<td>총 119,000원</td>
				<td>승인 대기 또는 지급 완료</td>
			</tr>
			

		</table>
		<div class="calculateBtn">
		<input type="submit" id="calculateBtn" value="정산신청" onclick="">
		</div>
	</form>


</body>
</html>