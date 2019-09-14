<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						<h2 ><b>회원 블랙 리스트 </b> </h2>
					</div>
                 
                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>아이디 <i class="fa fa-sort"></i></th>
                        <th>누적 회원 신고 횟수</th>
						<th>누적 회원 경고 횟수</th>
                        <th>유무</th>
						<th>중지/블랙 리스트</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                   		<td>user1@email.com</td>
						<td>5</td>
					    <td>1</td>
						<td>경고</td>
	 					<td><ul class="actions small"></ul>
						<a href="#" class="button primary small">중지</a> 
					    <a href="#" class="button small">블랙</a> </td>
                       <!--  <td>
							<a href="#" class="stop" title="중지" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                            <a href="#" class="black" title="블랙" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                            <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>   -->
                    <tr>
                        <td>2</td>
              			<td>user2@email.com</td>
						<td>5</td>
					    <td>1</td>
						<td>중지</td>
	 					<td><ul class="actions small"></ul>
						<a href="#" class="button primary small">중지</a> 
					    <a href="#" class="button small">블랙</a> </td>
                   
                    </tr>
                    <tr>
                        <td>3</td>
              			<td>user3@email.com</td>
						<td>5</td>
					    <td>1</td>
						<td>중지</td>
	 					<td><ul class="actions small"></ul>
						<a href="#" class="button primary small">중지</a> 
					    <a href="#" class="button small">블랙</a> </td>
                         
                    </tr>
                    <tr>
                        <td>4</td>
              			<td>user4@email.com</td>
						<td>5</td>
					    <td>1</td>
						<td>중지</td>
	 					<td><ul class="actions small"></ul>
						<a href="#" class="button primary small">중지</a> 
					    <a href="#" class="button small">블랙</a> </td>
                    </tr>
                    <tr>
                        <td>5</td>
              			<td>user5@email.com</td>
						<td>5</td>
					    <td>1</td>
						<td>중지</td>
	 					<td><ul class="actions small"></ul>
						<a href="#" class="button primary small">중지</a> 
					    <a href="#" class="button small">블랙</a> </td>
                    </tr>        
                </tbody>
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
            </div>  
        </div>
    </div>
     <jsp:include page="../common/footer.jsp" />     
</body>

</html>