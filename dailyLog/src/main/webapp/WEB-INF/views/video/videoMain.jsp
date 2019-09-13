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
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body{
	background:white;
}
	.chImg {
		width:60px; 
		height:60px;
		border:1px dashed gray;
		border-radius: 50%;
		/* vertical-align: middle; */
	}
   .form-control {
      box-shadow: none;      
      font-weight: normal;
      font-size: 12px; /* 검색부분 폰트사이즈 */
   }
   .form-control:focus {
      border-color: #33cabb;
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
	.navbar .form-wrapper , .navbar .form-wrapper .btn:hover {
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
	
/* button */
body {
	margin: 0;
	background: #eaedf1;
	font-family: 'Lato', sans-serif;
}
.header {
	background: white;
	padding: 30px;
	text-align: center !important;
}
.header h1 {
	font-weight: 300;
	display: inline;
}
h2 {
	color: #89867e;
	text-align: center !important;
	font-weight: 300;
}
.color {
	width: 350px;
	margin: 0 auto;
}
.color li {
	margin: 0 15px 0 0;
	width: 30px;
	height: 30px;
	display: inline-block;
	border-radius: 100%;
}
.color .yellow {background: #f0d264;}
.color .blue   {background: #6698cb;}
.content, 
.content-gradient, 
.content-3d {
  margin: 40px auto;
}
.content {
  width: 80%;
  max-width: 700px;
}
.content-3d {
  width: 50%;
  max-width: 300px;
}
pre {
	width: 100%;
	padding: 30px;
	background-color: rgba(0, 0, 0, 0.72);
	color: #f8f8f2;
	border-radius: 0 0 4px 4px;
	margin-top: 20px;
  white-space: pre-wrap; /* css-3 */
  white-space: -moz-pre-wrap; /* Mozilla, since 1999 */
  white-space: -pre-wrap; /* Opera 4-6 */
  white-space: -o-pre-wrap; /* Opera 7 */
  word-wrap: break-word; /* Internet Explorer 5.5+ */
}
pre .bt  {color: #f8f8f2;} /* <> */
pre .anc {color: #f92672;} /* anchor tag */
pre .att {color: #a6a926;} /* attribute */
pre .val {color: #e6db74;} /* value */
.btn-container, .container {
	background-color: white;
	border-radius: 4px;
	text-align: center !important;
	margin-bottom: 40px;
}
.container h2 {
	padding-top: 30px;
	font-weight: 300;
}
.btn, .btn-two {
	margin: 9px;
}
.btn-gradient {
	margin: 5px;
}
a[class*="btn"] {text-decoration: none;}
input[class*="btn"], 
button[class*="btn"] {border: 0;}
/* Here you can change the button sizes */
.btn.large, 
.btn-two.large, 
.btn-effect.large {
  padding: 20px 40px; 
  font-size: 22px;
}
.btn.small, 
.btn-two.small, 
.btn-gradient.small, 
.btn-effect.small {
  padding: 8px 18px;  
  font-size: 14px;
}
.btn.mini, 
.btn-two.mini, 
.btn-gradient.mini, 
.btn-effect.mini {
  padding: 4px 12px;  
  font-size: 12px;
}
.btn.block, 
.btn-two.block, 
.btn-gradient.block, 
.btn-effect.block {
  display: block;
  width: 60%;
  margin-left: auto;
  margin-right: auto;
  text-align: center !important;
}
.btn-gradient.large {
  padding: 15px 45px; 
  font-size: 22px;
}
/* Colors for .btn and .btn-two */
.btn.blue, .btn-two.blue     {background-color: #7fb1bf;}
.btn.yellow, .btn-two.yellow {background-color: #f0d264;}
.rounded {
  border-radius: 10px;
}
/* default button style */
.btn {
	position: relative;
	border: 0;
	padding: 15px 25px;
	display: inline-block;
	text-align: center !important;
	color: white;
}
.btn:active {
	top: 4px;	
}
/* color classes for .btn */
.btn.blue {box-shadow: 0px 4px #74a3b0;}
.btn.blue:active {box-shadow: 0 0 #74a3b0; background-color: #709CA8;}
.btn.yellow {box-shadow:0px 4px 0px #D1B757;}
.btn.yellow:active {box-shadow: 0 0 #ff4c4b; background-color: #D6BB59;}
/* Button two - I have no creativity for names */
.btn-two {
	color: white;	
	padding: 15px 25px;
	display: inline-block;
	border: 1px solid rgba(0,0,0,0.21);
	border-bottom-color: rgba(0,0,0,0.34);
	text-shadow:0 1px 0 rgba(0,0,0,0.15);
	box-shadow: 0 1px 0 rgba(255,255,255,0.34) inset, 
				      0 2px 0 -1px rgba(0,0,0,0.13), 
				      0 3px 0 -1px rgba(0,0,0,0.08), 
				      0 3px 13px -1px rgba(0,0,0,0.21);
}
.btn-two:active {
	top: 1px;
	border-color: rgba(0,0,0,0.34) rgba(0,0,0,0.21) rgba(0,0,0,0.21);
	box-shadow: 0 1px 0 rgba(255,255,255,0.89),0 1px rgba(0,0,0,0.05) inset;
	position: relative;
}
/* 3D Button */
.btn-3d {
	position: relative;
	display: inline-block;
	font-size: 22px;
	padding: 20px 60px;
	color: white !important;
	margin: 20px 10px 10px;
	border-radius: 6px;
	text-align: center !important;
	transition: top .01s linear;
	text-shadow: 0 1px 0 rgba(0,0,0,0.15);
}
.btn-3d.yellow:hover {background-color: #F0D264;}
.btn-3d.blue:hover   {background-color: #699DD1;}
.btn-3d:active {
	top: 9px;
}
/* 3D button colors */
.btn-3d.yellow {
	background-color: #F0D264;
	box-shadow: 0 0 0 1px #F0D264 inset,
				0 0 0 2px rgba(255,255,255,0.15) inset,
				0 8px 0 0 rgba(196, 172, 83, .7),
				0 8px 0 1px rgba(0,0,0,.4),
				0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.yellow:active {
	box-shadow: 0 0 0 1px #F0D264 inset,
				0 0 0 2px rgba(255,255,255,0.15) inset,
				0 0 0 1px rgba(0,0,0,0.4);
}
.btn-3d.blue {
	background-color: #6DA2D9;
	box-shadow: 0 0 0 1px #6698cb inset,
				0 0 0 2px rgba(255,255,255,0.15) inset,
				0 8px 0 0 rgba(110, 164, 219, .7),
				0 8px 0 1px rgba(0,0,0,.4),
				0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.blue:active {
	box-shadow: 0 0 0 1px #6191C2 inset,
				0 0 0 2px rgba(255,255,255,0.15) inset,
				0 0 0 1px rgba(0,0,0,0.4);
}
/* Gradient buttons */
.btn-gradient {
	text-decoration: none;
	color: white !important;
	padding: 10px 30px !important;
	display: inline-block;
	position: relative;
	border: 1px solid rgba(0,0,0,0.21);
	border-bottom: 4px solid rgba(0,0,0,0.21);
	border-radius: 4px;
	text-shadow: 0 1px 0 rgba(0,0,0,0.15);
}
.btn-gradient.blue {
	background: rgba(102,152,203,1);
	background: -moz-linear-gradient(top, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
	background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(102,152,203,1)), color-stop(100%, rgba(92,138,184,1)));
	background: -webkit-linear-gradient(top, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
	background: -o-linear-gradient(top, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
	background: -ms-linear-gradient(top, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
	background: linear-gradient(to bottom, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#6698cb', endColorstr='#5c8ab8', GradientType=0 );
}
.btn-gradient.yellow {
	background: rgba(240,210,100,1);
	background: -webkit-gradient(linear, 0 0, 0 100%, from(rgba(240,210,100,1)), to(rgba(229,201,96,1)));
	background: -webkit-linear-gradient(rgba(240,210,100,1) 0%, rgba(229,201,96,1) 100%);
	background: -moz-linear-gradient(rgba(240,210,100,1) 0%, rgba(229,201,96,1) 100%);
	background: -o-linear-gradient(rgba(240,210,100,1) 0%, rgba(229,201,96,1) 100%);
	background: linear-gradient(rgba(240,210,100,1) 0%, rgba(229,201,96,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f0d264', endColorstr='#e5c960', GradientType=0 );
}
.btn-gradient.yellow:active {background: #DBC05B;}
.btn-gradient.blue:active 	{background: #608FBF;}	


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
</head>
<body>
 	<%-- <jsp:include page="../common/mainBar.jsp"></jsp:include> --%>
	<br><br><br>
	<%-- <c:forEach items="${list}" --%>
	<div align="center">
		<table border="1px">
			<tr>
				<!-- 채널소개, 좋아요 등 -->
				<td width="60px" height="60px">
					<!-- 채널이미지 -->
					<div>
						<img class="chImg" src="resources/images/man.jpg">
					</div>
				</td>
				<td width="220px" height="60px">
					<div style="margin-left:10%;">
						<div style="margin-right:10%; display:inline-block;">${ list1[0].chNm }</div>
						<div style="display:inline-block;"><button>구독</button></div>
						<div style="display:inline-block; margin-left:5%;">
							<label id="regsubTY" style="color:gray; position:fixed;">
								<c:if test="${ status == 1 }">
									정기후원중
								</c:if>
								<c:if test="${ status == 0 }">
									정기후원중아님
								</c:if>
							</label>
						</div>
						<br>
						<small>구독자수 <b> ${ list2[0].subNum } </b><br></small>
						<small>게시일 : ${ list1[0].uploadDt }</samll>

					</div>
				</td>
				
				<td width="110px" height="60px">
					<div style="margin-top:28%; align:right;">
					<nav class="navbar navbar-default navbar-expand-lg navbar-light" style="border:none;">
							<ul class="nav navbar-nav navbar-right ml-auto" style="width:130px;">			
								<li class="nav-item">
									<a href="#none" data-toggle="dropdown">
										<img src="resources/images/dollar.png" style="width:15px; align:right;">
									</a>
									<ul class="dropdown-menu form-wrapper" style="width:280px;">					
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
																<input type="button" id="selectPoint" style="width:50px; text-align:center;" class="btn-gradient yellow mini" value="조회">
																<a href="" id="chargeBtn" style="width:50px; text-align:center;" class="btn-gradient blue mini">충전</a>
															</td>
														</tr>
																											
														<tr><td><small>후원</small></td></tr>
														<tr><td><input type="text" class="form-control" id="rPrice" placehold="후원금액을 입력하세요"></td></tr>
														<tr>
															<td>
																<a style="width:50px;text-align:center;" class="btn-gradient yellow mini" id="cancle1">취소</a>
																<input type="button" id="rOk" style="width:50px; text-align:center;" class="btn-gradient blue mini" value="후원"/>
																
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
																<input type="button" id="selectPoint2" style="width:50px; text-align:center;" class="btn-gradient yellow mini" value="조회">
																<a href="" id="chargeBtn" style="width:50px; text-align:center;" class="btn-gradient blue mini">충전</a>
															</td>
														</tr>
																											
														<tr><td><small>후원</small></td></tr>
														<tr><td><input type="text" class="form-control" id="oPrice" placehold="후원금액을 입력하세요"></td></tr>
														<tr>
															<td>
																<a style="width:50px;text-align:center;" class="btn-gradient yellow mini" id="cancle2">취소</a>
																<input type="button" id="oOk" style="width:50px; text-align:center;" class="btn-gradient blue mini" value="후원"/>
																
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
																<a style="width:50px;text-align:center;" class="btn-gradient yellow small" id="cancle3">취소</a>
																<a id="cau_ok" style="width:50px; text-align:center;" class="btn-gradient blue small">확인</a>
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
									<img src="resources/images/share.png" style="width:15px; align:right;">
									</a>
									<ul class="dropdown-menu form-wrapper" style="width:280px;">					
										<li>
											<div class="form-group" id="sub">
												<table class="noti_table">
													<tr><a id="regSub">공유</a></tr><br>
													<tr><a id="onceSub">일시후원</a></tr><br>
												</table>
											</div>
										</li>
									</ul>		
								</li>
								
								
							</ul>
						</nav>
						</div>
				</td>
				<td width="200px" height="60px">
					<div align="right" style="margin-top:15%;">
						<nav class="navbar navbar-default navbar-expand-lg navbar-light" style="border:none;">
							<ul class="nav navbar-nav navbar-right ml-auto" style="width:200px;">			
								<li class="nav-item">
									<a href="#none">
									<img src="resources/images/heart_black.png" style="width:15px;" onclick="selectLike()">
								</a>
								</li>
								
								<li class="nav-item">
									<a href="#none">
									<img src="resources/images/broken.png" style="width:15px;">
								</a>
								</li>
								
								<li class="nav-item">
								<a href="#none" data-toggle="dropdown">
									<img src="resources/images/bookmark.png" style="width:15px;">
								</a>
								</li>
								<li class="nav-item">
									<a href="myPage.me" class="btn_global link_login" onclick="account();">
									<img src="resources/images/more.png" style="width:15px;">
									</a>
									<ul class="dropdown-menu form-wrapper" style="width:280px;">					
										<li>
											<div class="form-group" id="sub">
												<table class="noti_table">
													<tr><a id="regSub">신고</a></tr><br>
													<tr><a id="onceSub">차단</a></tr><br>
													<tr><a id="share">공유</a></tr><br>
												</table>
											</div>
											<!-- 신고&차단 -->
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
																<a href="selectPoint.vd" id="selectPoint" style="width:50px; text-align:center;" class="btn-gradient yellow mini">조회</a>
																<a href="" id="chargeBtn" style="width:50px; text-align:center;" class="btn-gradient blue mini">충전</a>
															</td>
														</tr>
																											
														<tr><td><small>후원</small></td></tr>
														<tr><td><input type="text" class="form-control" id="rPrice" placehold="후원금액을 입력하세요"></td></tr>
														<tr>
															<td>
																<a style="width:50px;text-align:center;" class="btn-gradient yellow mini" id="cancle1">취소</a>
																<a id="rOk" style="width:50px; text-align:center;" class="btn-gradient blue mini">후원</a>
															</td>
														</tr>
													</table>
												</div>
											</div>
											
										</li>
									</ul>
								</li>
							</ul>
						</nav>
						
<!-- 					
						<img src="resources/images/heart_red.png" style="width:15px">
						<img src="resources/images/broken_color.png" style="width:15px">
						<img src="resources/images/bookmark_color.png" style="width:15px">
 -->
					</div>
				</td>
			</tr>
			<tr>
				<!-- 비디오 -->
				<td colspan="4" height="400px"><!-- autoplay="autoplay" -->
					  <video id='my-video' class='video-js' controls  preload='auto' width='800' height='450'
						  poster='resources/images/logo.png' data-setup='{}' >
						  <source src='resources/uploadFiles/${ list1[0].filepath}' type='video/mp4'>
						  <source src='MY_VIDEO.webm' type='video/webm'>
						  <p class='vjs-no-js'>
						      To view this video please enable JavaScript, and consider upgrading to a web browser that
						  <a href='https://videojs.com/html5-video-support/' target='_blank'>supports HTML5 video</a>
						  </p>
					  </video>
				</td>
				<!-- 댓글 -->
				<td rowspan="3" width="250px">
				</td>
			</tr>
			<tr>
				<!-- 영상 제목, 태그 -->
				<td colspan="4" height="130px">
					<div style="margin:15px;">
						<h3>${ list1[0].vTitle }</h3>
						<small>조회수  ${ list1[0].count }</small><br>
						<div>
							<a href="" style="color:blue;"><small>${ list1[0].tag }</small></a>
						</div>
					</div>
				</td>
			</tr>
			<tr>				
				<!-- 더보기 -->
				<td colspan="4" height="130px">
					더보기
				</td>
			</tr>
		</table>
	</div>
	
	<script>
		//좋아요 조회
		function selectLike(){
			var chNo = "<c:out value='${list2[0].chNo}'/>";
			var userNo = "<c:out value='${list2[0].userNo}'/>";
			var state = 0;
			
			if(state == 0){
				document.img2.src = "resources/images/heart_red.png";
				state = 1;
				$.ajax({
					url:"imgCheck.vd",
					type:"post",
					data:{chNo:chNo, userNo:userNo},
					success:function(data){
						console.log("성공!");
						
					},
					error:function(){
						console.log("실패!");
					}
				});
			}else {
				document.img2.src = "resources/images/heart_black.png";
				state = 0;
				$.ajax({
					url:"imgCheck.vd",
					type:"post",
					success:function(data){
						console.log("성공!");
						
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
/* 		//정산상태
		var userNo1 = "<c:out value='${list2[0].userNo}'/>";
		var chNo = "<c:out value='${list2[0].chNo}'/>";
		
			$.ajax({
				url:"regStatus.vd",
				type:"post",
				data:{userNo:userNo1,
						chNo:chNo},
				success:function(data){
					console.log("성공");
				},
				error:function(){
					console.log("실패");
				}
			}); */
			
			 $('#sub').show();
			 $('#rSub').hide();
			 $('#oSub').hide();
			 $('#caution').hide();
			 $('#charge').hide();
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
		 });
	</script>

	<br><br>
	<jsp:include page="../common/footer.jsp"></jsp:include> 
</body>
</html>