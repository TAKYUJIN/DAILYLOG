<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Order Details Table with Search Filter</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- iamport.payment.js -->

<style type="text/css">

    body {
        color: #566787;
		background: #f5f5f5;
		font-family: 'Varela Round', sans-serif;
		font-size: 13px;
	}
	.bs-example{
        margin-left: 20px; 
        margin-top : 5%;
        width: 15%;       
    }
    .container{
   		margin-right: 50%; 
        margin-top : -12%;
        margin-bottom: 15px;
    }

    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
		padding: 12px 15px;
		vertical-align: middle;
    }
	table.table tr th:first-child {
		width: 60px;
	}
	table.table tr th:last-child {
		width: 80px;
	}
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
	}
	table.table-striped.table-hover tbody tr:hover {
		background: #f5f5f5;
	}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }	
	table.table td a {
		font-weight: bold;
		color: #566787;
		display: inline-block;
		text-decoration: none;
	}
	table.table td a:hover {
		color: #2196F3;
	}
	table.table td a.view {        
		width: 30px;
		height: 30px;
		color: #2196F3;
		border: 2px solid;
		border-radius: 30px;
		text-align: center;
    }
    table.table td a.view i {
        font-size: 22px;
		margin: 2px 0 0 1px;
    }   
	table.table .avatar {
		border-radius: 50%;
		vertical-align: middle;
		margin-right: 10px;
	}
	.status {
		font-size: 30px;
		margin: 2px 2px 0 0;
		display: inline-block;
		vertical-align: middle;
		line-height: 10px;
	}
    .text-success {
        color: #10c469;
    }
    .text-info {
        color: #62c9e8;
    }
    .text-warning {
        color: #FFC107;
    }
    .text-danger {
        color: #ff5b5b;
    }
    .pagination {
        float: right;
        margin: 0 auto;
    }
    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 2px !important;
        text-align: center;
        padding: 0 6px;
    }
    .pagination li a:hover {
        color: #666;
    }	
    .pagination li.active a {
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
	.pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
        align-content: center
    }    
    #rep{
  	   margin-left: 20px; 
       margin-top: -18%;
        width: 15%; 
        margin-bottom: 20%;
    }
</style>

</head>
<body>
<jsp:include page="../common/mainBar.jsp"/>
	<div class="bs-example">    
    <div class="list-group">
        <a href="myPage.me" class="list-group-item list-group-item-action">
            <i class="fa fa-home"></i> 
        </a>
        <a href="point.me" class="list-group-item list-group-item-action active">
            <i class="fa fa-money"></i> 후원&포인트 충전
        </a>
       
    </div>
</div>
<form id="point" action="point.me" method="post">
    <div class="container" style="margin-left: 20%; ">
       <h1>
       <a>정기후원</a>
       <a href="#">문의하기</a>
       </h1>
       <input type="button" id="re" name="re" value="정기결제" onclick="location.href='pay1.me'">
       <hr>
       <br>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>로거이름</th>
						<th>결제일</th>
						<th>후원기간</th>						
                        <th>결제금액</th>						
						<th>결제수단</th>
						<th>후원상태</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td> Michael Holz</a></td>
						<td>London</td>
                        <td>Jun 15, 2017</td>                        
						<td><span class="status text-success">&bull;</span> Delivered</td>
						<td>$254</td>
						<td><a href="#" class="view" title="View Details" data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
                    </tr>
					
                </tbody>
            </table>
		
            
            <h1>
       <a>포인트</a>
       </h1>
       <input type="button" id="pay" name="pay" value="결제" onclick="location.href='pay.me'">
       <hr>
       <br>
              <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>회원이름</th>
						<th>충전일</th>
						<th>충전금액</th>						
                        <th>사용포인트</th>						
						<th>잔여포인트</th>
						<th>결제수단</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${paylist}" var="p">
                    <tr>
                        <td>${p.payNo }</td>
                        <td>${p.userNo }</td>
						<td>${p.payDate }</td>
                        <td>${p.payPrice }</td>                        
						<td>${p.supPrice }p</td>
						<td>${p.calPrice}</td>
						<td>card</td>
                    </tr>
                    </c:forEach>
					
                </tbody>
            </table>
			
        </div>
        <div id="rep">
        	<h4 style="color :red;"><b>경고! 필독해주세요</b></h4>
        	<br>
        	<p>
			포인트 충전후 사용하지 않았을시에 전액 환불되며, 정기/일회성 후원시에는 화불이 불가합니다.
			
			포인트 충전하고 1년이상 사용하지 않을시에 모두 소멸됩니다.
			</p>
        	
        </div>
        </form>
        <jsp:include page="../common/footer.jsp"/>
</body>
</html>                                		                                                    