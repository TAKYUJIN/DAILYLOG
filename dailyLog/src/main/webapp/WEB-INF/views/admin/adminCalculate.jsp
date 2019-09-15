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
</head>
<body>
<jsp:include page="../common/adminBar.jsp"></jsp:include>
    <div class="selectSupport">
    <form action="" method="" class="selectLogerCalculateForm" float="left;">
        <div class="table-wrapper">
            <table class="table table-striped">
            <!-- <tr><h4><b>정산관리</b></h4></tr>
				<select id="searchCalculate" style="width:150px; margin-left:350px;">
					    <option value="">회원명</option>
					    <option value="">정산유무</option>
					    <option value="">정산신청일</option>
					</select>&nbsp;<input type="text">
					&nbsp;<button type="submit" value="">조회</button> -->
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
                    <button type="submit" value="" id="selectBtn">조회</button>
<!-- 						<button type="button" class="btn btn-primary"><i class="fa fa-search"></i></button> -->
					</div>
                </div>
			</div>
				<button type="button" class="btn_bookmark" style="float:right;" onclick="location.href='deleteBoard.do?idx=<%-- ${} --%>'">&nbsp;취소&nbsp;</button> 
				<button type="button" class="btn_bookmark" style="float:right;" onclick="location.href='updateLogerVideo.jsp'">&nbsp;정산&nbsp;</button></div>
			<tr><br></tr>
			<tr><br></tr>
                <thead>
                    <tr>
                    	<th class="calculate_th"><input type="checkbox" id="checkCal"></th>
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
                <tbody>
                <c:forEach items="${cList}" var="c">
                    <tr>
                    	<td><input type="checkbox" id="checkCal"></td>
                        <td>${c.userNo}</td>
						<td>${c.userId}</td>
						<td>${c.userNm}</td>
						<td>${c.calSTDT}</td>
						<td>${c.calPrice}</td>
						<td>${c.calVAT}</td>
						<td>${c.amountPrice}</td>
						<td>${c.bankNm}</td>
						<td>${c.account}</td>
						<td>${c.calTY}</td>
						<td>${c.calEDT}</td>
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
</body>
</html>