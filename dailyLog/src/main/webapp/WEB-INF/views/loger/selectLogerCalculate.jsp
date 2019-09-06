<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Simple Data Table</title>
<!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <!-- datepicker 한국어로 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>


<script>

$(document).ready(function() {

    var now = new Date();
    var firstDate, lastDate;

    firstDate = new Date(now.getFullYear(),now.getMonth(),1);
    lastDate = new Date(now.getFullYear(),now.getMonth()+1,0);

    $('#startdate').val($.datepicker.formatDate('yy-mm-dd', firstDate));
    $('#enddate').val($.datepicker.formatDate('yy-mm-dd', lastDate));

    // Datepicker
    $(".datepicker").datepicker({
        dateFormat : 'yy-mm-dd',
//         buttonImage : '/images/datepicker.png',
        buttonImageOnly : true,
        changeMonth : true, // 월선택 select box 표시 (기본은 false)
        dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        changeYear : true, // 년선택 selectbox 표시 (기본은 false)
        showButtonPanel : true, // 하단 today, done  버튼기능 추가 표시 (기본은 false)
        currentText: '오늘 날짜',
        closeText: '닫기',
        onClose : function ( selectedDate ) {

            var eleId = $(this).attr("id");
            var optionName = "";

            if(eleId.indexOf("StartDate") > 0) {
                eleId = eleId.replace("StartDate", "EndDate");
                optionName = "minDate";
            } else {
                eleId = eleId.replace("EndDate", "StartDate");
                optionName = "maxDate";
            }

            $("#"+eleId).datepicker( "option", optionName, selectedDate );
            $(".searchDate").find(".chkbox2").removeClass("on");
        }
    });

        $('#searchStartDate').datepicker("option","onClose", function( selectedDate ) {
            // 시작일 datepicker가 닫힐때
            // 종료일의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
            $("#searchEndDate").datepicker( "option", "minDate", selectedDate );
            $(".searchDate").find(".chkbox2").removeClass("on");
        });


        //종료일.
        $('#searchEndDate').datepicker("option","onClose", function( selectedDate ) {
            // 종료일 datepicker가 닫힐때
            // 시작일의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정
            $("#searchStartDate").datepicker( "option", "maxDate", selectedDate );
            $(".searchDate").find(".chkbox2").removeClass("on");
        });

        $('#searchEndDate').datepicker("option","onSelect", function( selectedDate ) {
            // 종료일 datepicker가 닫힐때
            // 시작일의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정
            $("#searchStartDate").datepicker( "option", "maxDate", selectedDate );
            $(".searchDate").find(".chkbox2").removeClass("on");

          /*   var f = document.frm;
            $(".adminbuildenergyno").remove(); //name값이 다수여서 지워여야함
            f.submit(); */
        });


/*         $(".dateclick").dateclick();    // DateClick
        $(".searchDate").schDate();        // searchDate */

    });

    // Search Date

    $.fn.schDate = function() {
       var $obj = $(this);
       /* var $chk = $obj.find("input[type=radio]"); */
       $("#dateType3").click(function(){
       var d1 = $(this).parent().siblings().eq(0).text();
    	  $("#dateType4").parent(".chkbox2").removeClass("on");
    	  $("#dateType5").parent(".chkbox2").removeClass("on");
    	  $("#dateType3").parent(".chkbox2").addClass("on");
       });
       $("#dateType4").click(function(){
     	  $("#dateType3").parent(".chkbox2").removeClass("on");
     	  $("#dateType5").parent(".chkbox2").removeClass("on");
     	  $("#dateType4").parent(".chkbox2").addClass("on");
        });
       $("#dateType5").click(function(){
      	  $("#dateType3").parent(".chkbox2").removeClass("on");
      	  $("#dateType4").parent(".chkbox2").removeClass("on");
      	  $("#dateType5").parent(".chkbox2").addClass("on");
         });

       /* $chk.click(function() {
           $('input:not(:checked)').parent(".chkbox2").removeClass("on");
           $('input:checked').parent(".chkbox2").addClass("on");
       }); */
    }

    // DateClick
    jQuery.fn.dateclick = function() {
       var $obj = $(this);
       $obj.click(function() {
           $(this).parent().find("input").focus();
       });
    }

    function setSearchDate(start) {

       var num = start.substring(0, 1);
       var str = start.substring(1, 2);

       var today = new Date();

       //var year = today.getFullYear();
       //var month = today.getMonth() + 1;
       //var day = today.getDate();

       var endDate = $.datepicker.formatDate('yy-mm-dd', today);
       $('#searchEndDate').val(endDate);

       if(str == 'd'){
           today.setDate(today.getDate() - num);
       }else if (str == 'w'){
           today.setDate(today.getDate() - (num*7));
       }else if (str == 'm'){
           today.setMonth(today.getMonth() - num);
           today.setDate(today.getDate() + 1);
       }

       var startDate = $.datepicker.formatDate('yy-mm-dd', today);
       $('#searchStartDate').val(startDate);

       // 종료일은 시작일 이전 날짜 선택하지 못하도록 비활성화
       $("#searchEndDate").datepicker("option", "minDate", startDate);

       // 시작일은 종료일 이후 날짜 선택하지 못하도록 비활성화
       $("#searchStartDate").datepicker("option", "maxDate", endDate);

       /* var f = document.form;
       f.method = "post";
       $(".adminbuildenergyno").remove(); //name값이 다수여서 지워여야함 */

    };


