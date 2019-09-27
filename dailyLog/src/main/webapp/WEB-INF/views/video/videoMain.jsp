<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<style>
	body{
		color:#525252 !important;
		font-size: 13px;
	}
	.chImg {
		width:60px; 
		height:60px;
		/* border:1px dashed gray; */
		border-radius: 50%;
		/* vertical-align: middle; */
	}
	.userImg {
		width:40px; 
		height:40px;
		/* border:1px dashed gray; */
		border-radius: 50%;
		/* vertical-align: middle; */
	}
	.btn{
		background:#13334A;
		color:white !important;
	}
	.btn:hover {
		opacity:0.7;
	}
/************************************/	
   .form-control {
      box-shadow: none;      
      font-weight: normal;
      font-size: 12px; /* 검색부분 폰트사이즈 */
   }
   .form-control:focus {
      border-color: #33CC00;
      box-shadow: 0 0 8px rgba(0,0,0,0.1);
   }
	.navbar .nav li {
		position: relative;
	}
	.navbar .nav li a {
		color: #888;
	}
	.navbar .navbar-right li:first-child a {
		padding-right: 20px;
	}
	.navbar .nav-item i {
		font-size: 18px;
	}
	.navbar .dropdown-item i {
		font-size: 16px;
		min-width: 22px;
	}
	.navbar ul.nav li.active a, .navbar ul.nav li.open > a {
		background: transparent !important;
	}	
	.navbar ul.nav li.open > a.get-started-btn {
		color: #fff;
		background: #31bfb1 !important;
	}
	.navbar .dropdown-menu {
		border-radius: 1px;
		border-color: #e5e5e5;
		box-shadow: 0 2px 8px rgba(0,0,0,.08);
	}
	.navbar .nav .dropdown-menu li {
		color: #999;
		font-weight: normal;
	}
	.navbar .nav .dropdown-menu li a, .navbar .nav .dropdown-menu li a:hover, .navbar .nav .dropdown-menu li a:focus {
		padding: 8px 20px;
		line-height: normal;
	}
	.navbar .navbar-form {
		border: none;
	}
	.navbar .dropdown-menu.form-wrapper {
		width: 50px;
		padding: 20px; /* 알림 패딩 */
		left: auto;
		right: 0;
        font-size:14px; /* 알림 폰트 크기 */
	}
	.navbar .dropdown-menu.form-wrapper a {		
		color: gray;
		padding: 0 !important;
	}
	.navbar .dropdown-menu.form-wrapper a:hover{
		text-decoration: underline;
	}
	.navbar .form-wrapper {
		text-align: center;
		margin-bottom: 15px;
		font-size: 13px;
	}
	.navbar .form-wrapper , .navbar .form-wrapper  {
		color: #fff;
        margin: 0;
		padding: 0 !important;
		font-size: 13px;
		border: none;
		transition: all 0.4s;
		text-align: center;
		line-height: 34px;
		width: 47%;
		text-decoration: none;
    }	
	.navbar .navbar-right .dropdown-toggle::after {
		display: none;
	}
	@media (min-width: 1200px){
		.form-inline .input-group {
			width: 30px;
			margin-left: 30px;
		}
	}
	@media (max-width: 768px){
		.navbar .dropdown-menu.form-wrapper {
			width: 30%;
			padding: 0px 0px;
			background: transparent;
			border: none;
		}
		.navbar .form-inline {
			display: block;
		}
		.navbar .input-group {
			width: 30%;
		}
		.navbar .nav .btn-primary, .navbar .nav .btn-primary:active {
			display: block;
		}
	}
	
	a:link { color: black; text-decoration: none; color: black;}
	a:visited { color: black; text-decoration: none; color: black;}
 	a:hover { color: black; text-decoration: none; color: black;}
	a:active { color: black; text-decoration: none; color: black;}
	
/***************************/
     .social-btn .btn {
		color: #fff !important;
        margin-left:30px !important;
        margin-top: 10px !important;
		font-size: 15px !important;
        width: 45px !important;
        height: 45px !important;
        line-height: 38px !important;
        border-radius: 50% !important;
		font-weight: normal !important;
        text-align: center !important;
		border: none !important;
		transition: all 0.4s !important;
    }	
	.social-btn .btn:first-child {
		margin-left: 0 !important;
	}
	.social-btn :hover {
		opacity: 0.8 !important;
	}
	.social-btn .btn-primary {
		background: #33CC00 !important;
	}
	.social-btn .btn-info {
		background: #FFDD59;
	}
	.social-btn .btn-danger {
		background: #3B5998;
	}
	.social-btn .btn-primary:hover {
		opacity: 0.1 !important;
	}
	
	.social-btn .btn-info:hover {
		opacity: 0.1 !important;
	}
	
	.social-btn .btn-danger:hover {
		opacity: 0.1 !important;
	}
	.social-btn .btn i {
		font-size: 20px;
	} 

