<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.selectSupport {
	width:700px;
	margin-left:30px;
}
.selectLogerCalculateForm {
	margin-top:50px;
	margin-left:auto;
	margin-right:auto;
	margin-bottom:150px;
	width:700px;
}
.selectLogerNotice {
	width:210px;
	height:150px; 
	float:right; 
	margin-right:35px;
	text-align:center;
}

.selectLogersupport {
	width:700px;
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
	width:700px;
	border:1px solid black;
	text-align:center;
}

.selectLogerCalculate th {
	border:1px solid black;
}

.selectLogerCalculate tr td {
	border:1px solid black;
}

.calculateBtn {
	text-align:center;
}

.cal_btn {
	margin-top:50px;
	border:1px solid black;
	background:#F6F6F7;
	padding:5px;
}

.selectAccount {
	margin-top:50px;
	border:none;
	background:#F6F6F7;
}

</style>
</head>
<body>
<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<div class="selectSupport" >
	<form action="" method="" class="selectLogerCalculateForm" float="left;">
		<table class="selectLogersupport" align="center">
		<h3 align="left">후원내역</h3>
		<tr><hr></tr>
		<div style="float:right;"><label>기간</label>&nbsp;<input type="Date" id="cal_dt" value="" float="right;">-
		<input type="Date" id="cal_dt" value="" float="right;"></div>
		<tr><br></tr>
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
		
		<div class="calculateBtn">
		<input type="reset" class="cal_btn" id="cancelBtn" value="취소" onclick="">
		<input type="submit" class="cal_btn" id="calculateBtn" value="정산신청" onclick="">
		</div>
	</form>
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>