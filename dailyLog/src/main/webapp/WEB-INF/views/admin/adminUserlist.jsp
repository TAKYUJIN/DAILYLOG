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
        text-align:center;
        background:none;
        
    }
    table.table-striped tbody tr:nth-of-type(odd) {
    	width:1000px;
		text-align:center;
		margin-bottom:100px;
		text-align:center;
		background:none;
	}
	.selectSupport {
		
		width:1000px;
		margin:0 auto;
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
    <form action="selectAdminUser" method="post"  >
        <div class="table-wrapper">
            <table class="table table-striped">
			
        <h3><b>회원관리</b></h3>
                <thead>
                    <tr>
                        <th class="calculate_th">회원번호</th>
						<th class="calculate_th">채널이름</th>
						<th class="calculate_th">아이디</th>
						<th class="calculate_th">등급코드(로거/회원)</th>
						<th class="calculate_th">가입일자</th>
						<th class="calculate_th">탈퇴여부</th>
                    </tr>
                </thead>
                <tbody id="list" onclick="location.href='adminUserDetail.ad'">
                <c:forEach items="${userlist}" var="user">
                    <tr>
                        <td>${user.userNo}</td>
                        <td>${user.chNm }
						<td>${user.userId}</td>
						<td>${user.chYn}</td>
						<td><c:out value="${user.enrollDate}"/> </td>
						<td><c:out value="${user.status}"/></td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            
          
        </div>
        </form>
        <jsp:include page="../common/footer.jsp"/>
    </div>  
</body>
<script type="text/javascript">
$(document).ready(function(){
	$("#list").click(function(){
		location.href="${path}/admin/adminUserDetail.ad";
	});
});
	
</script>
</html>