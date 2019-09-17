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
body {
	color: #666;
	background: #f5f5f5;
	font-family: 'Roboto', sans-serif;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	text-align: center;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
	width: 900px;
	/* text-align:center; */
	margin-bottom: 100px;
}

.selectSupport {
	width: 900px;
	margin-left: 30px;
}

.selectLogerCalculateForm {
	margin-top: 50px;
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 50px;
	width: 900px;
}

.table-wrapper {
	background: #fff;
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

#calculateBtn {
	float: right;
	/* margin-left:210px; */
}

#accountBtn {
	float: right;
}

.selectAccount {
	margin-top: 20px;
	border: none;
	background: #FFF;
}

/* button */
.btn, .btn-two {
	margin: 9px;
}

.btn-gradient {
	margin: 5px;
}

a[class*="btn"] {
	text-decoration: none;
}

input[class*="btn"], button[class*="btn"] {
	border: 0;
}

/* Here you can change the button sizes */
.btn.large, .btn-two.large, .btn-effect.large {
	font-size: 22px;
}

.btn.small, .btn-two.small, .btn-gradient.small, .btn-effect.small {
	font-size: 14px;
}

.btn.mini, .btn-two.mini, .btn-gradient.mini, .btn-effect.mini {
	font-size: 12px;
}

.btn.block, .btn-two.block, .btn-gradient.block, .btn-effect.block {
	display: block;
	width: 60%;
	margin-left: auto;
	margin-right: auto;
	text-align: center !important;
}

.btn-gradient.large {
	font-size: 22px;
}

/* Colors for .btn and .btn-two */
.btn.blue, .btn-two.blue {
	background-color: #7fb1bf;
}

.btn.yellow, .btn-two.yellow {
	background-color: #f0d264;
}

.rounded {
	border-radius: 10px;
}

/* default button style */
.btn {
	position: relative;
	border: 0;
	display: inline-block;
	text-align: center !important;
	color: white;
}

.btn:active {
	top: 4px;
}

/* color classes for .btn */
.btn.blue {
	box-shadow: 0px 4px #74a3b0;
}

.btn.blue:active {
	box-shadow: 0 0 #74a3b0;
	background-color: #709CA8;
}

.btn.yellow {
	box-shadow: 0px 4px 0px #D1B757;
}

.btn.yellow:active {
	box-shadow: 0 0 #ff4c4b;
	background-color: #D6BB59;
}

/* Button two - I have no creativity for names */
.btn-two {
	color: white;
	display: inline-block;
	border: 1px solid rgba(0, 0, 0, 0.21);
	border-bottom-color: rgba(0, 0, 0, 0.34);
	text-shadow: 0 1px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 1px 0 rgba(255, 255, 255, 0.34) inset, 0 2px 0 -1px
		rgba(0, 0, 0, 0.13), 0 3px 0 -1px rgba(0, 0, 0, 0.08), 0 3px 13px -1px
		rgba(0, 0, 0, 0.21);
}

.btn-two:active {
	top: 1px;
	border-color: rgba(0, 0, 0, 0.34) rgba(0, 0, 0, 0.21)
		rgba(0, 0, 0, 0.21);
	box-shadow: 0 1px 0 rgba(255, 255, 255, 0.89), 0 1px rgba(0, 0, 0, 0.05)
		inset;
	position: relative;
}
/* 3D Button */
.btn-3d {
	position: relative;
	display: inline-block;
	font-size: 22px;
	color: white !important;
	margin: 20px 10px 10px;
	border-radius: 6px;
	text-align: center !important;
	transition: top .01s linear;
	text-shadow: 0 1px 0 rgba(0, 0, 0, 0.15);
}

.btn-3d.yellow:hover {
	background-color: #F0D264;
}

.btn-3d.blue:hover {
	background-color: #699DD1;
}

.btn-3d:active {
	top: 9px;
}

/* 3D button colors */
.btn-3d.yellow {
	background-color: #F0D264;
	box-shadow: 0 0 0 1px #F0D264 inset, 0 0 0 2px rgba(255, 255, 255, 0.15)
		inset, 0 8px 0 0 rgba(196, 172, 83, .7), 0 8px 0 1px rgba(0, 0, 0, .4),
		0 8px 8px 1px rgba(0, 0, 0, 0.5);
}

