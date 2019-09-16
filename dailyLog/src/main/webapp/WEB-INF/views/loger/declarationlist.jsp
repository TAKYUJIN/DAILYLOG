  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE HTML>
 <html>
	<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Elements Reference - Massively by HTML5 UP</title>
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
        background: #fff;
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
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
		padding: 0 10px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 30px !important;
        text-align: center;
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
    }
    .reno{
    width:100px;
    }.filepath{
    width:350px;
    height: 30px;
    }
    .rewhy{
        width:550px;
         padding: 200px;
         font-family: 'Roboto', sans-serif;
    }
    
   #re{
   text-align: right;
   }
   .redt{
     width:280px;
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
													<td><div style=" float:left; margin-right:40px;"><img src="resources/images/${list.filepath}" width = "102px"  height="100px"  >
													</div> 
													 <h5><b>동영상 제목:</b> ${list.vTitle}</h5>
													<h5><b>채널 명:</b>${list.chNm}</h5>
													<h5><b>조회수:</b>${list.vcount}</h5> 
													
													</td>
													<td valign=middle align=center> <h4> ${list.rewhy} </h4></td>
													<td valign=middle align=center><h4> ${list.redt}</h4></td>
												<td><span style="color:red">${list.recount}</span></td>
												<td><span style="color:red">${list.ccount}</span></td>
										 
								 
								 			 
    
              </tr> </c:forEach>  </tbody> 
            </table>
              <div class="clearfix">
                 <ul class="pagination">
                    <li class="page-item disabled"><a href="#"><<</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item active"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">>></a></li>
                </ul>
            </div>  <br><br>
        </div>
    </div>     </div>    
</body>

</html>
 