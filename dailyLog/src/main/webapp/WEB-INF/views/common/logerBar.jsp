<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WITH</title>
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	body{
		font-family: 'Varela Round', sans-serif;
		background:linear-gradient(rgb(237, 234, 215) 0%, rgb(221, 208, 218) 85%);
	}
	nav {
		background:#E3CFCD;
	}
	.form-control {
		box-shadow: none;		
		font-weight: normal;
		font-size: 12px; /* 검색부분 폰트사이즈 */
		color: #525252;
	}
	.form-control:focus {
		border-color: #EDEAD7;
		box-shadow: 0 0 8px rgba(0,0,0,0.1);
	}
	.navbar-header.col {
		padding: 0 !important;
	}	
	.navbar {
		background: #EDEAD7; /* 상단바 배경색 */
		padding-left: 10px;
		padding-right: 10px;
		border-bottom: 1px solid #EDEAD7; /* 상단바 밑 라인 색 #dfe3e8 */
		border-radius: 0;
		color: #525252;
	}
	.nav-link img {
		border-radius: 50%;
		width: 36px;
		height: 36px;
		margin: -8px 0;
		float: left;
		margin-right: 10px;
		color: #525252;
	}
	.navbar .navbar-brand, .navbar .navbar-brand:hover, .navbar .navbar-brand:focus {
		padding-left: 0;
		font-size: 20px; /* 로고부분 폰트사이즈 */
		padding-right: 50px;
	}
	.navbar .navbar-brand b {
		font-weight: bold;
		color: #33cabb;		
	}
	.navbar .form-inline {
        display: inline-block;
    }
	.navbar .nav li {
		position: relative;
	}
	.navbar .nav li a {
		color: #525252;
	}
	.search-box {
        position: relative;
        margin-top:5px;
    }	
    .search-box input {
        padding-right: 35px;
		border-color: #E3CFCD; /* 검색 테두리 색 #dfe3e8 */
        border-radius: 4px !important;
		box-shadow: none
    }
	.search-box .input-group-addon {
        min-width: 35px;
        border: none;
        background: transparent;
        position: absolute;
        right: 0;
        z-index: 9;
        padding: 7px;
		height: 100%;
    }
    .search-box i {
        color: #E3CFCD; /* 검색창 돋보기 색 #a0a5b1 */
		font-size: 19px;
    }
	.navbar .nav .btn-primary, .navbar .nav .btn-primary:active {
		color: #fff;
		background: #33cabb;
		padding-top: 8px;
		padding-bottom: 6px;
		vertical-align: middle;
		border: none;
	}	
	.navbar .nav .btn-primary:hover, .navbar .nav .btn-primary:focus {		
		color: #fff;
		outline: none;
		background: #31bfb1;
	}
	.navbar .navbar-right li:first-child a {
		padding-right: 20px;
	}
	.navbar .nav-item i {
		font-size: 18px;
		color: #525252;
	}
	.navbar .dropdown-item i {
		font-size: 16px;
		min-width: 22px;
	}
	.navbar ul.nav li.active a, .navbar ul.nav li.open > a {
		background: transparent !important;
	}	
	.navbar .nav .get-started-btn {
		min-width: 120px;
		margin-top: 8px;
		margin-bottom: 8px;
	}
	.navbar ul.nav li.open > a.get-started-btn {
		color: #fff;
		background: #31bfb1 !important;
	}
	.navbar .dropdown-menu {
		border-radius: 1px;
		border-color: #e5e5e5;
		box-shadow: 0 2px 8px rgba(0,0,0,.05);
	}
	.navbar .nav .dropdown-menu li {
		color: #999; /* 알림페이지 폰트색 */
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
		width: 300px;
		padding: 20px; /* 알림 패딩 */
		left: auto;
		right: 0;
        font-size:14px; /* 알림 폰트 크기 */
	}
	.navbar .dropdown-menu.form-wrapper a {		
		color: #33cabb;
		padding: 0 !important;
	}
	.navbar .dropdown-menu.form-wrapper a:hover{
		text-decoration: underline;
	}
	.navbar .form-wrapper .hint-text {
		text-align: center;
		margin-bottom: 15px;
		font-size: 13px;
	}
	.navbar .form-wrapper .social-btn .btn, .navbar .form-wrapper .social-btn .btn:hover {
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
	.navbar .social-btn .btn-primary {
		background: #507cc0;
	}
	.navbar .social-btn .btn-primary:hover {
		background: #4676bd;
	}
	.navbar .social-btn .btn-info {
		background: #64ccf1;
	}
	.navbar .social-btn .btn-info:hover {
		background: #4ec7ef;
	}
	.navbar .social-btn .btn i {
		margin-right: 5px;
		font-size: 16px;
		position: relative;
		top: 2px;
	}
	.navbar .form-wrapper .form-footer {
		text-align: center;
		padding-top: 10px;
		font-size: 13px;
	}
	.navbar .form-wrapper .form-footer a:hover{
		text-decoration: underline;
	}
	.navbar .form-wrapper .checkbox-inline input {
		margin-top: 3px;
	}
	.or-seperator {
        margin-top: 32px;
		text-align: center;
		border-top: 1px solid #e0e0e0;
    }
    .or-seperator b {
		color: #666;
        padding: 0 8px;
		width: 30px;
		height: 30px;
		font-size: 13px;
		text-align: center;
		line-height: 26px;
		background: #fff;
		display: inline-block;
		border: 1px solid #e0e0e0;
		border-radius: 50%;
		position: relative;
		top: -15px;
		z-index: 1;
    }
    .navbar .checkbox-inline {
		font-size: 13px;
	}
	.navbar .navbar-right .dropdown-toggle::after {
		display: none;
	}
	@media (min-width: 1200px){
		.form-inline .input-group {
			width: 300px;
			margin-left: 30px;
		}
	}
	@media (max-width: 768px){
		.navbar .dropdown-menu.form-wrapper {
			width: 100%;
			padding: 0px 0px;
			background: transparent;
			border: none;
		}
		.navbar .form-inline {
			display: block;
		}
		.navbar .input-group {
			width: 100%;
		}
		.navbar .nav .btn-primary, .navbar .nav .btn-primary:active {
			display: block;
		}
	}
	 #logo,#friendlist{
   background:none;
   border:none;
	padding:0;
    }
	#navbarCollapse a {
		font-size:12px;
	}a:link { color: black; text-decoration: none; color: black;}
	a:visited { color: black; text-decoration: none; color: black;}
 	a:hover { color: black; text-decoration: none; color: black;}
	a:active { color: black; text-decoration: none; color: black;}
   
  #logo {
   	color:black;
   	padding-top:5px; 
   	margin-top:5px;
   }
   
   #searchId {
   	color:#525252;
   }
   
   #navbarCollapse {
   	font-size:15px;
   }
