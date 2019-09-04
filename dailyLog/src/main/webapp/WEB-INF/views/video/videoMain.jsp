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
<style>

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

/* 알림창 */
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
		margin: 100px auto;
	}
</style>
<script type="text/javascript">
	$(document).on("click", ".navbar-right .dropdown-menu", function(e){
		e.stopPropagation();
	});
</script>
</head>
<body>
 	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<br><br><br>
	
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
				<td width="180px" height="60px">
					<div style="margin-left:10%;">
						<div>
							<div style="margin-right:10%; display:inline-block;">채널명</div>
							<div style="display:inline-block;"><button>30만</button></div>
						</div>
						<p>게시일 : 2019.09.03</p>
					</div>
				</td>
				<td width="150px" height="60px"></td>
				<td width="200px" height="60px">
					<div align="right" style="margin-top:15%;">
						<nav class="navbar navbar-default navbar-expand-lg navbar-light" style="border:none;">
							<ul class="nav navbar-nav navbar-right ml-auto" style="width:265px;">			
								<li class="nav-item">
									<a href="#none" data-toggle="dropdown">
										<img src="resources/images/dollar.png" style="width:15px;">
									</a>
									<ul class="dropdown-menu form-wrapper" style="width:250px;">					
										<li>
											<div class="form-group" id="sub">
												<table class="noti_table">
													<tr><a id="regSub">정기후원</a></tr><br>
													<tr><a id="onceSub">일시후원</a></tr><br>
												</table>
											</div>
											<div id="rSub">
												<div class="noti_text" align="center" style="margin-top:5%;"><b>정기후원</b></div>
												<div align="left" style="margin-left:10%; margin-right:10%;">
													<table class="noti_table">
														<tr><td><small>채널명</small></td></tr>
														<tr><td><b>채널명</b></td></tr>
														<tr><td><small>포인트조회</small></td></tr>
														<tr><td><input type="text" class="form-control" id="point" placehold="포인트를 조회하세요" value="${point} 포인트" readonly></td></tr>
														<tr>
															<td>
																<a href="" id="selectPoint" style="width:50px; text-align:center;" class="btn-gradient yellow mini">조회</a>
																<a href="#myModal" data-toggle="modal" class="trigger-btn">ds<a id="charge" style="width:50px; text-align:center;" class="btn-gradient blue mini">충전</a></a>
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
																				<h4>Something went wrong</h4>	
																				<p>An unexpected error has occurred. Please try again later. Contact support if the error persists.</p>
																				<button class="btn btn-primary" data-dismiss="modal" onclick="location.href='selectPoint.vd'">Go Back</button>
																			</div>
																		</div>
																	</div>
																</div> 
																
															</td>
														</tr>
														<script>
															$(document).ready(function(){
																 $('#selectPoint').click(function(){
																	 location.href="selectPoint.vd";
																 });
															 });
														</script>	
																											
														<tr><td><small>후원</small></td></tr>
														<tr><td><input type="text" class="form-control" id="price" placehold="후원금액을 입력하세요"></td></tr>
														<tr>
															<td>
																<a style="width:50px;text-align:center;" class="btn-gradient yellow mini" id="cancle1">취소</a>
																<a id="subComplete" style="width:50px; text-align:center;" class="btn-gradient blue mini">후원</a>
															</td>
														</tr>
													</table>
												</div>
											</div>
											
										</li>
									</ul>
								</li>
								
								<li class="nav-item">
									<a href="#none">
									<img src="resources/images/heart_black.png" style="width:15px;">
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
				<td colspan="4" height="400px"></td>
				<!-- 댓글 -->
				<td rowspan="3" width="250px"></td>
			</tr>
			<tr>
				<!-- 영상 제목, 태그 -->
				<td colspan="4" height="130px">
					<div style="margin:15px;">
						<h3>영상제목</h3>
						<small>조회수 45,000</small><br>
						<div>
							<a href="" style="color:blue;"><small>#태그</small></a>
							<a href="" style="color:blue;"><small>#태그</small></a>
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
		//button
		$('a').click(function(event){
	  	  event.preventDefault(); 
		});
		function selectLike(){
			
			$.ajax({
				url:"/with/imgCheck.vd",
				type:"post",
				/* data:{userId:userId}, */
				success:function(data){
					console.log("성공!");
					
				},
				error:function(){
					console.log("실패!");
				}
			});
		}
		//후원 div 
		 $(document).ready(function(){
			 $('#sub').show();
			 $('#rSub').hide();
			 $('#oSub').hide();
			 
			 $('#regSub').click(function(){
				 $('#sub').hide();
				 $('#rSub').show();
				 $('#oSub').hide();
				 return false;
			 });
			 
			 $('#cancle1').click(function(){
				 $('#sub').show();
				 $('#rSub').hide();
				 $('#oSub').hide();
				 return false;
			 });
			 
			 $('#onceSub').click(function(){
				 $('#sub').hide();
				 $('#rSub').hide();
				 $('#oSub').show();
				 return false;
			 });
			 
			 $('#cancle2').click(function(){
				 $('#sub').show();
				 $('#rSub').hide();
				 $('#oSub').hide();
				 return false;
			 });
			 
			 $('#reset').click(function(){
				 $('#frilist').show();
				 $('#myDiv').hide();
				 
			 });
		 });
	</script>

	<br><br>
	<jsp:include page="../common/footer.jsp"></jsp:include> 
</body>
</html>