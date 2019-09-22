<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Simple Data Table</title>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
<style type="text/css">

table.table tr th, table.table tr td {
	border-color:#A8B7BC;
        text-align:center;
        margin:0 auto;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background:none;
	border-color:#A8B7BC;
    width:100%;
    margin:0 auto;
	/* text-align:center; */
	margin-bottom:100px;
}

.selectSupport {
	width:90%;
	margin-left:30px;
}

.selectLogerCalculateForm {
	margin-top:50px;
	margin-left:auto;
	margin-right:auto;
	margin-bottom:50px;
	width:90%;
}

.table-wrapper {
	padding: 20px;
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

.allBtn {
	float: right;
	width:100px;
	margin-top:50px;
	border:1px solid #13334A;
	border-radius:5px;
	margin-left:5px;
	background:#13334A;
	padding:8px;
	color:#FFF;
}

.btn-gradient {
	width:70px;
	margin-bottom:10px;
	border:1px solid #13334A;
	border-radius:5px;
	margin-left:5px;
	background:#13334A;
	padding:3px;
	color:#FFF;
}


#accountBtn {
	float: right;
}

.selectAccount {
	margin-top: 20px;
	border: none;
	background: #FFF;
}



</style>
</head>
<body>
	<jsp:include page="../common/logerBar.jsp"></jsp:include>
	<div class="selectSupport">
		<form action="" method="post" class="selectLogerCalculateForm" float="left;">
			<div class="table-wrapper">
				<table class="table table-striped" id="logerTable">
					<tr>
						<h4><b>후원내역</b></h4>
					</tr>
					<tr>
						<hr style="border-color:#A8B7BC; background:#A8B7BC; color:#A8B7BC;">
					</tr>
					<div style="float: right;">
						<label>기간</label>&nbsp; <span class="chkbox"> <input
							type="button" name="dateType" id="dateType1" value="1개월"
							class="btn-gradient yellow mini" style="font-size: 14px;" /> <label
							for="dateType1"></label></span> <span class="chkbox"> <input
							type="button" name="dateType" id="dateType2" value="2개월"
							class="btn-gradient yellow mini" style="font-size: 14px;" /> <label
							for="dateType2"></label></span> <span class="chkbox"> <input
							type="button" name="dateType" id="dateType3" value="3개월"
							class="btn-gradient yellow mini" style="font-size: 14px;" /> <label
							for="dateType3"></label>
						</span> <input type="date" id="monthDate" name="monthDate" /> <input
							type="date" id="todayDate" name="todayDate" /> <input
							type="button" name="selectDate" id="selectDate" value="조회"
							class="btn-gradient yellow mini" style="font-size: 14px;">
					</div>
					<tr><br></tr>
					<tr><br></tr>
					<thead>
						<tr>
							<th class="calculate_th">No</th>
							<th class="calculate_th">구분</th>
							<th class="calculate_th">후원자</th>
							<th class="calculate_th">후원금액</th>
							<th class="calculate_th">후원날짜</th>
						</tr>
					</thead>
					<tbody class="test">
						 <c:forEach items="${dateList}" var="s">
							<tr>
								<td><c:out value="${s.nNo}" /></td>
								<td><c:out value="${s.supTY}" /></td>
								<td><c:out value="${s.nickname}" /></td>
								<td><fmt:formatNumber value="${s.supPrice}" pattern="#,###,###,###" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${s.supSTDT}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<button type="button" class="allBtn" id="accountBtn" onclick="logerCalculate();" style="font-size: 13px; margin-top: 16px;">취소</button>
				<button type="button" class="allBtn" id="calculateBtn" style="font-size: 13px; margin-top: 16px;">정산신청</button>
		
				
				
				
			</div>
		</form>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