</style>
<script type="text/javascript">
	// Prevent dropdown menu from closing when click inside the form
	$(document).on("click", ".navbar-right .dropdown-menu", function(e){
		e.stopPropagation();
	});
</script>
</head> 
<body>
<nav class="navbar navbar-default navbar-expand-lg navbar-light">
	<div class="navbar-header d-flex col" style="margin-top:10px;">
		<a value="DailyLog" id="logo" style="width:110px; font-size:22px;" onclick="location.href='home.mb'">DailyLog</a>
	</div>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
		<ul class="nav navbar-nav" >
			<li class="nav-item"><a href="loger.lo" class="nav-link" style="padding-right:0px;">홈</a></li>
			<li class="nav-item"><a href="goChannelChangeInfo.lo" class="nav-link" style="padding-right:0px;">채널설정</a></li>
			<li class="nav-item"><a href="logerVideo.lo" class="nav-link" style="padding-right:0px;">동영상</a></li>			
			<li class="nav-item"><a href="logerCalculate.lo" class="nav-link" style="padding-right:0px;">정산</a></li>	
			<li class="nav-item"><a href="logerReply.lo" class="nav-link" style="padding-right:0px;">댓글</a></li>
			<li class="nav-item"><a href="logerdeclarationlist.lo" class="nav-link" style="padding-right:0px;">신고기록</a></li>
		</ul>
		<form class="navbar-form form-inline" style="width:240px; margin-top:10px; margin-left:120px;">
			<div class="input-group search-box">								
				<input type="text" id="search" class="form-control" placeholder="검색">
				<span class="input-group-addon"><i class="material-icons">&#xE8B6;</i></span>
			</div>
		</form>
		<ul class="nav navbar-nav navbar-right ml-auto" style="width:310px;">			
			<li class="nav-item">
				<a href="logout.me" class="btn_global link_login" >
				<img src="resources/images/exit.png" style="width:25px;">
			</a>
			</li>
			
			<li class="nav-item">
				<a href="#none" class="btn_global link_login">
				<img src="resources/images/film.png" style="width:25px;">
			</a>
			</li>
			
			<li class="nav-item">
				<button  type="button" id="friendlist" class="btn_global link_login" >
				<img src="resources/images/laugh.png" style="width:25px;margin:15px;">
				</button>
			 
			</li>
			<script type="text/javascript">
$('#friendlist').click(function(){
	 var popUrl = "List.mb";	 
	 var popOption = "width=370, height=700, resizable=no, scrollbars=no, status=no;";   
			window.open(popUrl,"",popOption);
	 
});
</script>
			<li class="nav-item">
			<a href="#none" data-toggle="dropdown" class="btn_global link_login">
				<img src="resources/images/bell.png" style="width:25px;">
			</a>
				<ul class="dropdown-menu form-wrapper">					
					<li>
						<form action="/examples/actions/confirmation.php" method="post">
							<div class="noti_text" align="center"><p>알림</p></div>
							<div class="form-group">
								<table class="noti_table">
									<tr>님을 구독하셨습니다.</tr><br>
									<tr>댓글에 답글이 달렸습니다.</tr><br>
									
								</table>
							</div>
							<img src="resources/images/settings.png" align="right">
						</form>
					</li>
				</ul>
			</li>
			<li class="nav-item">
				<a href="#none" class="btn_global link_login" onclick="account();">
				<img src="resources/images/management.png" style="width:25px;">
			</a>
			</li>
		</ul>
	</div>
</nav>
</body>
</html>                                                     