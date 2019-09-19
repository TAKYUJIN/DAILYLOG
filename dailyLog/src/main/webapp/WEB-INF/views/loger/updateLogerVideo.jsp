<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	.table-wrapper {
		width: 80%;
        padding: 20px;
        margin: 30px 0;
    }
    .selectVideo {
		width:80%;
		margin-left:30px;
	}
    .searchLogerVideoForm {
		width:80%;
		margin-top:50px;
		text-align:left;
	}
	.video_th {
		text-align:center;
	}

    .table-title {
        padding-bottom: 10px;
        margin: 0 0 10px;
    }
    .table-title h2 {
        margin: 6px 0 0;
        font-size: 22px;
    }
    .table-title .add-new {
        float: right;
		height: 30px;
		font-weight: bold;
		font-size: 12px;
		text-shadow: none;
		min-width: 100px;
		border-radius: 50px;
		line-height: 13px;
    }
	.table-title .add-new i {
		margin-right: 4px;
	}
    table.table {
        table-layout: fixed;
    }
    table.table tr th, table.table tr td {
 	   width:80%;
        border-color: #e9e9e9;
    }
    table.table-striped tbody tr:nth-of-type(odd) {
    	
	}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }
    table.table th:last-child {
        width: 100px;
    }
    table.table td a {
		cursor: pointer;
        display: inline-block;
        margin: 0 5px;
		min-width: 24px;
    }    
	table.table td a.add {
        color: #27C46B;
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
	table.table td a.add i {
        font-size: 24px;
    	margin-right: -1px;
        position: relative;
        top: 3px;
    }    
    table.table .form-control {
    	width:80%;
        height: 32px;
        line-height: 32px;
        box-shadow: none;
        border-radius: 2px;
    }
	table.table .form-control.error {
		border-color: #f50000;
	}
	table.table td .add {
		display: none;
	}
	input[type=text] {
		border:none;
		border-right:0px; 
		border-top:0px; 
		boder-left:0px; 
		boder-bottom:0px;
		

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
    
	input:focus {outline:none;}
	
	.infobtn {
		margin-top:20px;
		margin-bottom:20px;
		background:#FFF;
		border:1px solid black;
		padding:3px;
	}
	
	.video_th {
		vertical-align:middle;
	}
</style>
</head>
<body>
<jsp:include page="../common/logerBar.jsp"></jsp:include>
    <div class="selectVideo">
    <form action="" method="" class="searchLogerVideoForm">
        <div class="table-wrapper">
            <div class="table-title" style="width:900px;">
                <div class="row">
                    <div class="col-sm-8"><h2>Loger Video <b>Edit</b></h2></div>
                    
                </div>
            </div>
            
            <table class="table table-striped">
                <thead>
					<div class="info_btn col-sm-10">
						<button type="button" class="infobtn">기본정보</button>
						<button type="button" class="infobtn" onclick="addUploadVideo.lo">추가정보</button>
					</div>
					<div class="col-sm-2">
						<button id="uploadbtn" class="infobtn">게시</button>
                    </div>
                </thead>
                <tbody>
                    <tr>
                		<td align="center" style="vertical-align:middle"><video width="400px;" height="250px;" controls loop>
							<source src="" type=""><source src="nature.ogg" type=""></video>
						<input type="text" class="video_td" id="videoTitle" placeholder="동영상제목" value=""></td>
                    <tr>
                    	
                    </tr>
                    <tr>
                    	<td><input type="text" class="video_td" id="videoTag" style="width:400px" placeholder="태그(예:일상기록,여행,강아지,음식)" value=""></td>
                    </tr>
                    <tr>
                    	<td>
                    		<div style="float:right; width:50%;">정보보호여부
                    		<select>
	                    		<option>공개</option>
	                    		<option>비공개</option>
                    		</select></div>
                    		<div style="float:right; width:50%;"><p>시청등급을 선택하세요</p>
                    		<input type="checkbox" class="video_td" id="videoAllArea"> 전체 시청 가능<br>
                    		<input type="checkbox" class="video_td" id="videoNineteenArea"> 19세 이상 시청 가능</div>
                    	</td>
                    </tr>
                    <tr>
                    	<td>
                    		<p>광고 여부</p>
                    		<p>광고 여부 체크 시 아래의 문구가 자동으로 기재됩니다.<br>
                    		본 컨텐츠는 유료 제품 추천, 후원, 보증과 같은 유료 광고 내용이 포함되어 있습니다.</p>
                    		<input type="checkbox" class="video_td" id="videoAdv"> 영상 내 유료 ppl 포함<br>
                    		<input type="text" class="video_td" id="videoAdvInfo" placeholder="내용을 입력해주세요">                    	
                    	</td>
                    </tr>
                    
                    
                </tbody>
            </table>
             
        </div>
        </form>
    </div>     
</body>
</html>