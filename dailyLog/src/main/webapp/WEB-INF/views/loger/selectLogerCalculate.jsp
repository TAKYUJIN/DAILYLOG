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
<style type="text/css">
body {
	color: #666;
	background: #f5f5f5;
	font-family: 'Roboto', sans-serif;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
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
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<div class="selectSupport">
		<form action="" method="" class="selectLogerCalculateForm"
			float="left;">
			<div class="table-wrapper">
				<table class="table table-striped">
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
							onclick="month1();" /> <label for="dateType1"></label>
						</span> <span class="chkbox"> <input type="button" name="dateType"
							id="dateType2" value="2개월" onclick="month2();" /> <label
							for="dateType2"></label>
						</span> <span class="chkbox"> <input type="button" name="dateType"
							id="dateType3" value="3개월" onclick="month3();" /> <label
							for="dateType3"></label>
						</span>

						<script>
		
		function month1(){
			var day = new Date();
			var mon1 = new Date();
			
			   var monthOfYear = mon1.getMonth();
			   mon1.setMonth(monthOfYear - 1);
		           
           location.href='datepic.lo?mon1='+mon1+'&&day='+day;

			
		};
		
		function month2(){
			var day = new Date();
			var mon2 = new Date();
			
			   var monthOfYear = mon2.getMonth();
			   mon2.setMonth(monthOfYear - 2);
		           
           location.href='datepic.lo?mon2='+mon2+'&&day='+day;

			
		};
		
		function month3(){
			var day = new Date();
			var mon3 = new Date();
			
			   var monthOfYear = mon3.getMonth();
			   mon3.setMonth(monthOfYear - 3);
		           
           /* location.href='datepic.lo?mon3='+mon3+'&&day='+day; */

			
		};
		
		function search(){
			
			location.href='datepic.lo?mon3='+mon3+'&&day='day;
		}
			
		</script>

						</span> <span> <input type="button" name="selectDate"
							id="selectDate" onclick="search();" value="조회">
						</span>

						<%-- <span class="dset">
                   <input type="date" class="datepicker inpType" name="startdate" id="searchStartDate" style="border:1px solid #ccc;" value="${adminBuildEnergyVo.startdate }" >               </span>
               <span class="demi">~</span>
               <!-- 종료일 -->
               <span class="dset">
                 <input type="date" class="datepicker inpType" name="enddate" id="searchEndDate" style="border:1px solid #ccc;" value="${adminBuildEnergyVo.enddate }" >
               </span>
               <span>
                   	<input type="button" name="selectDate" id="selectDate"  onclick="search();" value="조회"> 
                   </span>--%>

						<!-- <input type="text" id="datepicker" float="right;">-
			<input type="text" id="datepicker2" float="right;"> -->
					</div>
					<tr>
						<br>
					</tr>
					<tr>
						<br>
					</tr>
					<thead>
						<tr>
							<th class="calculate_th">No</th>
							<th class="calculate_th">구분</th>
							<th class="calculate_th">후원자</th>
							<th class="calculate_th">후원금액</th>
							<th class="calculate_th">후원날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${sList}" var="s">
							<tr>
								<td><c:out value="${s.nNo}" /></td>
								<td><c:out value="${s.supTY}" /></td>
								<td><c:out value="${s.nickname}" /></td>
								<td><fmt:formatNumber value="${s.supPrice}"
										pattern="#,###,###,###" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${s.supDT}" /></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>

				<!-- 예비용 페이징 ui -->
				<div class="text-center">
					<ul class="pagination justify-content-center">
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
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
<!-- <script>
function search(){
	$(function(){
		var start =$("input[id='searchStartDate']").val();
		var end = $("input[id='searchEndDate']").val();
		$.ajax({
			url:"orderDate.mp",
			data:{"start":start,"end":end},
			type:"post",
			success:function(data){
				var $dateTbody = $(".dateBoard tbody");
				var $pagingDiv1 = $("#pagingArea div");
				$dateTbody.html(""); 
				$pagingDiv1.html("");
				for(var i = 0; i < data["dateList"].length; i++){
					var $tr = $("<tr class='od'>");
					var $ono = $("<td>").text(data["dateList"][i].ono);
					var $oDate = $("<td>").text(data["dateList"][i].oDate);
					var $pname = $("<td>").text(data["dateList"][i].pname);
					var $br = $("</br>");
					var $btn_od = $("<button class='btn_od'>").text("주문상세");
					var $pstatus = $("<td>").text(data["dateList"][i].pstatus);
					var ono1 = data["dateList"][i].ono;
					 $btn_od.attr("onclick",'searchDate('+ono1+')');
					$tr.append($ono);
					$tr.append($oDate);
					$tr.append($pname);
					$pname.append($br);
					$pname.append($btn_od);
					$tr.append($pstatus);
					$dateTbody.append($tr);
				}

</script> -->

</html>