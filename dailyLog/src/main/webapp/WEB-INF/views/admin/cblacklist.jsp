<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE HTML>
<html>
	<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WITH</title>				 
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<style>
	body {
        color: #566787;
        background: #f5f5f5;
		font-family: 'Roboto', sans-serif;
	}
	.table-wrapper {
        background: none;
        padding: 20px;
        margin: 30px 0;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
	.table-title {
		font-size: 15px;
        padding-bottom: 10px;
        margin: 0 0 10px;
		min-height: 45px;
    }
    .table-title h2 {
        margin: 5px 0 0;
        font-size: 24px;
    }
	.table-title select {
		border-color: #ddd;
		border-width: 0 0 1px 0;
		padding: 3px 10px 3px 5px;
		margin: 0 5px;
	}
	.table-title .show-entries {
		margin-top: 7px;
	}
	.search-box {
        position: relative;
        float: right;
    }
	.search-box .input-group {
		min-width: 200px;
		position: absolute;
		right: 0;
	}
	.search-box .input-group-addon, .search-box input {
		border-color: #ddd;
		border-radius: 0;
	}
	.search-box .input-group-addon {
		border: none;
		border: none;
		background: transparent;
		position: absolute;
		z-index: 9;
	}
    .search-box input {
        height: 34px;
        padding-left: 28px;		
		box-shadow: none !important;
		border-width: 0 0 1px 0;
    }
	.search-box input:focus {
		border-color: #3FBAE4;
	}
    .search-box i {
        color: #a0a5b1;
        font-size: 19px;
		position: relative;
		top: 2px;
		left: -10px;
    }
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
    }
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }
    table.table td:last-child {
        width: 130px;
    }
    table.table td a {
        color: #a0a5b1;
        display: inline-block;
        margin: 0 5px;
    }
	table.table td a.view {
        color: #03A9F4;
    }
    table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #E34724;
    }
    table.table td i {
        font-size: 19px;
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
    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
    }
    #submit{
   border:none;
    background:none;
    }
</style>
<script type="text/javascript">
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
	// Animate select box length
	var searchInput = $(".search-box input");
	var inputGroup = $(".search-box .input-group");
	var boxWidth = inputGroup.width();
	searchInput.focus(function(){
		inputGroup.animate({
			width: "300"
		});
	}).blur(function(){
		inputGroup.animate({
			width: boxWidth
		});
	});
});
</script>
</head>
<body>
	<jsp:include page="../common/adminBar.jsp"></jsp:include>
    <div class="container">
        <div class="table-wrapper">			
            <div class="table-title">
                <div class="row">
					<div class="col-sm-4">
						<h2><b>채널 블랙 리스트 </b> </h2>
					</div>
                </div>
            </div><h4><b>채널 </b> </h4>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>회원 번호</th>
                        <th>아이디 <i class="fa fa-sort"></i></th>
                        <th>구분</th>
                        <th>채널 신고 횟수</th>
						<th>채널 경고 횟수</th>
                        <th>유무</th>
						<th>중지/블랙 리스트</th>
                    </tr>
                </thead>
                <tbody>  
                    <c:forEach var="v" items="${cblacklist}" >
                    <tr>
                        <td>${v.userNo}</td>
                   		<td>${v.userId}</td>
                   		<td>${v.rety}</td>
						<td>${v.recount}</td>
					    <td>${v.ccount}</td>
					    <td>
					    <c:choose> 
					    <c:when test="${v.ccount >=3}">
						<b style="color:red;">중지</b>
						</c:when>
						 <c:when test="${v.ccount >=5}">
						 <b  style="color:red;">영구 정지</b>
						 </c:when>
						<c:otherwise>
						<b style="color:red;">경고</b>
						</c:otherwise>
						</c:choose>
             </td>
	 					<td><div style="float:left;">
	 					<form action="cstop.lo" method="get" >
	 					<input type="hidden" id="userNo" name="userNo" value="${v.userNo}">
	 					 <input type="submit" id="submit"  value="중지">
	 					</form>
	 					</div>
	 					
	 					<form action="cblock.bl" method="get" >
	 					<input type="hidden" id="chNm" name="chNm" value="${v.chNm}">
					    <input type="hidden" id="userNo" name="userNo" value="${v.userNo}">
	 					 <input type="submit" id="submit" value="블랙">
	 					</form>
	 					<!-- <a href="ustop.me" class="button primary small"  >중지</a>
	 					 --><!-- <a href="ublock.bl"  class="button small" >블랙</a> -->
					     </td>
					     </tr>
                    <tr>
                    </c:forEach>
                </tbody>
            </table>
              <br><br><br><br>
            
           <h4><b>동영상 </b> </h4>
             <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>회원 번호</th>
                        <th>아이디 <i class="fa fa-sort"></i></th>
                        <th>구분</th>
                        <th>동영상 번호</th>
						<th>채널 경고 횟수</th>
                        <th>유무</th>
						<th>중지/블랙 리스트</th>
                    </tr>
                </thead>
                <tbody> 
                    <c:forEach var="v" items="${vblacklist}" >
                    <tr>
                        <td>${v.userNo}</td>
                   		<td>${v.userId}</td>
                   		<td>${v.rety}</td>
                   		<th>${v.vNo}</th>
						<td>${v.recount}</td>
					    <td>${v.ccount}</td>
					    <td>
					    <c:choose> 
					    <c:when test="${v.ccount >=3}">
						<b style="color:red;">중지</b>
						</c:when>
						 <c:when test="${v.ccount >=5}">
						 <b  style="color:red;">영구 정지</b>
						 </c:when>
						<c:otherwise>
						<b style="color:red;">경고</b>
						</c:otherwise>
						</c:choose>
             </td>
	 					<td><div style="float:left;">
	 					<form action="cstop.lo" method="get" >
	 					<input type="hidden" id="userNo" name="userNo" value="${v.userNo}">
	 					 <input type="submit" id="submit"  value="중지">
	 					</form>
	 					</div>
	 					
	 					<form action="vblock.bl" method="get" >
	 					<input type="hidden" id="vNo" name="vNo" value="${v.vNo}">
					    <input type="hidden" id="userNo" name="userNo" value="${v.userNo}">
	 					 <input type="submit" id="submit" value="블랙">
	 					</form>
	 					<!-- <a href="ustop.me" class="button primary small"  >중지</a>
	 					 --><!-- <a href="ublock.bl"  class="button small" >블랙</a> -->
					     </td>
					     </tr>
                    <tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
     <jsp:include page="../common/footer.jsp" />     
</body>

</html>