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
<title>With</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
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
    	width:700px;
	/* text-align:center; */
		margin-bottom:100px;
	}
	.selectSupport {
		width:700px;
		margin-left:30px;
	}
	.selectLogerCalculateForm {
		margin-top:50px;
		margin-left:auto;
		margin-right:auto;
		margin-bottom:50px;
		width:700px;
	}
	.selectLogerNotice {
	width:230px;
	height:150px; 
	float:right; 
	margin-right:35px;
	text-align:center;
}
    .table-wrapper {
        background: #fff;
        padding: 20px;
        margin: 30px 0;
        /* box-shadow: 0 1px 1px rgba(0,0,0,.05); */
    }

</style>
</head>
<body>
<form action="" method="" class="selectLogerCalculateForm" float="left;">
        <div class="table-wrapper">
   
            <table class="table table-striped table-support">
            <tr><h4><b>후원내역</b></h4></tr>
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
						<td><c:out value="${s.supDT}"/></td> 
                    </tr>
                    </c:forEach>
                    
                </tbody>
            </table>
            </div>
            </form>
</body>
</html>