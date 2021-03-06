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
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	body{
   	color:#525252;
      font-family: 'Varela Round', sans-serif;
      background:linear-gradient(rgb(237, 234, 215) 0%, rgb(221, 208, 218) 85%);
   }
   .form-control {
      box-shadow: none;      
      font-weight: normal;
      font-size: 12px; /* 검색부분 폰트사이즈 */
      color:#525252;
   }
   .form-control:focus {
      border-color: #EDEAD7;
      box-shadow: 0 0 8px rgba(0,0,0,0.1);
      color:#525252;
   }
   .navbar-header.col {
      padding: 0 !important;
   }   
   .navbar {
      background: #EDEAD7;
        padding-left: 6px;
      padding-right: 6px; 
      border-bottom: 1px solid #EDEAD7;
      border-radius: 0;
    
   }
   .nav-link img {
      border-radius: 50%;
      width: 36px;
      height: 36px;
      margin: -8px 0;
      float: left;
      margin-right: 10px;
   }
   .navbar .navbar-brand, .navbar .navbar-brand:hover, .navbar .navbar-brand:focus {
      padding-left: 0;
      font-size: 20px; /* 로고부분 폰트사이즈 */
      padding-right: 50px;
         height:100%;
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
      color: #525252; /*상단바 글자색*/
   }
   .search-box {
        position: relative;
        color:#DDD0DA;
    }   
    .search-box input {
        padding-right: 35px;
        color:#DDD0DA;
      border-color: #DDD0DA;
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
      color:#DDD0DA;
    }
    .search-box i {
        color: #DDD0DA;
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
      color: gray;
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
      /* color: #33cabb; */
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
	
	#logo {
   	color:black;
   	padding-top:5px; 
   }
	#navbarCollapse a {
		font-size:12px;
	}
	a:link { color: black; text-decoration: none; color: black;}
	a:visited { color: black; text-decoration: none; color: black;}
 	a:hover { color: black; text-decoration: none; color: black;}
	a:active { color: black; text-decoration: none; color: black;}
	
	.nav-link {
		color: #525252;
	}
	.nav navbar-nav{
		color: #525252;
	}
	
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
			<li class="nav-item"><a href="adminNoticeList.ad" class="nav-link" style="padding-right:0px;">공지사항</a></li>
			<li class="nav-item"><a href="adminUser.ad" class="nav-link" style="padding-right:0px;">회원관리</a></li>
			<li class="nav-item dropdown">
				<a data-toggle="dropdown" class="nav-link dropdown-toggle" href="reportmanage.ad" style="padding-right:0px;">신고관리 <b class="caret"></b></a>
				<ul class="dropdown-menu">					
					<li><a href="reportlist.ad" class="dropdown-item">신고내역</a></li>
					<li><a href="ublacklist.ad" class="dropdown-item">회원블랙리스트</a></li>
					<li><a href="cblacklist.ad" class="dropdown-item">채널블랙리스트</a></li>
				</ul>
			</li>					
			<li class="nav-item"><a href="channelManage.ad" class="nav-link" style="padding-right:0px;">채널관리</a></li>	
			<li class="nav-item"><a href="adminCalculate.ad" class="nav-link" style="padding-right:0px;">정산관리</a></li>	
			<li class="nav-item"><a href="#" class="nav-link" style="padding-right:0px;">환불</a></li>
			<!-- <li class="nav-item"><a href="adminStatistics.ad" class="nav-link" style="padding-right:0px;">통계</a></li> -->
			<li class="nav-item"><a href="adminChattingComplete.ad" class="nav-link" style="padding-right:0px;">문의내역</a></li>
		</ul>
		
		<ul class="nav navbar-nav navbar-right ml-auto">	
			<li class="nav-item">
				<a href="logout.me" class="btn_global link_login" >
				<img src="resources/images/exit.png" style="width:25px;">
			</a>
			</li>		
			<li class="nav-item dropdown">
				<a data-toggle="dropdown" class="btn_global link_login dropdown-toggle" href="adminChatting.ad">
				<img id="alramImg" src="resources/images/admin.png" style="width:25px;"></a>
				<ul class="dropdown-menu">					
					<li><a href="adminChatting.ad" class="dropdown-item">상담대기 : <c:out value="${waitCount}"/></a></li>
					<li><a href="adminChattingComplete.ad" class="dropdown-item">상담완료 : <c:out value="${succCount}"/></a></li>
				</ul>
			</li>		
			
		</ul>
	</div>
</nav>
</body>
<script>
		$(function(){
			getConnection2();
			
		})
			
			function getConnection2(){
				ws2 = new WebSocket("ws://localhost:8001" + "<%=request.getContextPath()%>/alramStart?userNo="+alramUserNo);
				
				ws2.onopen2 = function(event){
					
				}
				//서버로부터 메세지를 전달 받을 때 동작하는 메소드
				ws2.onmessage = function(event){
					onMessage2(event);
				}
				
				//서버에서 에러가 발생할 경우 동작할 메소드
				ws2.onerror = function(event){
					onError2(event);
				}
				
				//서버와의 연결이 종료될 경우 동작하는 메소드
				ws2.onclose = function(event){
					onClose2(event);
				}
			}
			
			function send2(msg){
				/* location.href="notification.mb"; */
				var tryMoney = $("#tryMoney").val();
				var userId = "${m.userNm}";
				var sendMsg = userId + ":" + tryMoney;
				ws2.send(sendMsg);
			}
			
			function onMessage2(event){
				var result = event.data;
				console.log("result :: " + result);
				if(result != null){
					var set = setInterval(function()
			  			    {
			  			    	  $("#alramImg").css("-webkit-transform", "scale(1)");
			  			    },500);

			  		 var set2 = setInterval(function()
			   			    {
			  			 $("#alramImg").css("-webkit-transform", "scale(1.3)");
			   			    },1000);

			  		$("#alramImg").click(function(){
				    		clearInterval(set);
				    		clearInterval(set2);
				    		
				    	  });
				}
			}
			
			function onError2(event){
				/* alert(event.data); */
			}
			
			function onClose2(event){
				/* alert(event); */
			}
			
			function home(){
				location.href="home.mb";
			}
			
		</script>
		
	
</html>                                                                                    