/****************************/
	.modal-confirm {	
		color: #8e8e8e;
		width: 450px;
	}
	.modal-confirm .modal-content {
		padding: 20px;
		border-radius: 5px;		
		border: none;
	}
	.modal-confirm .modal-header {
		border-bottom: none;   
        position: relative;
		text-align: center;
		border-radius: 5px 5px 0 0;
	}
	.modal-confirm h4 {
		color: #545557;
		text-align: center;
		font-size: 30px;
		margin: 0 0 25px;
	}
	.modal-confirm .form-control, .modal-confirm .btn {
		min-height: 40px;
		border-radius: 3px; 
	}
	.modal-confirm .close {
		background: #c0c3c8;
		position: absolute;
		top: 15px;
		right: 15px;
		color: #fff;
		text-shadow: none;
		opacity: 0.5;
		width: 22px;
		height: 22px;
		border-radius: 20px;
		font-size: 16px;
	}
	.modal-confirm .close span {
		position: relative;
		top: -1px;
	}
	.modal-confirm .close:hover {
		opacity: 0.8;
	}
	.modal-confirm .icon-box {
		color: #f95858;		
		display: inline-block;
		z-index: 9;
		text-align: center;
		position: relative;
		transform: scale(1.5);
	}
	.modal-confirm .icon-box i:first-child {
		font-size: 100px;
	}
	.modal-confirm .icon-box i:nth-child(2) {
		font-size: 138px;
		position: absolute;
		left: -19px;
		top: -23px;
		font-weight: bold;
		color: #fff;
	}
	.modal-confirm .icon-box i:last-child {
		font-size: 26px;
		position: absolute;
		left: 0;
		right: 0;
		margin: 0 auto;
		top: 44px;
	}
    .modal-confirm .btn {
        color: #fff;
        border-radius: 4px;
		background: #eeb711;
		text-decoration: none;
		transition: all 0.4s;
        line-height: normal;
		border-radius: 3px;
		margin: 30px 0 20px;
		padding: 6px 20px;
		min-width: 150px;
        border: none;
    }
	.modal-confirm .btn:hover, .modal-confirm .btn:focus {
		background: #eda645;
		outline: none;
	}
	.trigger-btn {
		display: inline-block;
		/* margin: 100px auto; */
	}
	/**********************************************/
	.table-wrapper {
        background: #fff;
        padding: 20px 25px;
        margin: 30px 0;
		border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        background:none;
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
		width: 100px;
	}
	table.table-striped.table-hover tbody tr:hover {
		background: #f5f5f5;
        background:none;
        /* opacity:0.8; */
	}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }	
    table.table td:last-child i {
		opacity: 0.9;
		font-size: 22px;
        margin: 0 5px;
    }
	table.table td a {
		font-weight: bold;
		color: #566787;
		display: inline-block;
		text-decoration: none;
		outline: none !important;
	}
	table.table td a:hover {
		color: #2196F3;
        background:none;
        /* opacity:0.8; */
	}
	table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #F44336;
    }
    table.table td i {
        font-size: 19px;
    }
	table.table .avatar {
		border-radius: 50%;
		vertical-align: middle;
		margin-right: 10px;
	}
 
    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
    }    

	/* Modal styles */
	.modal .modal-dialog {
		max-width: 400px;
	}
	.modal .modal-header, .modal .modal-body, .modal .modal-footer {
		padding: 20px 30px;
	}
	.modal .modal-content {
		border-radius: 3px;
	}
	.modal .modal-footer {
		background: #ecf0f1;
		border-radius: 0 0 3px 3px;
	}
    .modal .modal-title {
        display: inline-block;
    }
	.modal .form-control {
		border-radius: 2px;
		box-shadow: none;
		border-color: #dddddd;
	}
	.modal textarea.form-control {
		resize: vertical;
	}
	.modal .btn {
		border-radius: 2px;
		min-width: 100px;
	}	
	.modal form label {
		font-weight: normal;
	}	
	/*********************************************/
	.overlaybox {position:relative;width:360px;height:350px;background:url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/box_movie.png') no-repeat;padding:15px 10px;}
	.overlaybox div, ul {overflow:hidden;margin:0;padding:0;}
	.overlaybox li {list-style: none;}
	.overlaybox .boxtitle {color:#fff;font-size:16px;font-weight:bold;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png') no-repeat right 120px center;margin-bottom:8px;}
	.overlaybox .first {position:relative;width:247px;height:136px;background: url('http://127.0.0.1:8001/with/resources/images/newlogo3.png') no-repeat;margin-bottom:8px;}
	.first .text {color:#fff;font-weight:bold;}
	.first .triangle {position:absolute;width:48px;height:48px;top:0;left:0;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/triangle.png') no-repeat; padding:6px;font-size:18px;}
	.first .movietitle {position:absolute;width:100%;bottom:0;background:rgba(0,0,0,0.4);padding:7px 15px;font-size:14px;}
	.overlaybox ul {width:247px;}
	.overlaybox li {position:relative;margin-bottom:2px;background:#2b2d36;padding:5px 10px;color:#aaabaf;line-height: 1;}
	.overlaybox li span {display:inline-block;}
	.overlaybox li .number {font-size:16px;font-weight:bold;}
	.overlaybox li .title {font-size:13px;}
	.overlaybox ul .arrow {position:absolute;margin-top:8px;right:25px;width:5px;height:3px;background:url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/updown.png') no-repeat;} 
	.overlaybox li .up {background-position:0 -40px;}
	.overlaybox li .down {background-position:0 -60px;}
	.overlaybox li .count {position:absolute;margin-top:5px;right:15px;font-size:10px;}
	.overlaybox li:hover {color:#fff;background:#d24545;}
	.overlaybox li:hover .up {background-position:0 0px;}
	.overlaybox li:hover .down {background-position:0 -20px;}   
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>
<script type="text/javascript">
	$(document).on("click", ".navbar-right .dropdown-menu", function(e){
		e.stopPropagation();
	});
</script>
  <link href="https://vjs.zencdn.net/7.6.0/video-js.css" rel="stylesheet">

  <!-- If you'd like to support IE8 (for Video.js versions prior to v7) -->
  <script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
  <script src='https://vjs.zencdn.net/7.6.0/video.js'></script>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
 	 <meta property="fb:app_id" content="488886948633143" />
 	  <meta property="og:type"          content="website" />
		  <meta property="og:title"         content="일상 영상 공유 플랫폼 Daily Log - WITH" />
		  <meta property="og:url"           content="http://www.facebook.com/sharer/sharer.php?u=http://127.0.0.1:8001/with/video.vd?userNo=${list1[0].userNo}&vNo=${list1[0].vNo}" />
		  <meta property="og:description"   content="영상 플랫폼 Daily Log" />
		  <meta property="og:image"         content="http://127.0.0.1:8001/with/resources/images/logo.png" />
	
</head>
<body>
<script>
$("#reportCh").hide();
$("#moveChannel").click(){
	$("#reportChCh").show();
	
}

</script>
 	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<br>
	<%-- <c:forEach items="${list}" --%>
	<div style=" margin-left:10%;">
	<div style="align:center; display:inline-block;">
		<table>
			<tr>
				<!-- 채널소개, 좋아요 등 -->
				<td width="60px" height="60px">
					<!-- 채널이미지 -->
					<div align="right" style="margin-top:15%;">
						 <nav class="navbar navbar-default navbar-expand-lg navbar-light" style="background:none;">
							<ul class="nav navbar-nav navbar-right ml-auto">	 <!-- style="width:300px;" -->		
								<li class="nav-item" stlye="border:1px solid #A8B7BC;"> 
									<a href="#none" data-toggle="dropdown" id="profile">
										<!-- <img src="resources/images/chat.png" style="width:18px; align:right;"> -->
										<div>
											<c:if test="${profile != null}">
												<img class="chImg" src="resources/images/${profile}">
											</c:if>
											<c:if test="${profile == null}">
												<img class="chImg" src="resources/images/newlogo3.png">
											</c:if>
										</div>
									</a>

									  <ul class="dropdown-menu form-wrapper" style="width:280px;border:1px solid #A8B7BC;">					

									<!--
									<ul class="dropdown-menu form-wrapper" style="width:280px;border:1px solid #A8B7BC;">			-->		

										<li>
											<div class="form-group" id="chch">
												<table class="noti_table">
													<tr><a id="moveChannel">채널로 이동</a></tr><br>
													<tr><a id="reportChannel">신고</a></tr><br>
												</table>
											</div>
											<!-- 신고-->
											<div id="reportChCh">
												<div class="noti_text" align="center" style="margin-top:5%; width:350px;"><b>동영상신고</b></div>
												<div align="left" style="margin-left:10%; margin-right:10%;">
													<table class="noti_table">
														<tr><td>
															<div class="checks" style="display:inline-block;">
										                      <div style="display:inline-block;"><input type="radio" id="more1" value="성적인 콘텐츠" name="more" onclick="oneCheckbox(this)"></div>
										                      <div style="display:inline-block;"><label for="more1">성적인 콘텐츠</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" id="more2" value="폭력적 또는 혐오스러운 콘텐츠" name="more" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more2">폭력적 또는 혐오스러운 콘텐츠</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" value="증오 또는 악의적인 콘텐츠" id="more3" name="more" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more3">증오 또는 악의적인 콘텐츠</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" id="more4" value="유해한 위험 행위" name="more" onclick="oneCheckbox(this)"></div>
										                      <div style="display:inline-block;"><label for="more1">유해한 위험 행위</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" id="more5" value="아동 학대" name="more" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more2">아동 학대</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" value="테러 조장" id="more6" name="more" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more3">테러 조장</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" id="more7" value="스팸 또는 사용자 현혹 콘텐츠" name="more" onclick="oneCheckbox(this)"></div>
										                      <div style="display:inline-block;"><label for="more1">스팸 또는 사용자 현혹 콘텐츠</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" id="more8" value="권리 침해" name="more" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more2">권리 침해</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" value="자막 문제" id="more9" name="more" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more3">자막 문제</label></div><br>
										                      <small>Daily log<br> 커뮤니티 가이드를 위반한 계정을 제재를 받게 되며 심각하거나 반복적인 위반 행위에 대해서는 계정 해지 조치가 취해질 수 있습니다. <a href="" style="color:red;">채널 신고하기</a></small>	
										                    </div>
														</td></tr>
														<tr>
															<td>
																<button style="background:#A8B7BC;display:inline-block;width:100px;margin-right:5% !important;" class="btn" id="cancle4">취소</button>
																<button id="reportNext" style="width:100px;display:inline-block;" class="btn">다음</button><br><br>
															</td>
														</tr>
													</table>
												</div>
											</div>
											
											
										</li>

									</ul> 

							<!--		</ul> -->

								</li>


							</ul>
						</nav> 
					</div>
				</td>
				<td width="300px" height="60px">
					<div style="margin-left:3%;">
						<div style="margin-right:5%; display:inline-block;"><b>${ list1[0].chNm }</b></div>
						<div style="display:inline-block; margin-right:3%;">
							<label id="regsubTY" style="color:#525252;"></label>
						</div>
							<input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
					  		<input type="hidden"  id="retarget" name="retarget" value="${list1[0].userNo}"/>
							<input type="button" class="btn" id="subscribe" value="구독"><br>
						<small style="display:inline-block;">구독자 <b> ${ list2[0].subNum }명 </b><br></small>
					</div>
				</td>
				<td width="240px" height="60px">
					<div align="right" style="margin-top:15%;">
						<nav class="navbar navbar-default navbar-expand-lg navbar-light"style="background:none;">
							<ul class="nav navbar-nav navbar-right ml-auto" style="width:300px;">			
								<li class="nav-item" stlye="border:1px solid #A8B7BC;">
									<a href="#none" data-toggle="dropdown" id="subtitle">
										<img src="resources/images/money.png" style="width:18px; align:right;">
									</a>
									<ul class="dropdown-menu form-wrapper" style="width:280px;border:1px solid #A8B7BC;">					
										<li>
											<div class="form-group" id="sub">
												<table class="noti_table">
													<tr><a id="regSub">정기후원</a></tr><br>
													<tr><a id="onceSub">일시후원</a></tr><br>
												</table>
											</div>
											<!-- 정기후원 -->
											<div id="rSub">
												<div class="noti_text" align="center" style="margin-top:5%;"><b>정기후원</b></div>
												<div align="left" style="margin-left:10%; margin-right:10%;">
													<table class="noti_table">
														<tr><td><small>채널명</small></td></tr>
														<tr><td><b>${ list1[0].chNm }</b></td></tr>
														<tr><td><small>포인트조회</small></td></tr>
														<tr><td><input type="text" class="form-control" id="rPoint" placehold="포인트를 조회하세요" readonly></td></tr>
														<tr>
															<td>
																<input type="button" id="selectPoint" style="width:75px;margin-right:2% !important;background:#A8B7BC;margin-top:5%;margin-bottom:5%;" class="btn" value="조회">
																<input type="button" id="chargeBtn" style="width:75px; text-align:center;margin-top:5%;margin-bottom:5%;" class="btn" value="충전">
															</td>
														</tr>
																											
														<tr><td><small>후원</small></td></tr>
														<tr><td><input type="text" class="form-control" id="rPrice" placehold="후원금액을 입력하세요"></td></tr>
														<tr>
															<td>
																<button style="width:75px;margin-right:2% !important;text-align:center;background:#A8B7BC;margin-top:5%;margin-bottom:5%;" class="btn" id="cancle1">취소</button>
																<input type="button" id="rOk" style="width:75px; text-align:center;margin-top:5%;margin-bottom:5%;" class="btn" value="후원">
																<br><br>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<!-- 일시후원 -->
											<div id="oSub">
												<div class="noti_text" align="center" style="margin-top:5%;"><b>일시후원</b></div>
												<div align="left" style="margin-left:10%; margin-right:10%;">
													<table class="noti_table">
														<tr><td><small>채널명</small></td></tr>
														<tr><td><b>${ list1[0].chNm }</b></td></tr>
														<tr><td><small>포인트조회</small></td></tr>
														<tr><td><input type="text" class="form-control" id="oPoint" placehold="포인트를 조회하세요" readonly></td></tr>
														<tr>
															<td>
																<input type="button" id="selectPoint2" style="width:75px;margin-right:2% !important;background:#A8B7BC;margin-top:5%;margin-bottom:5%;" class="btn" value="조회">
																<input type="button" id="chargeBtn" style="width:75px;margin-right:2% !important;margin-top:5%;margin-bottom:5%;" class="btn" value="충전">
															</td>
														</tr>
																											
														<tr><td><small>후원</small></td></tr>
														<tr><td><input type="text" class="form-control" id="oPrice" placehold="후원금액을 입력하세요"></td></tr>
														<tr>
															<td>
																<button style="width:75px;margin-right:2% !important;background:#A8B7BC;margin-top:5%;margin-bottom:5%;" class="btn" id="cancle2">취소</button>
																<input type="button" id="oOk" style="width:75px;margin-right:2% !important;margin-top:5%;margin-bottom:5%;" class="btn" value="후원">
																<br><br>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<!-- 포인트 충전 경고창 -->
											<div id="caution">
												<div class="noti_text" align="center" style="margin-top:5%;">
													<img src="resources/images/caution.png" style="width:30px; margin:5%;"><br>
												</div>
												<div align="center" style="margin-left:10%; margin-right:10%; text-align:center">
													<table class="noti_table">
														<tr><td><b>포인트에 관한 공지</b></td></tr>
														<tr>
															<td>
																<small>회원님이 신고를 많이 받을 경우<br>블랙리스트가 되었을 경우에는<br>포인트을 받을 수 없으므로<br>이를 유의해 주시기를 바랍니다.</small>
															</td>
														</tr>
														<tr><td style="color:red;"><small><b>*자세한 내용은 공지사항을 참고해 주세요</b></small></td></tr>
														<tr>
															<td>
																<button style="background:#A8B7BC;text-align:center;" class="btn" id="cancle3">취소</button>
																<button id="cau_ok" style=" text-align:center;" class="btn">확인</button>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<!-- 충전 -->
											<div id="charge">
												
											</div>
										</li>
									</ul>
								</li>
								<li class="nav-item">
									<a href="#none">
									<img src="resources/images/heart_black.png" id="like" style="width:18px;" onclick="selectLike()">
								</a>
								</li>
								
								<li class="nav-item">
									<a href="#none">
									<img src="resources/images/broken.png" id="hate" style="width:18px;" onclick="selectHate()">
								</a>
								</li>
								
								<li class="nav-item">
								<a href="#none">
									<img src="resources/images/bookmark.png" id="bookmark" style="width:18px;" onclick="selectBookmark()">
								</a>
								</li>
								<li class="nav-item" >
									<a href="#none" data-toggle="dropdown" id="threeMore">
									<img src="resources/images/more.png"  style="width:18px; align:right;">
									</a>
									<ul class="dropdown-menu form-wrapper" style="width:280px;border:1px solid #A8B7BC;">					
										<li>
											<div class="form-group" id="more">
												<table class="noti_table" align="center">
													<tr><td><a id="report">신고</a></td></tr>
													<tr><td><a id="block">차단</a></td></tr>
													<tr><td><a id="share">공유</a></td></tr>
												</table>
											</div>
											<!-- 신고 -->
											<div id="report1">
												<div class="noti_text" style="margin-top:5%; width:350px;"><b style="text-align:center;">동영상신고</b></div>
												<div align="left" style="margin-left:10%; margin-right:10%;">
													<table class="noti_table">
														<tr><td>
															<div class="checks" style="display:inline-block;">
										                      <div style="display:inline-block;"><input type="radio" id="more1" value="성적인 콘텐츠" name="more" onclick="oneCheckbox(this)"></div>
										                      <div style="display:inline-block;"><label for="more1">성적인 콘텐츠</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" id="more2" value="폭력적 또는 혐오스러운 콘텐츠" name="more" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more2">폭력적 또는 혐오스러운 콘텐츠</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" value="증오 또는 악의적인 콘텐츠" id="more3" name="more" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more3">증오 또는 악의적인 콘텐츠</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" id="more4" value="유해한 위험 행위" name="more" onclick="oneCheckbox(this)"></div>
										                      <div style="display:inline-block;"><label for="more1">유해한 위험 행위</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" id="more5" value="아동 학대" name="more" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more2">아동 학대</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" value="테러 조장" id="more6" name="more" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more3">테러 조장</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" id="more7" value="스팸 또는 사용자 현혹 콘텐츠" name="more" onclick="oneCheckbox(this)"></div>
										                      <div style="display:inline-block;"><label for="more1">스팸 또는 사용자 현혹 콘텐츠</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" id="more8" value="권리 침해" name="more" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more2">권리 침해</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" value="자막 문제" id="more9" name="more" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more3">자막 문제</label></div><br>
										                      <small>Daily log<br> 커뮤니티 가이드를 위반한 계정을 제재를 받게 되며 심각하거나 반복적인 위반 행위에 대해서는 계정 해지 조치가 취해질 수 있습니다. <a href="" style="color:red;">채널 신고하기</a></small>	
										                    </div>
														</td></tr>
														<tr>
															<td>
																<button style="background:#A8B7BC;display:inline-block;width:100px;margin-right:5% !important;" class="btn" id="cancle4">취소</button>
																<button id="reportNext" style="width:100px;display:inline-block;" class="btn">다음</button><br><br>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<!-- 차단 -->
											<div id="block1">
												<div class="noti_text" align="center" style="margin-top:5%;">
													<img src="resources/images/caution.png" style="width:30px; margin:5%;"><br>
												</div>
												<div align="center" style="margin-left:10%; margin-right:10%; text-align:center">
													<table class="noti_table">
														<tr><td><b>채널 차단에 관한 공지</b></td></tr>
														<tr>
															<td>
																<small>앞으로 <b>${ list1[0].chNm }</b>채널에 대한 ${ list1[0].vTitle } 영상을<br> 볼 수 없게 됩니다.</small>
															</td>
														</tr>
														<tr><td style="color:red;"><small><b>*자세한 내용은 공지사항을 참고해 주세요</b></small></td></tr>
														<tr>
															<td>
																<button class="btn" style="width:100px;margin-right:5% !important;background:#A8B7BC;" id="cancle5">취소</button>
																<button id="blockOk" style="width:100px;"class="btn">확인</button><br><br>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<!-- 공유 -->
											<div id="share1">
												<div class="social-btn text-center">
													<a href="#" class="btn btn-primary btn-lg" title="Facebook" style="padding-top:5px !important;">
														<i class="fa fa-naver" style="font-weight: 900">N</i>
													</a> 
													<a href="#" class="btn btn-info btn-lg" title="Twitter" style="padding-top:5px !important;">
														<i class="fa fa-kakaotalk" style="font-weight: 900">K</i>
													</a><!--  --> 
													<a href="http://www.facebook.com/sharer/sharer.php?u=http://127.0.0.1:8001/with/video.vd?userNo=${list1[0].userNo}&vNo=${list1[0].vNo}" class="btn btn-danger btn-lg" title="Facebook" style="padding-top:5px !important;">
														<i class="fa facebook" style="font-weight: 900">F</i>
													</a>
												</div>
												<br>
												<input type="botton" onclick="copyUrl(value)" id="clipboard" style="width:200px;" 
													value="http://127.0.0.1:8001/with/video.vd?userNo=${list1[0].userNo}&vNo=${list1[0].vNo}" readonly>
												<br><br>
											</div>
										</li>
									</ul>
								</li>
							</ul>
						</nav>
					
					</div>
				</td>
			</tr>
		  <tr>
				<!-- 비디오 -->
				<td colspan="4" height="500px"><!-- autoplay="autoplay" -->
					<c:if test="${list1[0].adultAut eq 'Y' }">
						<video id='my-video' class='video-js' controls  preload='auto' width='700' height='500'
						  poster='resources/uploadFiles/${thumb}' data-setup='{}' >
						  <source src='resources/uploadFiles/${ list1[0].fileNm}' type='video/mp4'>
						  <source src='MY_VIDEO.webm' type='video/webm'>
						</video>
					</c:if>	
					<c:if test="${list1[0].adultAut eq 'N' }">
						<c:if test="${age < 19 }">
							<a href="#myModal" class="trigger-btn" data-toggle="modal">
								<video id='my-video' class='video-js'   preload='auto' width='700' height='500'
								  poster='resources/images/age.png' data-setup='{}' >
								  <source src='resources/uploadFiles/${ list1[0].fileNm}' type='video/mp4'>
								  <source src='MY_VIDEO.webm' type='video/webm'>
								</video>
							</a>
						</c:if>
						<c:if test="${age >= 19 }">
							<video id='my-video' class='video-js' controls  preload='auto' width='700' height='500'
							  poster='resources/uploadFiles/${thumb}' data-setup='{}' >
							  <source src='resources/uploadFiles/${ list1[0].fileNm}' type='video/mp4'>
							  <source src='MY_VIDEO.webm' type='video/webm'>
							</video>
						</c:if>	
					</c:if>
				</td>
			<!-- 댓글 -->
			</tr >
			<tr>
				<!-- 영상 제목, 태그 -->
				<td colspan="4" height="130px">
					<div style="margin:20px;">
						<h3>${ list1[0].vTitle }</h3>
						<div style="margin-top:1%;">
							<a href="" style="color: #525252;"><b>${ list1[0].tag }</b></a>
						</div>
						<div style="margin-top:1%;"><small>조회수  ${ list1[0].count }</small></div>
						<div style="margin-top:1%;"><small>게시일 ${ list1[0].uploadDt }</small></div>
					</div>
					<div>
						<hr style="border-color:#A8B7BC; height:30px;">
					</div>
				</td>
			</tr>
			<tr>
				<!-- 더보기 -->
				<td colspan="4">
					<div class="moreInfo" style="margin-left:2%; cursor:pointer; font-weight:bold;">영상에 나오는 정보 자세히 보기 V </div>
					<div style="margin-bottom:5%;"></div>
					<div class="moreLocation" style="margin-left:5%;">
						<div>
							<div style="margin-top:5%; margin-bottom:5%; align:center;"><hr style="border-color:#A8B7BC;"></div>
							<c:forEach items="${addPlace }" var="ap">
								<b><c:out value="${ap.apNm }"/></b>&emsp;&emsp;&emsp;&emsp;
								<c:out value="${ap.apAd }"/><hr>
							</c:forEach>
							
							<%-- <b><c:out value="${addInfo[0].addCt }"/></b> --%>
						</div>
						<div style="margin:5%; align:center;"></div>
						<div id="map" style="width:95%;height:350px;"></div>
						<c:set var="addCt" value="${ fn:split(addInfo[0].addCt, ' ') }"/>
						<div style="margin:5%; align:center;"></div>
						<c:forEach var="ac" items="${ addCt }">
							${ac }<br><br><br>
						</c:forEach>
					</div>
				</td>
			</tr>
			
		</table>
	</div>
	
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1bbe6319293d273f5cc3cd430eba39d2&libraries=services"></script>
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(37.502, 127.026581), // 지도의 중심좌표
			        level: 6 // 지도의 확대 레벨
			    };
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			// 커스텀 오버레이에 표시할 내용입니다     
			// HTML 문자열 또는 Dom Element 입니다 
			var content = '<div class="overlaybox">' +
			    '    <div class="boxtitle">금주 영화순위</div>' +
			    '    <div class="first">' +
			    '        <div class="triangle text">1</div>' +
			    '        <div class="movietitle text">드래곤 길들이기2</div>' +
			    '    </div>' +
			    '</div>';
			
			// 커스텀 오버레이가 표시될 위치입니다 
			var position = new kakao.maps.LatLng(37.49887, 127.026581);  
			
			// 커스텀 오버레이를 생성합니다
			var customOverlay = new kakao.maps.CustomOverlay({
			    position: position,
			    content: content,
			    xAnchor: 0.3,
			    yAnchor: 0.91
			});
			
			// 커스텀 오버레이를 지도에 표시합니다
			customOverlay.setMap(map);
			
			// 지도에 마커를 표시합니다 
			var marker = new kakao.maps.Marker({
			    map: map, 
			    position: new kakao.maps.LatLng(37.4989347355231,127.032854329609)
			});
			
			
			
			// 커스텀 오버레이에 표시할 컨텐츠 입니다
			// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
			// 별도의 이벤트 메소드를 제공하지 않습니다 
			var content = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '			${addPlace[0].apNm}' + 
			            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">${addPlace[0].apAd}</div>' + 
			            '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
			            '                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			
			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlay = new kakao.maps.CustomOverlay({
			    content: content,
			    map: map,
			    position: marker.getPosition()       
			});
			
			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(marker, 'click', function() {
			    overlay.setMap(map);
			});
			
			// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			function closeOverlay() {
			    overlay.setMap(null);     
			}
		</script>
		
<!-- 		<script>
 			var mapContainer = document.getElementById('map2'), // 지도의 중심좌표
			    mapOption = { 
			        center: new kakao.maps.LatLng(37.49887, 127.026581), // 지도의 중심좌표
			        level: 2 // 지도의 확대 레벨
			    };  
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			// 지도에 마커를 표시합니다 
			var marker = new kakao.maps.Marker({
			    map: map, 
			    position: new kakao.maps.LatLng(37.4991408445888,127.03031219445)
			});
			
			// 커스텀 오버레이에 표시할 컨텐츠 입니다
			// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
			// 별도의 이벤트 메소드를 제공하지 않습니다 
			var content = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '			${list2[0].chNm}' + 
			            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">제주특별자치도 제주시 첨단로 242</div>' + 
			            '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
			            '                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			
			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlay = new kakao.maps.CustomOverlay({
			    content: content,
			    map: map,
			    position: marker.getPosition()       
			});
			
			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(marker, 'click', function() {
			    overlay.setMap(map);
			});
			
			// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			function closeOverlay() {
			    overlay.setMap(null);     
			}
		</script> -->
		
	<!-- <div style="border-left:1px solid #A8B7BC;height:500px;"></div> -->

	<div style="align:center; display:inline-block; margin-left:3%; margin-top:5%; height:100%;position:absolute;">
		<!-- 댓글 -->
		<div style="margin-bottom:7%; margin-left:3%;">
			<div style="pointer:cursor !important;" data-toggle="dropdown" id="runtimeChat">
				<img src="resources/images/chat.png" style="width:30px; align:right;">&emsp; 실시간 채팅 다시보기
			</div>
		</div>
		<div id="chatForm" style="margin-top:5%;color:white; width:430px; height:350px; text-align:center; background-color:#13334A; border-radius:10%; margin-bottom:10%; opacity:0.6;">
			<div style="overflow:auto; padding:10px; width:425px; height:260px;">
				<div id="messageWindow" style="margin:5%;">
					
					
				</div> 
			</div>
			<!-- 채팅 -->
			<div style="margin-top:4%; opacity:1;">
           		<div style="width:50px; display:inline-block;">
       			    <div>
						<c:if test="${userImg != null}">
							<img class="userImg" src="resources/uploadFiles/${userImg}" style="margin-bottom:30px;">
						</c:if>
						<c:if test="${userImg == null}">
							<img class="userImg" src="resources/images/newlogo3.png" style="margin-bottom:30px;">
						</c:if>	
					</div>
           		</div>
         		<div style="display:inline-block; margin-left:1%; margin-right:1%;">
     			    <div class="input-group">
						<input type="text" id="inputMessage" name="chatInput" value="" placeholder="실시간 채팅에 참여하세요" style="background:none !important; width:250px; color:white;" onkeyup="enterkey()">
					</div>
           		</div>
           		<div style="display:inline-block;">
           			<input type="button" id="insertChat" class="btn" value="작성" onclick="send();" style="width:60px; margin-bottom:30px; background:#A8B7BC;">
           			
					<!-- <a><i class="material-icons">&#xE876;</i></a> -->
           		</div>
			</div>
		</div>	
		<nav class="navbar navbar-default navbar-expand-lg navbar-light"style="background:none; border:none;">
			<ul class="nav navbar-nav navbar-right ml-auto">					
		       <table class="table table-striped table-hover">
		      <tbody> 
		           	<c:forEach var="r" items="${reply}" >
		           		<c:if test="${r.parentNo == 0}">
		                <tr  style="background:none !important;">
		                	<td><input type="hidden" class="repNoThis" style="display:none;"value="${r.repNo }" ></td>
		                    <td width="60px">
		                    	<div style="margin-top:10px;">
									<c:if test="${r.fileNm != null}">
										<img class="userImg" src="resources/images/${r.fileNm}">
									</c:if>
									<c:if test="${r.fileNm == null}">
										<img class="userImg" src="resources/images/newlogo3.png">
									</c:if>	
								</div>
		                    </td>
		                    <td width="100px">
		                    	<div style="margin-top:20px;">${ r.nickName }</div>
		                    	<div style="margin-top:20px;">${ r.repNo }</div>
		                    	
		                    </td>
		                    <td width="200px">
		                    	<div>
		                    		<div style="font-size:12px;margin-top:5%;margin-bottom:5%;">
		                    			${ r.repDt }
		                    		</div>
		                    		<div style="font-size:15px;margin-top:5%;margin-bottom:5%;">
		                     		 	${ r.repCt }
		                    		</div>
		                    		<div style="display:inline-block;">
		                    			<div style="display:inline-block;">
		                    				<input type="hidden" class="repNoThis2" style="display:none;"value="${r.repNo }" >
		                    			</div>
		                    			<div style="display:inline-block;">
		                    				<li class="nav-item" >
												<!-- <a href="#none">
												<img src="resources/images/heart_black.png"  class="replyLike" style="width:14px;" >
											</a> -->
											<button style="background:none; border:none;" class="replyLike"><img src="resources/images/heart_black.png" id="replyLikeImg" style="width:14px;"></button>
											</li>
		                    			</div>
		                    			<div style="display:inline-block;">
		                    				<li class="nav-item" >
 									 			<!-- <a href="#none">
												<img src="resources/images/broken.png" id="replyHate" style="width:14px;">
											</a> -->
											<button style="background:none; border:none;" class="replyHate"><img src="resources/images/heart_black.png" id="replyHateImg" style="width:14px;"></button>
											</li>
		                    			</div>
		                    				<a href="# ">
												<input type="hidden" value="${r.repNo }" class="rereplyrepno" >
												<img src="resources/images/plus.png" class="replyplus"  style="width:14px;" >
											</a>
											
											<!-- plus -->
										<!-- 대댓글 작성 창 -->
		                    			<div style="display:inline-block;" class="writeReReply1">
												 <input type="hidden" name="rereplyrepno" class="rereplyrepno"value= "${r.repNo}" >
												 <input type="text" name="rereplycontent" id="rereplycontent"  style="border:1px solid #A8B7BC; background:none;" >
												 
												<input type="submit" class="writeReReply" style="background:none;  margin-right:10%; border:none;" value="대댓글 등록">
		        			
		                    			</div>
		                    			<div style="margin-top:5%;">
 		                    				<input type="button" class="plus" style="background:none;  margin-right:10%; border:none;" value="답글 ${fn:length(reply)}개 더보기">
		                    			</div>
		                    			
		                    			<!-- 답글 더보기 -->
 										<div style="margin-top:5%;">
		                    			 <input type="button" class="plus" style="background:none;  margin-right:10%; border:none;" value="답글  더보기">
		                    			</div>
 										
 										
 									  <div class="replyPlus">
										<div style="display:block;">
											<table class="table table-striped table-hover" style="background:none;">
										           <tbody>
									       
 		                    			   <c:if test="${r.parentNo !=0 }">     
 		                    		 
 		                    			 
 		                    			 <%-- 	<c:forEach var="l" items="${reply}" >
 		                    			 
		           							<c:if test="${l.parentNo eq l.parentNo}">
										      <h5>${l.parentNo} ,${l.repNo}</h5>
 		                    			
 		                    			
 		                    			
 		                    			</c:if></c:forEach> --%>
 		                    			  <h3>12</h3>
 		                    			          <h5>${r.parentNo}</h5>
										          <h5>${r.repNo}</h5>
										                <tr  style="background:none !important;">
										                    <td width="60px">
										                    	<div style="margin-top:10px;">
																	 <c:if test="${r.fileNm != null}">
																		<img class="userImg" src="resources/images/${r.fileNm}">
																	</c:if>
																	  <c:if test="${r.fileNm == null}"> 
																		<img class="userImg" src="resources/images/newlogo3.png">
																	</c:if>	
																</div>
										                    </td>
										                    <td width="100px">
										                    	<div style="margin-top:20px;">${ r.nickName }</div>
										                    </td>
										                    <td width="200px">
										                    	<div>
										                    		<div style="font-size:15px;margin-top:5%;margin-bottom:5%;">
										                     		 	${ r.repCt }
										                    		</div>
										                    		<div style="display:inline-block;">
										                    			<div style="display:inline-block;">
													                   		<li class="nav-item">
																				<a href="#none">
																				<img src="resources/images/heart_black.png" id="like" style="width:14px;" onclick="selectLike()">
																			</a>
																			</li>
										                    			</div>
										                    			<div style="display:inline-block;">
																			<li class="nav-item">
																				<a href="#none">
																				<img src="resources/images/broken.png" id="hate" style="width:14px;" onclick="selectHate()">
																			</a>
																			</li>
										                    			</div>
										                    		</div>
										                    		<div style="font-size:12px;margin-top:5%;margin-bottom:5%;">
										                    			${ r.repDt }
										                    		</div>
										                    	</div>
										                    </td>
										                    <td>
										                        <a href="#editEmployeeModal" class="edit" data-toggle="modal"></a>
										                        <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><img src="resources/images/more.png" style="width:18px;"></a>
										                    </td>
										                </tr>
		                    		</c:if>	 
		                    
										           </tbody>
										       </table>
										</div>
									</div>                      
		                    		</div>
		                    	</div>
		                    </td>
		                    <td>
		                    	<c:if test="${r.userNo == loginUser.userNo}">
                    	          	<!-- Edit Modal HTML -->
									<div id="editEmployeeModal" class="modal fade">
										<div class="modal-dialog">
											<div class="modal-content">
												<form>
													<div class="modal-header">						
														<h4 class="modal-title">댓글 수정</h4>
														<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
													</div>
													<div class="modal-body">					
														<div class="form-group">
															<%-- <label>#{ reply.nickName }</label> --%>
															<input type="text" class="form-control" id="replyUpdateText" required>
														</div>	
													</div>
													<div class="modal-footer">
													<input class="repNoThis3" style="display:none;"value="${r.repNo }" >
														<input id="replyUpdate" class="btn" value="Save">
													</div>
												</form>
											</div>
										</div>
									</div>
										<!-- Delete Modal HTML -->
									<div id="deleteEmployeeModal" class="modal fade">
										<div class="modal-dialog">
											<div class="modal-content">
												<form>
													<div class="modal-header">						
														<h4 class="modal-title">댓글 삭제</h4>
														<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
													</div>
													<div class="modal-body">					
														<p> <br> 정말 삭제하시겠습니까?</p>
														<p class="text-warning"><small>삭제하시면 복구할 수 없습니다.</small></p>
													</div>
													<div class="modal-footer">
													<input class="repNoThis4" style="display:none;"value="${r.repNo }" >
														<input id="replyDelete" class="btn btn-danger" value="Delete">
													</div>
												</form>
											</div>
										</div>
									</div>
			                    	<li class="nav-item" >
										<a href="#none" data-toggle="dropdown" id="threeMore">
										<img src="resources/images/more.png"  style="width:18px; align:right;">
										</a>
										<ul class="dropdown-menu form-wrapper" style="width:15px;border:1px solid #A8B7BC;">					
											<li>
												<div class="form-group" id="more">
													<table class="noti_table" align="center">
														<tr>
															<td>
																<div>
																<a href="#editEmployeeModal" class="edit" data-toggle="modal">
																	<i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;
																	<label style="font-size:13px;">수정</label></i>
																</a>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<a href="#deleteEmployeeModal" class="delete" data-toggle="modal">
																	<i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;
																	<label style="font-size:13px;">삭제</label></i>
																</a>
															</td>
														</tr>
													</table>
												</div>
											</li>
										</ul>
									</li>
		                    	
		                    	</c:if>
		                    	<c:if test="${r.userNo != loginUser.userNo}">
		                        <li class="nav-item" >
									<a href="#none" data-toggle="dropdown" id="threeMore">
										<img src="resources/images/more.png" class="plusImg" style="width:18px; align:right;">
									</a>
<!-- 									<script>
										$(".replyReportNext").click(function(){
											var a = $(this).siblings().eq(0).val();
											console.log("나는 대머리" + a);
										});
									</script> -->
									<ul class="dropdown-menu form-wrapper" style="width:350px;border:1px solid #A8B7BC;">					
										<li>
											<!-- 신고 -->
											<div>
												<div class="noti_text" style="margin-top:5%; width:350px;"><b style="text-align:center;">동영상신고</b></div>
												<div align="left" style="margin-left:10%; margin-right:10%;"><!-- onclick="repNoThis(this.value);" -->
													<table class="noti_table">
														<tr><td>
															<div class="checks1" style="display:inline-block;">
										                      <div style="display:inline-block;"><input type="radio" id="more1" value="원치 않는 상업적 콘텐츠 또는 스팸" name="replyReport" onclick="oneCheckbox(this)"></div>
										                      <div style="display:inline-block;"><label for="more1">원치 않는 상업적 콘텐츠 또는 스팸</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" id="more2" value="포르노 또는 음란물" name="replyReport" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more2">포르노 또는 음란물</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" id="more5" value="아동 학대" name="replyReport" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more5">아동 학대</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" id="more8" value="증오심 표현 또는 노골적인 폭력" name="replyReport" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more8">증오심 표현 또는 노골적인 폭력</label></div><br>
										                      <div style="display:inline-block;"><input type="radio" value="희롱 또는 괴롭힘" id="more9" name="replyReport" onclick="oneCheckbox(this)"></div> 
										                      <div style="display:inline-block;"><label for="more9">희롱 또는 괴롭힘</label></div><br>
										                    </div>
														</td></tr>
														<tr>
															<td>
																<input type="text" class="repNoThis" style="display:none;"value="${r.repNo }" >
																<button style="background:#A8B7BC;display:inline-block;width:100px;margin-right:5% !important;" class="btn" id="cancle4">취소</button>
																<button class="btn replyReportNext" style="width:100px;display:inline-block;" class="btn">다음</button><br><br>
															</td>
														</tr>
													</table>
												</div>
											</div>
										</li>
									</ul>
								</li>
								</c:if>
		                    </td>
		                </tr>
		                 	</c:if>
		                 	
					</c:forEach>
		           </tbody>  </table></ul></nav>  
  

		           <tfoot>
		           		<div style="width:50px; display:inline-block;">
		       			    <div>
								<c:if test="${userImg != null}">
									<img class="userImg" src="resources/images/${userImg}" style="margin-bottom:30px;">
								</c:if>
								<c:if test="${userImg == null}">
									<img class="userImg" src="resources/images/newlogo3.png" style="margin-bottom:30px;">
								</c:if>	
							</div>
		           		</div>
		         		<div style="display:inline-block; margin-left:1%; margin-right:1%;">
		     			    <div class="input-group">
								<input type="text" id="replycontent" class="form-control" placeholder="Search&hellip;" style="background:none !important; width:250px;">
							</div>
		           		</div>
		           		<div style="display:inline-block;">
		           			<input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
			  				<input type="hidden"  id="retarget" name="retarget" value="${list1[0].userNo}"/>
		           			<input type="button" id="insertReply" style="width:100%; margin-bottom:30px; background:#A8B7BC;" class="btn" value="댓글 작성">
							<!-- <a><i class="material-icons">&#xE876;</i></a> -->
		           		</div>
		           </tfoot>
		       </table>
			</ul>
		</nav>
	</div>
	</div>

	<!-- Modal HTML -->
	<div id="myModal" class="modal fade">
		<div class="modal-dialog modal-confirm">
			<div class="modal-content">
				<div class="modal-header">
					<div class="icon-box">
						<i class="material-icons">&#xE86B;</i>
						<i class="material-icons">&#xE86B;</i>
						<i class="material-icons">&#xE645;</i>
					</div>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span>&times;</span></button>
				</div>
				<div class="modal-body text-center">
					<h4>19세 미만 시청 불가</h4>	
					<p>19세 미만 시청자는 시청할 수 없습니다.</p>
					<button class="btn btn-primary" style="background:#13334A;"data-dismiss="modal">Go Back</button>
				</div>
			</div>
		</div>
	</div> 
	<script>
	//좋아요 조회
	$("#replyUpdate").click(function(){
		var vNo = "<c:out value='${list1[0].vNo}'/>";
		var update = document.getElementById("replyUpdateText").value;
		
        var repNo = $(this).siblings().eq(0).val();
		console.log("일까:" + repNo);
		
		console.log(vNo  + update);
		$.ajax({
	        	url:"replyUpdate.vd",
				type:"post",
				data:{vNo:vNo,
					  update:update,
					  repNo:repNo},
				success:function(data){
					console.log("성공!");
					
					window.location.reload();
				},
				error:function(){
					console.log("실패!");
				}
	        });
	});
	$("#replyDelete").click(function(){
		var vNo = "<c:out value='${list1[0].vNo}'/>";
		
        var repNo = $(this).siblings().eq(0).val();
		console.log(":" + repNo);
		
		console.log(vNo);
		$.ajax({
	        	url:"replyDelete.vd",
				type:"post",
				data:{vNo:vNo,
					  repNo:repNo},
				success:function(data){
					console.log("성공!");
					window.location.reload();
				},
				error:function(){
					console.log("실패!");
				}
	        });
	});
	
	//대댓글
		$(".writeReReply1").hide();
	 
  	$(".replyplus").click(function(){
	 if(state==0){
		 $(".writeReReply1").show();
		 state=1;
	 } else{
		 $(".writeReReply1").hide();
		 state=0;
	 }
	});  
  //대댓글 더보기
  	 	$(".plus").click(function(){
	 if(state==0){
		 $(".replyPlus").show();
		 state=1;
	 } else{
		 $(".replyPlus").hide();
		 state=0;
	 }
	}); 
  	
  	//대댓글 작성
  	$(".writeReReply").click(function(){
  	 
  		var vNo = "<c:out value='${list1[0].vNo}'/>";
		var content = document.getElementById("rereplycontent").value;
		var userNo = "<c:out value='${list2[0].userNo}'/>";
  		var repNo=$(".rereplyrepno").val();
  		var parentNo =$(".rereplyrepno").val();
  		
  		console.log(vNo+","+content+","+userNo+","+","+repNo);
  		$.ajax({
  			url:"writeReReply.vd",
  			type:"post",
  			data:{vNo:vNo,repNo:repNo,content:content,userNo:userNo,parentNo:parentNo},
  			success:function(data){
  				alert("성공");
  				$("#rereplycontent").val("");
  				window.location.reload();
  			},error:function(){
  				alert("실패ㅠㅠ");
  			}
  			
  		});
  	});	
	$(".replyLike").click(function(){
		var chNo = "<c:out value='${list2[0].chNo}'/>";
		var vNo = "<c:out value='${list1[0].vNo}'/>";
		console.log(chNo + "::" + vNo);
		
        var repNo = $(this).parent().parent().siblings().eq(0).children().val();
		console.log("나는 대머리일까:" + repNo);
		/* var rn = $(this).parent().sibling().eq(0).parent().parent().eq(0).children().val();
		console.log(rn); */
		if(state == 0){
				
			$('#replyLikeImg').attr("src", "resources/images/heart_red.png");
			$('#replyHateImg').attr("src", "resources/images/broken.png");
			$.ajax({
				url:"insertReplyLike.vd",
				type:"post",
				data:{chNo:chNo, vNo:vNo, repNo:repNo},
				success:function(data){
					console.log("insert성공!");
					state = 1;
				},
				error:function(){
					console.log("실패!");
				}
			});
			$.ajax({
				url:"deleteReplyHate.vd",
				type:"post",
				data:{chNo:chNo, vNo:vNo, repNo:repNo},
				success:function(data){
					console.log("delete성공!");
					state = 0;
				},
				error:function(){
					console.log("실패!");
				}
			});
		}else {
			$('#replyLikeImg').attr("src", "resources/images/heart_black.png");
			
			$.ajax({
				url:"deleteReplyLike.vd",
				type:"post",
				data:{chNo:chNo, vNo:vNo, repNo:repNo},
				success:function(data){
					console.log("delete성공!");
					state = 0;
				},
				error:function(){
					console.log("실패!");
				}
			});
		}
	});
	//싫어요 조회
	$(".replyHate").click(function(){
		var chNo = "<c:out value='${list2[0].chNo}'/>";
		var vNo = "<c:out value='${list1[0].vNo}'/>";
		console.log(chNo + "::" + vNo);
		
		var repNo = $(this).parent().parent().siblings().eq(0).children().val();
		console.log("나는 대머리일까:" + repNo);
		
		if(state == 0){
			$('#replyHateImg').attr("src", "resources/images/broken_color.png");
			$('#replyLikeImg').attr("src", "resources/images/heart_black.png");
			$.ajax({
				url:"insertReplyHate.vd",
				type:"post",
				data:{chNo:chNo, vNo:vNo, repNo:repNo},
				success:function(data){
					console.log("insert성공!");
					state = 1;
				},
				error:function(){
					console.log("실패!");
				}
			});
			$.ajax({
				url:"deleteReplyLike.vd",
				type:"post",
				data:{chNo:chNo, vNo:vNo, repNo:repNo},
				success:function(data){
					console.log("delete성공!");
					state = 0;
				},
				error:function(){
					console.log("실패!");
				}
			});
		}else {
			$('#replyHateImg').attr("src", "resources/images/broken.png");
			$.ajax({
				url:"deleteReplyHate.vd",
				type:"post",
				data:{chNo:chNo, vNo:vNo, repNo:repNo},
				success:function(data){
					console.log("delete성공!");
					state = 0;
				},
				error:function(){
					console.log("실패!");
				}
			});
		}
	});
	$("#insertReply").click(function(){
		var vNo = "<c:out value='${list1[0].vNo}'/>";
		var content = document.getElementById("replycontent").value;
		var userNo = "<c:out value='${list2[0].userNo}'/>";
		//var repNo = $(this).siblings().eq(0).val();
	 
		console.log(vNo +","+ content+","+userNo);
		
		$.ajax({
	        	url:"insertReply.vd",
				type:"post",
				data:{vNo:vNo,
					content:content,
					  userNo:userNo},
				success:function(data){
					console.log("성공!");
					$("#content").val("");
					window.location.reload();
					/* $(".replyReload").location().reload() */
				},
				error:function(){
					console.log("실패!");
				}
	        });
	});
	
	
	(function(d, s, id) {
	    var js, fjs = d.getElementsByTagName(s)[0];
	    if (d.getElementById(id)) return;
	    js = d.createElement(s); js.id = id;
	    js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
	    fjs.parentNode.insertBefore(js, fjs);
	  }(document, 'script', 'facebook-jssdk'));

		function copyUrl(value){
			var textArea = document.createElement("textArea");
			document.body.appendChild(textArea);
			textArea.value = 'http://127.0.0.1:8001/with/video.vd?userNo=${list1[0].userNo}&vNo=${list1[0].vNo}';
			textArea.select();
			
			document.execCommand('copy');
			document.body.removeChild(textArea);
			
		}
	
	    function oneCheckbox(a){
	        var obj = document.getElementsByName("more");
	
	        for(var i=0; i<obj.length; i++){
	            if(obj[i] != a){ obj[i].checked = false;}
	            //console.log(obj[i].value + "::" + a.value);
	        }
	        
	        var check = a.value;
	        return check;
	    }
	    //댓글신고
	    $('.replyReportNext').click(function(){
			var lists = [];
			$("input[name='replyReport']:checked").each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
		  		lists.push($(this).val());
		 	});

			var repNo = $(".repNoThis").val();
			console.log("::"+repNo);
			
	        var userNo = "<c:out value='${list2[0].userNo}'/>";
			var check = lists[0];
	        var chNm = "<c:out value='${list2[0].chNm}'/>";
	        var vTitle = "<c:out value='${list1[0].vTitle}'/>";
	        var a = $(this).siblings().eq(0).val();
			console.log("나는 대머리다" + a);
			console.log(lists);
	        $.ajax({
	        	url:"replyReport.vd",
				type:"post",
				data:{check:check, 
					  userNo:userNo,
					  chNm:chNm,
					  vTitle:vTitle,
					  repNo:repNo},
				success:function(data){
					console.log("성공!");
					if(data == 1){
						alert("신고가 정상접수 되었습니다.");
					}else {
						alert("신고 접수 실패하였습니다.");
					}
				},
				error:function(){
					console.log("실패!");
				}
	        });
	        
		});
	  //신고
		$('#reportNext').click(function(){
			var lists = [];
			$("input[name='more']:checked").each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
		  		lists.push($(this).val());
		 	});
			
			console.log(lists);
			
			var check = lists[0];
	        var userNo = "<c:out value='${list2[0].userNo}'/>";
	        var vNo = "<c:out value='${list1[0].vNo}'/>";
	        var chNm = "<c:out value='${list2[0].chNm}'/>";
	        var vTitle = "<c:out value='${list1[0].vTitle}'/>";
			
	        console.log(check + ", " + userNo + ", " + vNo + ", " + chNm + ", " + vTitle);
	        $.ajax({
	        	url:"report.vd",
				type:"post",
				data:{check:check, 
					  userNo:userNo,
					  vNo:vNo,
					  chNm:chNm,
					  vTitle:vTitle},
				success:function(data){
					console.log("성공!");
					if(data == 1){
						alert("신고가 정상접수 되었습니다.");
					}else {
						alert("신고 접수 실패하였습니다.");
					}
				},
				error:function(){
					console.log("실패!");
				}
	        });
	        
		});
		$('#blockOk').click(function(){
	        var chNo = "<c:out value='${list2[0].chNo}'/>";
	        var vNo = "<c:out value='${list1[0].vNo}'/>";
			
	        console.log(chNo + ", " + vNo);
	        $.ajax({
	        	url:"block.vd",
				type:"post",
				data:{chNo:chNo,
					  vNo:vNo},
				success:function(data){
					console.log("성공!");
					if(data = 1){
						alert("차단되었습니다.");
						location.href="home.mb";
					}else{
						alert("차단 실패했습니다.");
					}
					//state = data;
				},
				error:function(){
					console.log("실패!");
				}
	        });
	        
		});
		var state = 0;
		$('#subscribe').click(function(){
			var chNo = "<c:out value='${list2[0].chNo}'/>";
			var chNm = "<c:out value='${list2[0].chNm}'/>";
			var userNo = "<c:out value='${list2[0].userNo}'/>";
			
			console.log(chNo);

			if(state == 0){
				document.getElementById('subscribe').value = "구독중";
				
				$.ajax({
					url:"subInsert.vd",
					type:"post",
					data:{chNo:chNo,
						chNm:chNm,
						userNo:userNo},
					success:function(data){
						console.log("insert성공!");
						state = 1;
					},
					error:function(){
						console.log("실패!");
					}
				});
			}else {
				document.getElementById('subscribe').value = "구독";
				$.ajax({
					url:"subDelete.vd",
					type:"post",
					data:{chNo:chNo,
						chNm:chNm,
						userNo:userNo},
					success:function(data){
						console.log("delete성공!");
						state = 0;
					},
					error:function(){
						console.log("실패!");
					}
				});
			}
		});
		//좋아요 조회
		function selectLike(){
 
			var chNo = "<c:out value='${list2[0].chNo}'/>";
			var vNo = "<c:out value='${list1[0].vNo}'/>";
			console.log(chNo + "::" + vNo);
			if(state == 0){
				document.getElementById('like').src = "resources/images/heart_red.png";
				document.getElementById('hate').src = "resources/images/broken.png";
				$.ajax({
					url:"insertLike.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("insert성공!");
						state = 1;
					},
					error:function(){
						console.log("실패!");
					}
				});
				$.ajax({
					url:"deleteHate.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("delete성공!");
						state = 0;
					},
					error:function(){
						console.log("실패!");
					}
				});
			}else {
				document.getElementById('like').src = "resources/images/heart_black.png";
				
				$.ajax({
					url:"deleteLike.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("delete성공!");
						state = 0;
					},
					error:function(){
						console.log("실패!");
					}
				});
			}
		}
		//싫어요 조회
		function selectHate(){
			var chNo = "<c:out value='${list2[0].chNo}'/>";
			var vNo = "<c:out value='${list1[0].vNo}'/>";
			console.log(chNo + "::" + vNo);
			if(state == 0){
				document.getElementById('hate').src = "resources/images/broken_color.png";
				document.getElementById('like').src = "resources/images/heart_black.png";
				$.ajax({
					url:"insertHate.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("insert성공!");
						state = 1;
					},
					error:function(){
						console.log("실패!");
					}
				});
				$.ajax({
					url:"deleteLike.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("delete성공!");
						state = 0;
					},
					error:function(){
						console.log("실패!");
					}
				});
			}else {
				document.getElementById('hate').src = "resources/images/broken.png";
				
				$.ajax({
					url:"deleteHate.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("delete성공!");
						state = 0;
					},
					error:function(){
						console.log("실패!");
					}
				});
			}
		}
		//북마크 조회
		function selectBookmark(){
			var chNo = "<c:out value='${list2[0].chNo}'/>";
			var vNo = "<c:out value='${list1[0].vNo}'/>";
			console.log(chNo + "::" + vNo);
			if(state == 0){
				document.getElementById('bookmark').src = "resources/images/bookmark_color.png";
				
				$.ajax({
					url:"insertBookmark.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("insert성공!");
						state = 1;
						alert("북마크에 추가되었습니다.");
					},
					error:function(){
						console.log("실패!");
					}
				});
			}else {
				document.getElementById('bookmark').src = "resources/images/bookmark.png";
				
				$.ajax({
					url:"deleteBookmark.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("delete성공!");
						alert("북마크에서 삭제되었습니다.");
						state = 0;
					},
					error:function(){
						console.log("실패!");
					}
				});
			}
		}
		//정기후원금액
		$('#rOk').click(function(){
			var chNo = "<c:out value='${list2[0].chNo}'/>";
			var point = $('#rPoint').val();
			var price = $('#rPrice').val();
			
			//console.log(parseInt(point) - parseInt(price));
			
			if(parseInt(price) <= parseInt(point)){
				var remain = parseInt(point) - parseInt(price);
				
				console.log(remain + ", " + price + ", " + chNo);
				
				$.ajax({
					url:"regSub.vd",
					type:"post",
					data:{remain:remain, 
						  price:price, 
						  chNo:chNo},
					success:function(data){
						console.log("성공");
						console.log(typeof(data));
						console.log(data);
						var hi = "정기후원증"
						if(data == 1 ){
							$('#regsubTY').text("정기후원증");
						}else {
							console.log("result = 0");
						}
						
					},
					error:function(){
						console.log('실패');
					}
				});
			}else {
				alert("포인트가 부족합니다.");
			}
		});
		//일시후원금액
		$('#oOk').click(function(){
			var chNo = "<c:out value='${list2[0].chNo}'/>";
			var point = $('#oPoint').val();
			var price = $('#oPrice').val();
			
			//console.log(parseInt(point) - parseInt(price));
			
			if(parseInt(price) <= parseInt(point)){
				var remain = parseInt(point) - parseInt(price);
				
				console.log(remain + ", " + price + ", " + chNo);
				
				$.ajax({
					url:"onceSub.vd",
					type:"post",
					data:{remain:remain, 
						  price:price, 
						  chNo:chNo},
					success:function(data){
						alert("<c:out value='${list2[0].chNm}'/>님에게 " + price + "원 후원하였습니다.");						
					},
					error:function(){
						console.log('실패');
					}
				});
			}else {
				alert("포인트가 부족합니다.");
			}
		});
		//포인트조회
		 $('#selectPoint').click(function(){
			var userNo = "<c:out value='${list2[0].userNo}'/>";

			$.ajax({
				url:"selectPoint.vd",
				type:"post",
				data:{userNo:userNo},
				success:function(data){
					
					console.log("success" +data);
					$('#rPoint').val(data + " 포인트");
				},
				error:function(){
					console.log('실패!');
				}					
			});
		});  
		 $('#selectPoint2').click(function(){
				var userNo = "<c:out value='${list2[0].userNo}'/>";

				$.ajax({
					url:"selectPoint.vd",
					type:"post",
					data:{userNo:userNo},
					success:function(data){
						
						console.log("success" +data);
						$('#oPoint').val(data + " 포인트");
					},
					error:function(){
						console.log('실패!');
					}					
				});
			}); 
		//후원 div 
		 $(document).ready(function(){

			 
				$(".replyPlus").hide();
				var check = 0;
				/* $(".plus").click(function(){
					if(check == 0){
						$(".replyPlus").show();
						check=1;
					}else {
						$(".replyPlus").hide();
						check=0;
					}
				}); */
				$(".replyPlus").click(function(){
					if(check == 0){ 
						$(".replyPlus").show();
						check=1;
					}else {
						$(".replyPlus").hide();
						check=0;
					}
				});
				
				
			 var chNo = "<c:out value='${list2[0].chNo}'/>";
			 var vNo = "<c:out value='${list1[0].vNo}'/>";
				$.ajax({
					url:"regStatus.vd",
					type:"post",
					data:{chNo:chNo},
					success:function(data){
						$('#regsubTY').text("정기후원증");
						console.log("success reg " +data);
					},
					error:function(){
						console.log('실패!');
					}					
				});
				$.ajax({
					url:"selectLike.vd",
					type:"post",
					data:{vNo:vNo},
					success:function(data){
						 
						if(data ==1){
							document.getElementById('like').src = "resources/images/heart_red.png";
						}else {
							document.getElementById('hate').src = "resources/images/broken_color.png";
						}
						console.log("success " +data);
					},
					error:function(){
						console.log('실패!');
					}					
				});
			 
				$.ajax({
					url:"selectBook.vd",
					type:"post",
					data:{vNo:vNo},
					success:function(data){
						document.getElementById('bookmark').src = "resources/images/bookmark_color.png";
						console.log("success book " +data);
					},
					error:function(){
						console.log('실패!');
					}					
				});
			 
			
			$('#subtitle').click(function(){
				 $('#sub').show();
				 $('#rSub').hide();
				 $('#oSub').hide();
				 $('#caution').hide();
				 $('#charge').hide();
				 //return false;
			});
			 //정기후원
			 $('#regSub').click(function(){
				 $('#sub').hide();
				 $('#rSub').show();
				 $('#oSub').hide();
				 $('#caution').hide();
				 $('#charge').hide();
				 return false;
			 });
			 //정기 취소
			 $('#cancle1').click(function(){
				 $('#sub').show();
				 $('#rSub').hide();
				 $('#oSub').hide();
				 $('#caution').hide();
				 $('#charge').hide();
				 return false;
			 });
			 //일시후원
			 $('#onceSub').click(function(){
				 $('#sub').hide();
				 $('#rSub').hide();
				 $('#oSub').show();
				 $('#caution').hide();
				 $('#charge').hide();
				 return false;
			 });
			 //일시 취소
			 $('#cancle2').click(function(){
				 $('#sub').show();
				 $('#rSub').hide();
				 $('#oSub').hide();
				 $('#caution').hide();
				 $('#charge').hide();
				 return false;
			 });
			 //경고창
			 $('#caution').click(function(){
				 $('#sub').hide();
				 $('#rSub').hide();
				 $('#oSub').hide();
				 $('#caution').show();
				 $('#charge').hide();
				 return false;
			 });
			 //경고창 취소
			 $('#cancle3').click(function(){
				 $('#sub').show();
				 $('#rSub').hide();
				 $('#oSub').hide();
				 $('#caution').hide();
				 $('#charge').hide();
				 return false;
			 });
			 //충전버튼
			 $('#chargeBtn').click(function(){
				 $('#sub').hide();
				 $('#rSub').hide();
				 $('#oSub').hide();
				 $('#caution').show();
				 $('#charge').hide();
				 return false;
			 });
			 //경고창 확인
			 $('#cau_ok').click(function(){
				 $('#sub').hide();
				 $('#rSub').hide();
				 $('#oSub').hide();
				 $('#caution').hide();
				 $('#charge').show();
				 return false;
			 });
			 $('#threeMore').click(function(){
				 $('#more').show();
				 $('#report1').hide();
				 $('#block1').hide();
				 $('#share1').hide();
				 //return false;
			 });
			 //$('#report1').hide();

			 $('#report').click(function(){
				 $('#more').hide();
				 $('#report1').show();
				 $('#block1').hide();
				 $('#share1').hide();
				 return false;
			 });
			 $('#block').click(function(){
				 $('#more').hide();
				 $('#report1').hide();
				 $('#block1').show();
				 $('#share1').hide();
				 return false;
			 });
			 $('#share').click(function(){
				 $('#more').hide();
				 $('#report1').hide();
				 $('#block1').hide();
				 $('#share1').show();
				 return false;
			 });
			 $('#cancle4').click(function(){
				 $('#more').show();
				 $('#report1').hide();
				 $('#block1').hide();
				 $('#share1').hide();
				 return false;
			 });
			 $('#cancle5').click(function(){
				 $('#more').show();
				 $('#report1').hide();
				 $('#block1').hide();
				 $('#share1').hide();
				 return false;
			 });

		 });
	</script>


