<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	.chImg {
		width:40px; 
		height:40px;
		/* border:1px dashed gray; */
		border-radius: 50%;
		/* vertical-align: middle; */
	}
	tr {
		background:none !important;
	}
	
	tr :hover {
		opacity: 0.8 !important;
	}
	.table-wrapper {
       /*  background: #fff; */
        padding: 20px 25px;
        margin: 30px auto;
		border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
	.table-wrapper .btn {
		float: right;
		color: white;	/*버튼글씨*/
    	background-color: #13334A;
		border-radius: 3px;
		border: none;
		outline: none !important;
		margin-left: 10px;
	}
	.table-wrapper .btn:hover {
        color: white;
        opacity:0.8;
		/* background: #f2f2f2; */
	}
	.table-wrapper .btn.btn-primary {
		/* color: #fff; */
		/* background: #03A9F4; */
	}
	.table-wrapper .btn.btn-primary:hover {
		/* background: #03a3e7; */
	}
	.table-title .btn {		
		font-size: 13px;
		border: none;
	}
	.table-title .btn i {
		float: left;
		font-size: 21px;
		margin-right: 5px;
	}
	.table-title .btn span {
		float: left;
		margin-top: 2px;
	}
	.table-title {
		color:gray;
		padding: 16px 25px;
		margin: -20px -25px 10px;
		border-radius: 3px 3px 0 0;
    }
    .table-title h2 {
		margin: 5px 0 0;
		font-size: 24px;
	}
	.show-entries select.form-control {        
        width: 60px;
		margin: 0 5px;
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
		width: 200px;
		display: inline-block;
	}
	.filter-group select.form-control {
		width: 250px;
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
    	/* background-color: #fcfcfc; */
	}
	table.table-striped.table-hover tbody tr:hover {
		/* background: #f5f5f5; */
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
        margin: 0 0 5px;
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
        color: red; 
    }	
    .pagination li.active a {
        /* background: #03A9F4; */
    }
    .pagination li.active a:hover {        
        /* background: #0397d6; */
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
  .ch {
 	width:500px !important;
 	margin:5% !important;
 }
</style>
</head>
<body>
	<jsp:include page="../common/adminBar.jsp"></jsp:include>

	
	<div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-4">
					</div>
					<div class="col-sm-8">						
						<a href="#" class="btn btn-info"><i class="material-icons">&#xE24D;</i> <span>Export to Excel</span></a>
					</div>
                </div>
            </div>
			<div class="table-filter">
				<div class="row">
                    <div class="col-sm-3">
					</div>
                    <div class="col-sm-9">
						<button type="button" id="search" class="btn btn-primary"><i class="fa fa-search"></i></button>
						<div class="filter-group">
							<label>채널명</label>
							<input type="text" class="form-control">
						</div>
						<!-- <div class="filter-group">
							<label>중지사유</label>
							<select class="form-control">
								<option>-- 선택 --</option>
								<option>성적인 콘텐츠</option>
								<option>폭력적 또는 혐오스러운 콘텐츠</option>
								<option>증오 또는 악의적인 콘텐츠</option>
								<option>유해한 위험 행위</option>
								<option>아동 학대</option>			
								<option>테러 조장</option>
								<option>스팸 또는 사용자를 현혹하는 콘텐츠</option>
								<option>권리 침해</option>
								<option>자막 문제</option>		
							</select>
						</div> -->
						<span class="filter-icon"><i class="fa fa-filter"></i></span>
                    </div>
                </div>
			</div>
			<script>
			var a = "<c:out value='${channelInfo[0].chNm}'/>";
				console.log(a);
			</script>
			
			
            <table class="table table-striped table-hover" style="background:none;">
                <thead>
                    <tr>
                        <th></th>
                        <th>채널명</th>
						<th>채널인</th>
						<th>총 정산</th>
                        <th>신고 / 경고</th>						
						<th></th>
                    </tr>
                </thead>
                <tbody>
					<c:forEach var="ch" items="${chInfo}" >
	                     <tr>
	                        <td>
	                        	<a href="#">
	                        		<img class="chImg" src="resources/images/${ch.fileNm}" class="avatar">
	                        	</a>
	                        </td>
	                        <td>${ch.chNm}</td>
							<td>${ch.userId}</td>
							<td>${ch.price }</td>
							<c:if test="${ ch.cCount == 0}">
								<td><span class="status text-info">&bull;</span>${ch.cCount } / ${ch.reCount }</td>
							</c:if>
							<c:if test="${ ch.cCount == 1}">
								<td><span class="status text-warning">&bull;</span>${ch.cCount } / ${ch.reCount }</td>
							</c:if>
							<c:if test="${ ch.cCount >= 2}">
								<td><span class="status text-danger">&bull;</span>${ch.cCount } / ${ch.reCount }</td>
							</c:if>
								<td>
									<a href="channelDetail.ad" class="view" title="View Details" data-toggle="tooltip">
										<i class="material-icons">&#xE5C8;</i>
									</a>
								</td>
	                    </tr> 
					</c:forEach>
                </tbody>
            </table>
            
			<div class="clearfix">
                <!-- <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div> -->
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item"><a href="#" class="page-link">3</a></li>
                    <li class="page-item active"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
					<li class="page-item"><a href="#" class="page-link">6</a></li>
					<li class="page-item"><a href="#" class="page-link">7</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
    </div>  
	
</body>
</html>