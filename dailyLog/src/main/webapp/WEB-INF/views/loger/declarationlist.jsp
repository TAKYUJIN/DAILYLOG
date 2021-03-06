  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML>
 <html>
	<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WITH</title>		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
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
        margin: 0 50px;
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
    .reno{
    width:100px;
    }.filepath{
    width:380px;
    height: 30px;
    }
    .rewhy{
        width:450px;
         padding: 200px;
         font-family: 'Roboto', sans-serif;
    }
    
   #re{
   text-align: right;
   }
   .redt{
     width:280px;
   }
   #why{
   margin-top:20px;
   }
</style>
	</head>
	<body>
<jsp:include page="../common/logerBar.jsp"></jsp:include>
<br><br>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
  
    <div class="container">
        <div class="table-wrapper">			
            <div class="table-title">
                <div class="row" > 
					
						<h2 ><b>신고내역 </b> </h2><br>
						<div id="re">
						  
					 <c:forEach var="list" items="${recount}">	
					  <b>현재 신고 횟수:<span style="color:red">${recount}
					 </span></b></c:forEach>
					 
					  <c:forEach var="list" items="${ccount}">
						<b>현재 경고 횟수:<span style="color:red">${ccount}</span></b>
						</c:forEach>
						 
						
						</div> 
					</div>
					
						 
                </div>
        
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="reno" >신고번호</th>
                        <th class="reno">구분 </th>
                         <th class="filepath">신고동영상 </th>
     					 <th class="rewhy" align=center>신고사유 </th>
      				     <th class="redt" align=center>신고일<i class="fa fa-sort"></i></th>
      				     <th class="reno" align=center>신고횟수 </th>
      				     <th class="reno" align=center>경고횟수 </th>
                    </tr>
                </thead>
                <tbody> 
                <c:forEach var="list" items="${reportlist}">
                <tr>
                    
 				  						
													<td>${list.reno}</td>
													<td>${list.rety}</td>
													<td><div style=" float:left; margin-right:10px;"><img src="resources/uploadFiles/${list.fileNm}" width = "102px"  height="100px"  >
													</div> 
													 <h5><b>  ${list.vTitle}</b></h5>
													<h5><b>채널 명</b>${list.chNm}</h5>
													<h5><b>조회수</b>${list.vcount}</h5>
													 
														<%-- <c:forEach var="list"items="${fn:split(list.updateDt,'00:00:00')}" varStatus="status">
														 ${list} 
														
													<h5><b>업로드</b>${list.uploadDt}</h5>
				 										</c:forEach> --%>
												 <c:set var="TextValue" value="${list.uploadDt}"/>
													<h5><b>업로드</b>${fn:substring(TextValue,0,10) }</h5>
													
													
													</td>
													<td valign=middle align=center> <div id="why"> <h4> ${list.rewhy}</h4> </div> </td>
													
													<td valign=middle align=center> <div id="why"><h4> ${list.redt}</h4></td>
												<td><span style="color:red">${list.recount}</span></td>
												<td><span style="color:red">${list.ccount}</span></td>
										 
								 
								 			 
    
              </tr> </c:forEach>  </tbody> 
            </table>
                 
        </div>
    </div>     </div>    <br><br><br><br><br><br><br><br>
</body>

</html>
 