<script>
//대댓글 가져오기
var repNo=$(".rereplyrepno").val();
function Rereplylist(){
	$.ajax({
		url:''
	});
	
}




</script>


<script>
	$(document).ready(function(){
		var state = 0;
		$(".moreLocation").hide();
		$(".moreInfo").click(function(){
			if(state == 0){
				$(".moreLocation").show();
				state = 1;
				$(".moreInfo").text("영상에 나오는 정보 자세히 보기 ㅡ");
			}
			else {
				$(".moreLocation").hide();
				state = 0;
				$(".moreInfo").text("영상에 나오는 정보 자세히 보기 V");
			}
		});
		$(".chatForm").hide();
		$("#runtimeChat").click(function(){
			if(state == 0){
				$(".chatForm").show();
				state = 1;
			}
			else {
				$(".chatForm").hide();
				state = 0;
			}
		});
	});
</script>

 <script>
      $(function(){
   	   var sub = $("#subscribe").val();
		$("#subscribe").click(function(){
			
			if(sub == "구독"){
				console.log(sub);
				var videoUserNo = $(this).parent().children("#retarget").val();
				var loginUserNo = $(this).parent().children("#userNo").val();
				console.log(videoUserNo);
				console.log(loginUserNo);
				var msg = loginUserNo + "&" + videoUserNo;
				ws2.send(msg);
			}
		});
   	   
		$("#insertReply").click(function(){
			
				var videoUserNo = $(this).parent().children("#retarget").val();
				var loginUserNo = $(this).parent().children("#userNo").val();
				console.log(videoUserNo);
				console.log(loginUserNo);
				var msg = loginUserNo + "&" + videoUserNo;
				ws2.send(msg);
			
		});
	});
