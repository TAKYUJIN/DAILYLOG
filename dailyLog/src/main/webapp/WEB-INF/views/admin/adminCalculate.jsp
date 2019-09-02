<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Simple Data Table</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
    	width:1000px;
	/* text-align:center; */
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
</style>
</head>
<body>
<jsp:include page="../common/adminBar.jsp"></jsp:include>
    <div class="selectSupport">
    <form action="" method="" class="selectLogerCalculateForm" float="left;">
        <div class="table-wrapper">
            <table class="table table-striped">
            <tr><h4><b>정산관리</b></h4></tr>
				<select id="searchCalculate" style="width:150px; margin-left:350px;">
					    <option value="">회원명</option>
					    <option value="">정산유무</option>
					    <option value="">정산신청일</option>
					</select>
					&nbsp;<button type="submit" value="">조회</button>
			<tr><hr></tr>
			<div id="searchAdminCalBtn">
				<button type="button" class="btn_bookmark" style="float:right;" onclick="location.href='deleteBoard.do?idx=${board.idx }'">&nbsp;취소&nbsp;</button> 
				<button type="button" class="btn_bookmark" style="float:right;" onclick="location.href='updateLogerVideo.jsp'">&nbsp;정산&nbsp;</button>
			<tr><br></tr>
			<tr><br></tr>
                <thead>
                    <tr>
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
						<th class="calculate_th">정산일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1234</td>
						<td>user02@gmail.com</td>
						<td>김채원</td>
						<td>2019.08.16</td>
						<td>250,000원</td>
						<td>54,000원</td>
						<td>196,000원</td>
						<td>우리</td>
						<td>1002-981-920408</td>
						<td>Y</td>
						<td>2019.08.16</td>
                    </tr>
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