<script>
	
		document.getElementById('todayDate').value = new Date().toISOString().substring(0, 10);
	
		$(document).on("click",".class",function() {
			});
		
		$(function(){
			$("#dateType1").click(function(){
				
				var day = new Date();
				var mon = new Date();
				var monthOfYear = mon.getMonth();
				mon.setMonth(monthOfYear - 1);
				document.getElementById('monthDate').value = mon.toISOString().substring(0, 10);
			});
				
			
		$("#dateType2").click(function(){
				
				var day = new Date();
				var mon = new Date();
				var monthOfYear = mon.getMonth();
				mon.setMonth(monthOfYear - 2);
				document.getElementById('monthDate').value = mon.toISOString().substring(0, 10);
			});
		
		$("#dateType3").click(function(){
			
			var day = new Date();
			var mon = new Date();
			var monthOfYear = mon.getMonth();
			mon.setMonth(monthOfYear - 3);
			document.getElementById('monthDate').value = mon.toISOString().substring(0, 10);
		});

		$("#selectDate").click(function(){
    		var monthDate =$("#monthDate").val();
    		var todayDate = $("#todayDate").val();
    		$.ajax({
    			url:"datepic.lo",
    			data:{"monthDate":monthDate,"todayDate":todayDate},
    			type:"post",
    			success:function(data){
    				console.log('succ');
    				console.log(data);
    				var $logerTable = $("#logerTable .test");
    				var $test = $(".test");
    				/* $logerTable.hide(); */
    				$logerTable.html("");
    				/* console.log($logerTable); */
    				/* $test.hide(); */
    				/* $logerTable[0].html("");
    				console.log($logerTable);
    				console.log($test); */
    				/* $test.html(""); */
    				/* var $pagingDiv1 = $("#pagingArea div"); */
    				 for(var i = 0; i < data["dateList"].length; i++){ 
    					var $tr = $("<tr>");
    					var $nNo = $("<td>").text(data["dateList"][i].nNo);
    					var $supTY = $("<td>").text(data["dateList"][i].supTY);
    					var $nickname = $("<td>").text(data["dateList"][i].nickname);
    					var $supPrice = $("<td>").text(numeral(data["dateList"][i].supPrice).format('0,0')+"원");
    					var $supSTDT = $("<td>").text(data["dateList"][i].supSTDT);
    					var $td = $("<td>");
    					var result = $supSTDT.text().substr(0,10);
    					$td.append(result)
    					$tr.append($nNo);
    					$tr.append($supTY);
    					$tr.append($nickname);
    					$tr.append($supPrice);
    					$tr.append($td);
    					$logerTable.append($tr); 
    				 } 
    			},
    			error : function(){
    				console.log('error');
    			}
    	})
	 });$("#selectDate").click(function(){
 		var monthDate =$("#monthDate").val();
		var todayDate = $("#todayDate").val();
		$.ajax({
			url:"datepic.lo",
			data:{"monthDate":monthDate,"todayDate":todayDate},
			type:"post",
			success:function(data){
				console.log('succ');
				console.log(data);
				var $logerTable = $("#logerTable .test");
				var $test = $(".test");
				/* $logerTable.hide(); */
				$logerTable.html("");
				/* console.log($logerTable); */
				/* $test.hide(); */
				/* $logerTable[0].html("");
				console.log($logerTable);
				console.log($test); */
				/* $test.html(""); */
				/* var $pagingDiv1 = $("#pagingArea div"); */
				 for(var i = 0; i < data["dateList"].length; i++){ 
					var $tr = $("<tr>");
					var $nNo = $("<td>").text(data["dateList"][i].nNo);
					var $supTY = $("<td>").text(data["dateList"][i].supTY);
					var $nickname = $("<td>").text(data["dateList"][i].nickname);
					var $supPrice = $("<td>").text(numeral(data["dateList"][i].supPrice).format('0,0')+"원");
					var $supSTDT = $("<td>").text(data["dateList"][i].supSTDT);
					var $td = $("<td>");
					var result = $supSTDT.text().substr(0,10);
					$td.append(result)
					$tr.append($nNo);
					$tr.append($supTY);
					$tr.append($nickname);
					$tr.append($supPrice);
					$tr.append($td);
					$logerTable.append($tr); 
				 } 
			},
			error : function(){
				console.log('error');
			}
	})
 });
		 
		 
		 function logerCalculate(){
				location.href="logerCalculate.lo";
			};
		 
		 $("#calculateBtn").click(function(){
	    		var monthDate =$("#monthDate").val();
	    		var todayDate = $("#todayDate").val();
	    		
	    		location.href="logerCalculateApply.lo?monthDate="+monthDate+"&&todayDate="+todayDate;
	    		/* 
	    		$.ajax({
	    			url:"logerCalculateApply.lo",
	    			data:{"monthDate":monthDate,"todayDate":todayDate},
	    			type:"post",
	    			success:function(data){
	    				alert("정산 신청이 완료되었습니다.");
	    			},
	    			error : function(){
	    				alert("알 수 없는 에러로 정산 신청이 불가능 합니다.");
	    			}
	    	}) */
		 });
			
		});
</script>				
</html>