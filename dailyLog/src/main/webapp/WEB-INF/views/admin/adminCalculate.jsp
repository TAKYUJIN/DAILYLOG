<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WITH</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style type="text/css">
    body {
        color: #666;
        background: #f5f5f5;
		font-family: 'Roboto', sans-serif;
	}
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
        text-align:center;
    }
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
    	width:1000px;
		text-align:center;
		margin-bottom:100px;
		text-align:center;
	}
	.selectSupport {
		width:1000px;
		margin-left:10px;
		font-size:12px;
	}
	
	.selectLogerCalculateForm {
		margin-top:50px;
		margin-left:auto;
		margin-right:auto;
		margin-bottom:50px;
		width:1000px;
	}
	.calculate_th {
		text-align:center;
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
    #searchAdminCalBtn {
    		width:900px;
	text-align:center;
    }
    
    
    .table-filter .filter-group {
        float: right;
		margin-left: 15px;
    }
	.table-filter input, .table-filter select {
		height: 34px;
		border-radius: 3px;
		border-color: #ddd;
        box-shadow: none;
	}
	.table-filter {
		padding: 5px 0 15px;
		border-bottom: 1px solid #e9e9e9;
		margin-bottom: 5px;
	}
	.table-filter .btn {
		height: 34px;
	}
	.table-filter label {
		font-weight: normal;
		margin-left: 10px;
	}
	.table-filter select, .table-filter input {
		display: inline-block;
		margin-left: 5px;
	}
	.table-filter input {
		width: 150px;
		display: inline-block;
	}
	.filter-group select.form-control {
		width: 100px;
		text-align:center;
	}
	.filter-icon {
		float: right;
		margin-top: 7px;
	}
	.filter-icon i {
		font-size: 18px;
		opacity: 0.7;
	}	
</style>
<script>
function fncalculate() {
	var lists = new Array();
	$("input[name='check']:checked").each(function(i){
		lists.push($(this).val());
	});
	
	var frm = document.f1;
	$("input[name='chk_list']").val(lists);
	//frm.chk_list.value = lists;

	frm.action = "calculateApply.ad";
	frm.submit();
}
</script>
</head>
<body>
<jsp:include page="../common/adminBar.jsp"></jsp:include>
    <div class="selectSupport">
    <form name="f1" action="" method="post" class="selectLogerCalculateForm" float="left;">
    <input type="hidden" name="chk_list"/>
        <div class="table-wrapper">
            <table class="table table-striped" id="adminTable">
			<tr><hr></tr>
        <h4><b>정산관리</b></h4>
			<div id="searchAdminCalBtn">
        <div class="table-filter">
				<div class="row">
                    <div class="col-sm-11">
						<div class="filter-group">
							<label>회원명</label>
							<input type="text" class="form-control">
						</div>
						<div class="filter-group">
							<label>정산유무</label>
							<select class="form-control">
								<option>-- 선택 --</option>
								<option>대기</option>
								<option>완료</option>
							</select>
						</div>
                    </div>
                    <div class="col-sm-1">
                    <button type="button" value="" id="selectBtn">조회</button>