.btn-3d.yellow:active {
	box-shadow: 0 0 0 1px #F0D264 inset, 0 0 0 2px rgba(255, 255, 255, 0.15)
		inset, 0 0 0 1px rgba(0, 0, 0, 0.4);
}

.btn-3d.blue {
	background-color: #6DA2D9;
	box-shadow: 0 0 0 1px #6698cb inset, 0 0 0 2px rgba(255, 255, 255, 0.15)
		inset, 0 8px 0 0 rgba(110, 164, 219, .7), 0 8px 0 1px
		rgba(0, 0, 0, .4), 0 8px 8px 1px rgba(0, 0, 0, 0.5);
}

.btn-3d.blue:active {
	box-shadow: 0 0 0 1px #6191C2 inset, 0 0 0 2px rgba(255, 255, 255, 0.15)
		inset, 0 0 0 1px rgba(0, 0, 0, 0.4);
}
/* Gradient buttons */
.btn-gradient {
	text-decoration: none;
	color: white !important;
	padding: 5px 10px !important; /* css버튼 크기 */
	display: inline-block;
	position: relative;
	border: 1px solid rgba(0, 0, 0, 0.21);
	border-bottom: 4px solid rgba(0, 0, 0, 0.21);
	border-radius: 4px;
	text-shadow: 0 1px 0 rgba(0, 0, 0, 0.15);
}

.btn-gradient.blue {
	background: rgba(102, 152, 203, 1);
	background: -moz-linear-gradient(top, rgba(102, 152, 203, 1) 0%,
		rgba(92, 138, 184, 1) 100%);
	background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(102, 152,
		203, 1)), color-stop(100%, rgba(92, 138, 184, 1)));
	background: -webkit-linear-gradient(top, rgba(102, 152, 203, 1) 0%,
		rgba(92, 138, 184, 1) 100%);
	background: -o-linear-gradient(top, rgba(102, 152, 203, 1) 0%,
		rgba(92, 138, 184, 1) 100%);
	background: -ms-linear-gradient(top, rgba(102, 152, 203, 1) 0%,
		rgba(92, 138, 184, 1) 100%);
	background: linear-gradient(to bottom, rgba(102, 152, 203, 1) 0%,
		rgba(92, 138, 184, 1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#6698cb',
		endColorstr='#5c8ab8', GradientType=0);
}

.btn-gradient.yellow {
	background: rgba(240, 210, 100, 1);
	background: -webkit-gradient(linear, 0 0, 0 100%, from(rgba(240, 210, 100, 1)),
		to(rgba(229, 201, 96, 1)));
	background: -webkit-linear-gradient(rgba(240, 210, 100, 1) 0%,
		rgba(229, 201, 96, 1) 100%);
	background: -moz-linear-gradient(rgba(240, 210, 100, 1) 0%,
		rgba(229, 201, 96, 1) 100%);
	background: -o-linear-gradient(rgba(240, 210, 100, 1) 0%,
		rgba(229, 201, 96, 1) 100%);
	background: linear-gradient(rgba(240, 210, 100, 1) 0%,
		rgba(229, 201, 96, 1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f0d264',
		endColorstr='#e5c960', GradientType=0);
}

.btn-gradient.yellow:active {
	background: #DBC05B;
}

.btn-gradient.blue:active {
	background: #608FBF;
}
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<div class="selectSupport">
		<form action="" method="post" class="selectLogerCalculateForm" float="left;">
			<div class="table-wrapper">
				<table class="table table-striped" id="logerTable">
					<tr>
						<h4>
							<b>후원내역</b>
						</h4>
					</tr>
					<tr>
						<hr>
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
				
				<button type="button" class="cal_btn btn-gradient yellow mini" id="accountBtn" onclick="logerCalculate();" style="font-size: 13px; margin-top: 16px;">취소</button>
				<button type="button" class="cal_btn btn-gradient yellow mini" id="calculateBtn" style="font-size: 13px; margin-top: 16px;">정산신청</button>
		
				
				
				
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