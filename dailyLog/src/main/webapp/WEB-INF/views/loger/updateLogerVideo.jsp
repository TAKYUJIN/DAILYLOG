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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	.table-wrapper {
		width: 90%;
        padding: 20px;
       	margin-left:250px;
    }
    .selectVideo {
		width:90%;
		margin:0 auto;
	}
    .searchLogerVideoForm {
		width:90%;
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
 	   width:90%;
        border-color: #e9e9e9;
    }
    table.table-striped tbody tr:nth-of-type(odd) {
    	background:none;
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
    	width:90%;
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
    
	
	.infobtn {
		margin-top:20px;
		margin-bottom:20px;
		width:100px;
		border:1px solid #13334A;
		border-radius:5px;
		background:#13334A;
		padding:8px;
		color:#FFF;
	}
	
	.infobtn2 {
		margin-top:20px;
		margin-bottom:20px;
		width:100px;
		border:1px solid #A8B7BC;
		border-radius:5px;
		background:#A8B7BC;
		padding:8px;
		color:#FFF;
	}
	
	input:focus {outline:none;}
	
	.video_th {
		vertical-align:middle;
	}
</style>
</head>
<body>
<jsp:include page="../common/logerBar.jsp"></jsp:include>
    <div class="selectVideo">
    <form action="updateLogerVideo.lo" method="post" class="searchLogerVideoForm">
        <div class="table-wrapper">
            <div class="table-title" style="width:900px;">
                <div class="row">
                    <div class="col-sm-8"><h2>Loger Video <b>Edit</b></h2></div>
                    
                </div>
            </div>
            
            <table class="table table-striped">
                <thead>
					<div class="info_btn col-sm-7">
						<button type="button" class="infobtn">기본정보</button>
						<button type="button" class="infobtn2" onclick="addUploadVideo.lo">추가정보</button>
					</div>
					<div class="col-sm-5">
						<button type="submit" id="uploadbtn" class="infobtn">수정</button>
                    </div>
                </thead>
                <tbody>
                	<c:forEach items="${vList}" var="v">
							 <input type="hidden"  id="vNo" name="vNo" value="${v.vNo}"/>
                    <tr>
                		<td style="vertical-align:middle"><video id='my-video' class='video-js' width="500px;"
							height="300px;" controls loop poster='resources/uploadFiles/${v.afileNm}'
							onclick="location.href='video.vd?userNo=${v.userNo}&vNo=${v.vNo}'">
							 <source src="resources/uploadFiles/${v.fileNm}" type='video/mp4'></video>
						</td>
                    </tr>
                    <tr>
                    	<td>
                    	<b><input type="text" class="video_td" id="videoTitle" name="vTitle" placeholder="동영상제목" value="${v.vTitle}" 
						onfocus="this.select()" style="border:none;background:transparent;font-size:20px;"></b>
                    	</td>
                    </tr>
                    <tr>
                    	<td><input type="text" class="video_td" id="videoTag" name="vTag" style="width:400px;border:none;background:transparent;" 
                    	placeholder="태그(예:#일상기록 #여행 #강아지 #음식)" value="${v.tag}" onfocus="this.select()"></td>
                    </tr>
                    <tr>
                    	<td>
                    		<div style="float:right; width:40%;">정보보호여부
                    		<select id="selectOpen">
	                    		<option id="openY" value="Y" name="openTY">공개</option>
	                    		<option id="openN" value="N" name="openTY">비공개</option>
                    		</select></div>
                    		<div style="float:right; width:60%;"><p>시청등급을 선택하세요</p>
                    		<input type="checkbox" class="video_td" id="videoAllArea" name="adultAut" value="Y"> 전체 시청 가능<br>
                    		<input type="checkbox" class="video_td" id="videoNineteenArea" name="adultAut" value="N"> 19세 이상 시청 가능</div>
                    	</td>
                    </tr>
                    <tr>
                    	<td>
                    		<p>광고 여부</p>
                    		<p>광고 여부 체크 시 아래의 문구가 자동으로 기재됩니다.<br>
                    		본 컨텐츠는 유료 제품 추천, 후원, 보증과 같은 유료 광고 내용이 포함되어 있습니다.</p>
                    		<input type="checkbox" class="video_td" id="videoAdv" name="adYN"> 영상 내 유료 ppl 포함<br>
                    		<input type="text" class="video_td" id="videoAdvInfo" placeholder="내용을 입력해주세요" name="adInfo"
                    		value="${v.adInfo}" style="border: none; background: transparent;" onfocus="this.select()">                    	
                    	</td>
                    </tr>
                    
                    </c:forEach>
                </tbody>
            </table>
             
        </div>
        </form>
    </div>     
    <script>

    $(function(){
    	var adultAut = '${adultAut}';
    	var adYN = '${adYN}';
    	var openTY = '${openTY}';
    	
    	if(adultAut == "Y"){
    		$("input:checkbox[id='videoAllArea']").prop("checked", true);
    		$("input:checkbox[id='videoNineteenArea']").prop("checked",false);
    	}else{
    		$("input:checkbox[id='videoNineteenArea']").prop("checked",true);
    		$("input:checkbox[id='videoAllArea']").prop("checked", false);
    	}
    	
    	if(adYN == "Y"){
    		$("input:checkbox[id='videoAdv']").prop("checked", true);
    	}else{
    		$("input:checkbox[id='videoAdv']").prop("checked", false);
    	}
    	
    	/*   if(openTY == "Y"){
    		$("#selectOpen option:eq(0)").prop("selected", true);
    		 $("#openY").prop("selected", true); 
    	}else{
    		$("#selectOpen option:eq(1)").prop("selected", false);
    		 $("#openN").prop("selected", false);
    	} 
    	 */ 
    	
    	$("#selectOpen").on("change", function(){
    		if(openTY == "Y"){
    			 $("#openY").prop("selected", true); 
    		}else{
    			$("#openN").prop("selected", false);
    		}
    		
    		if(openTY == "N"){
   			 $("#openN").prop("selected", true); 
   			}else{
   			$("#openY").prop("selected", false);
   			}
    	 
    	});

    	
    });
    
    </script>
</body>
</html>