<!-- 						<button type="button" class="btn btn-primary"><i class="fa fa-search"></i></button> -->
					</div>
                </div>
			</div>
				<button type="button" class="btnReset" style="float:right;" onclick="location.href='deleteBoard.do?idx=<%-- ${} --%>'">&nbsp;취소&nbsp;</button> 
				<button type="button" class="btnCalculate" style="float:right;" onclick="fncalculate();">&nbsp;정산&nbsp;</button></div>
			<tr><br></tr>
			<tr><br></tr>
                <thead>
                    <tr>
                    	<th class="calculate_th"><input type="checkbox" id="check_all"></th>
                        <th class="calculate_th">회원번호</th>
						<th class="calculate_th">ID</th>
						<th class="calculate_th">회원명</th>
						<th class="calculate_th">정산신청일</th>
						<th class="calculate_th">정산금액</th>
						<th class="calculate_th">수수료</th>
						<th class="calculate_th">실지급액</th>
						<th class="calculate_th">은행명</th>
						<th class="calculate_th">계좌번호</th>
						<th class="calculate_th">정산유무</th>
						<th class="calculate_th">정산완료일</th>
                    </tr>
                </thead>
                <tbody id="admin">
                <c:forEach items="${cList}" var="c">
                    <tr>
                    
                    	<td><input type="checkbox" class="inputCheck" name="check" value="${c.calNo}"></td>
                        <td><c:out value="${c.userNo}"/></td>
						<td><c:out value="${c.userId}"/></td>
						<td><c:out value="${c.userNm}"/></td>
						<td><c:out value="${c.calSTDT}"/></td>
						<td><c:out value="${c.calPrice}"/></td>
						<td><c:out value="${c.calVAT}"/></td>
						<td><c:out value="${c.amountPrice}"/></td>
						<td><c:out value="${c.bankNm}"/></td>
						<td><c:out value="${c.account}"/></td>
						<td><c:out value="${c.calTY}"/></td>
						<td><c:out value="${c.calEDT}"/></td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            
            <script>
            
            $(function(){
                $("#check_all").click(function(){
                    var chk = $(this).is(":checked");//.attr('checked');
                    
                    if(chk) {
                    	$(".inputCheck").prop('checked', true);
                    }
                    else{  
                    	$(".inputCheck").prop('checked', false);
                    }
                });
            });

            /* $(".btn_calculate").click(function(){
            	var calNo = new Array();
            	var calcnt = 0;
            	var chkbox = $(".input_check").parent().siblings().eq(0).text();
            	
            	
            	for(i = 0; i < chkbox.length; i++) {
            	    if (chkbox[i].checked == true){
            	    	calNo[calcnt] = chkbox[i].value;
            	    	calcnt++;
            	    }
            	}
            	console.log(calNo);

            	$("#array").val(calNo);
            	
            	
            	
            }); */
            /* $(function(){
            	$(".btnCalculate").click(function(){
		            $(".inputCheck:checked").each(function(){
		            	var calNo = new Array();
		            	calNo = $(this).parent().siblings().eq(0).text();
		            	console.log(calNo);
		            	
		            	location.href='calculateApply.ad?calNo='+calNo;
		            	
		            });
            		
            	});
            });  */
            
            /* $(document).ready(function(){
    			$(".btnCalculate").click(function(){
    				var lists = new Array();
    				$("input[name='check']:checked").each(function(i){
    					lists.push($(this).val());
    					
    					location.href='calculateApply.ad?calNo='+calNo;
        				});
    		 */		
    				/* 	$.ajax({
        					url:"calculateApply.ad",
        					type:"post",
        					traditional : true,
        					data:{"lists":lists},
        					success:function(data){
        					console.log("성공!");
        					/* var $adminTable = $("#adminTable #admin");
        					$adminTable.html(""); */
        					
        					/*  for(var i = 0; i < data["cList"].length; i++){ 
        	    					var $tr = $("<tr>");
        	    					var $nNo = $("<td>").text(data["cList"][i].nNo);
        	    					var $supTY = $("<td>").text(data["cList"][i].supTY);
        	    					var $nickname = $("<td>").text(data["cList"][i].nickname);
        	    					var $supPrice = $("<td>").text(numeral(data["cList"][i].supPrice).format('0,0')+"원");
        	    					var $supSTDT = $("<td>").text(data["cList"][i].supSTDT);
        	    					var $td = $("<td>");
        	    					var result = $supSTDT.text().substr(0,10);
        	    					$td.append(result)
        	    					$tr.append($nNo);
        	    					$tr.append($supTY);
        	    					$tr.append($nickname);
        	    					$tr.append($supPrice);
        	    					$tr.append($td);
        	    					$logerTable.append($tr); 
        	    					
        	    					
        	    					<td><input type="checkbox" class="inputCheck" name="check" value="${c.calNo}"></td>
        	                        <td><c:out value="${c.userNo}"/></td>
        							<td><c:out value="${c.userId}"/></td>
        							<td><c:out value="${c.userNm}"/></td>
        							<td><c:out value="${c.calSTDT}"/></td>
        							<td><c:out value="${c.calPrice}"/></td>
        							<td><c:out value="${c.calVAT}"/></td>
        							<td><c:out value="${c.amountPrice}"/></td>
        							<td><c:out value="${c.bankNm}"/></td>
        							<td><c:out value="${c.account}"/></td>
        							<td><c:out value="${c.calTY}"/></td>
        							<td><c:out value="${c.calEDT}"/></td>
        	    				
        	    					
        	    					
        	    				 }  */
        					/* },
        					error:function(data){
        						console.log("실패!");
        					} */
    			

    				
    			/* 	$.ajax({
    					url:"insertVideoInfo.vd",
    					type:"post",
    					data:{titleName:titleName,videoTag:videoTag,model:model,filepath:filepath,fileName:fileName,adInfo:adInfo,
    						file2:file2,'allView':lists},
    						traditional:true,
    					success:function(data){
    						console.log("성공!");
    					},
    					error:function(data){
    						console.log("실패!");
    					}
    				}); */

            
            </script>
            
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
</body>
</html>