</script>
<script type="text/javascript">

var socket;
var login_ids={};
    var textarea = document.getElementById("messageWindow");
    var nickname="${loginUser.nickname}";
    var webSocket = new WebSocket('ws://192.168.0.24:8001/with/broadcasting');
    /* socket.emit('login','nickname'); */
    var inputMessage = document.getElementById('inputMessage');
    console.log(inputMessage);
    webSocket.onerror = function(event) {
        onError(event)
    };
    webSocket.onopen = function(event) {
        onOpen(event)
    };
    webSocket.onmessage = function(event) {
        onMessage(event)
    };
   function onMessage(event) {
	   var chat_id ="${loginUser.nickname}";
/* 	   $("#messageWindow").html("  <p class='chat_content'>"+chat_id  +"님이 채팅에 참여하였습니다.</p> ");  
 */	   console.log("event"+event);
        var message = event.data.split("|");
        var sender = message[0];
        var content = message[1];
        alert("11");
       
        if (content == "") {
        	 
        } /* else {
            if (content.match("/")) {
                if (content.match(("/" + $("#chat_id").val()))) {
                    var temp = content.replace("/" + $("#chat_id").val(), "(귓속말) :").split(":");
                   
                    if (temp[1].trim() == "") {
                    } else {
                        $("#messageWindow").html($("#messageWindow").html() + "<p class='whisper'>"
                            + sender + content.replace("/" + $("#chat_id").val(), "(귓속말) :") + "</p>");
                    }
                } else {
                }
            }  */else {
                if (content.match("/")) {
                	
                    $("#messageWindow").html($("#messageWindow").html()
                        + "<p class='chat_content'><b class='impress'>" + sender + " : " + content + "</b></p>");
                } else {
                    $("#messageWindow").html($("#messageWindow").html()
                        + "<p class='chat_content'>" + sender + " : " + content + "</p>");
                }
            }
       
    } 
    function onOpen(event) {
    	var chat_id ="${loginUser.nickname}";
    	console.log(chat_id);
    	console.log(event+"11");
      $("#messageWindow").append("  <p class='chat_content'>"+chat_id  +"님이 채팅에 참여하였습니다.</p> ");  
   
        
       /*  if (inputMessage.value == "") {
        } else {
            $("#messageWindow").html($("#messageWindow").html()
            		("  <p class='chat_content'>" +chat_id+ "님이 채팅에 참여하였습니다."+"</p> "));
            
        } */
        webSocket.send(chat_id  +"님이 채팅에 참여하였습니다." + inputMessage.value);
      /*   inputMessage.value = ""; */
        
        
        
    }
  /*   function onError(event) {
        alert(event.data);
    } */
    function send() {
    	var chat_id ="${loginUser.nickname}";
    	var message = inputMessage.value;
    	
        if (inputMessage.value == "") {
        } else {
            $("#messageWindow").html($("#messageWindow").html()
                + "<p class='chat_content'>  "+"<b>"+chat_id+"<b>" + inputMessage.value + "</p>");
            
        }
        
        
        webSocket.send(chat_id + "|" + inputMessage.value);
        inputMessage.value = "";
    }
    //     엔터키를 통해 send함
    function enterkey() {
        if (window.event.keyCode == 13) {
            send();
        }
    }
    //     채팅이 많아져 스크롤바가 넘어가더라도 자동적으로 스크롤바가 내려가게함
    /* window.setInterval(function() {
        var elem = document.getElementById('messageWindow');
        elem.scrollTop = elem.scrollHeight;
    }, 0); */
</script>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<jsp:include page="../common/footer.jsp"></jsp:include> 
</body>
</html>