</script>
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
    	width:900px;
	/* text-align:center; */
		margin-bottom:100px;
	}
	.selectSupport {
		width:900px;
		margin-left:30px;
	}
	
	.selectLogerCalculateForm {
		margin-top:50px;
		margin-left:auto;
		margin-right:auto;
		margin-bottom:50px;
		width:900px;
	}
    .table-wrapper {
        background: #fff;
        padding: 20px;
        margin: 30px 0;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
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
    <form action="" method="" class="selectLogerCalculateForm" float="left;">
        <div class="table-wrapper">
   
            <table class="table table-striped">
            <tr><h4><b>후원내역</b></h4></tr>
			<tr><hr></tr>
			<div style="float:right;"><label>기간</label>&nbsp;
			
			 <span class="chkbox2">
                       <input type="button" name="dateType" id="dateType3" value="1개월" onclick="setSearchDate('1m')"/>
                       <label for="dateType3"></label>
                   </span>
                   <span class="chkbox2">
                       <input type="button" name="dateType" id="dateType4" value="2개월" onclick="setSearchDate('2m')"/>
                       <label for="dateType4"></label>
                   </span>
                   <span class="chkbox2">
                       <input type="button" name="dateType" id="dateType5" value="3개월" onclick="setSearchDate('3m')"/>
                       <label for="dateType5"></label>
                   </span>


           <!-- <div class="clearfix">
               시작일 -->
               <span class="dset">
                   <input type="text" class="datepicker inpType" name="startdate" id="searchStartDate" style="border:1px solid #ccc;" value="${adminBuildEnergyVo.startdate }" >               </span>
               <span class="demi">~</span>
               <!-- 종료일 -->
               <span class="dset">
                 <input type="text" class="datepicker inpType" name="enddate" id="searchEndDate" style="border:1px solid #ccc;" value="${adminBuildEnergyVo.enddate }" >
               </span>
               <span>
                   	<input type="button" name="selectDate" id="selectDate"  onclick="search();" value="조회">
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
			<input type="text" id="datepicker2" float="right;"> --></div>
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
                <tbody>
                	<c:forEach items="${sList}" var="s">
                    <tr>
                        <td><c:out value="${s.nNo}"/></td>
						<td><c:out value="${s.supTY}"/></td>
						<td><c:out value="${s.nickname}"/></td>
						<td><fmt:formatNumber value="${s.supPrice}" pattern="#,###,###,###" /></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd" value="${s.supDT}"/></td> 
                    </tr>
                    </c:forEach>
                    
                </tbody>
            </table>
            
            <!-- 예비용 페이징 ui -->
            <div class="text-center">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled"><a href="#"><i class="fa fa-long-arrow-left"></i> Previous</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item active"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next <i class="fa fa-long-arrow-right"></i></a></li>
                </ul>
            </div>
        </div>
        </form>
    </div>  
    <jsp:include page="../common/footer.jsp"></jsp:include>   
</body>
<script>
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

</script>

</html>