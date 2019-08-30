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

.cal_btn {
	margin-top:50px;
	border:1px solid black;
	background:#F6F6F7;
	padding:5px;
}

#calculateBtn {
	float:right;
	/* margin-left:210px; */
}

/* #calculateBtn {
	margin-top:50px;
	border:1px solid black;
	margin-left:330px;
	background:#F6F6F7;
	padding:5px;
} */

.selectAccount {
	margin-top:50px;
	border:none;
	background:#F6F6F7;
}

</style>
</head>
<body>
<jsp:include page="../common/logerBar.jsp"></jsp:include>
	<div class="selectLogerNotice">
		<h3>정산 공지</h3><br>
		<p style="font-size:14px;">회원님이 신고를 많이 받을 경우<br>블랙리스트가 되었을 경우에는<br>정산을 받을 수 없으므로<br>이를 유의해 주시기를 바랍니다.</p>
		<p style="color:red; font-size:12px;">*자세한 내용은 공지사항을 참고해 주세요</p>
	</div>
	<div class="selectSupport" >
	<form action="" method="" class="selectLogerCalculateForm" float="left;">
		<table class="selectLogersupport" align="center">
		<h4 align="left">후원내역</h4>
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
		<h4 align="left">정산내역</h4>
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
		<b><input type="text" class="selectAccount" value="현재 계좌" style="width:70px;"></b>
		<input type="text" class="selectAccount" value="우리은행" style="width:70px;">
		<input type="text" class="selectAccount" value="1002-000-000000" style="width:130px;">
		<input type="text" class="selectAccount" value="정은주" style="width:50px;">
		<input type="button" class="cal_btn" id="accountBtn" value="계좌변경" onclick="">
		<input type="submit" class="cal_btn" id="calculateBtn" value="정산신청" onclick="">
		</div>
	</form>
</div>
<%-- <jsp:include page="../common/footer.jsp"></jsp:include> --%>
</body>
</html>