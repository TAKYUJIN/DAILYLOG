<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title></title>
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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
      color:#DDD0DA;
      font-size:14px;
   }
   .form-control:focus {
      border-color: #EDEAD7;
      box-shadow: 0 0 8px rgba(0,0,0,0.1);
      color:#DDD0DA;
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
      color: #434738; /*상단바 글자색*/
      
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
   
   #navbarCollapse a {
      font-size:14px;
      margin-top:5px;
   }
   
   a:link { color: black; text-decoration: none; color: black;}
   a:visited { color: black; text-decoration: none; color: black;}
    a:hover { color: black; text-decoration: none; color: black;}
   a:active { color: black; text-decoration: none; color: black;}
   
   #logo {
   	color:black;
   	padding-top:5px; 
   	margin-top:5px;
   }
   
   #logo,#friendlist{
   background:none;
   border:none;
	padding:0;
   }
   #searchId {
   	color:#DDD0DA;
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

	<div class="navbar-header d-flex col" style="margin-top:13px;">
	 <a value="DailyLog" id="logo" style="width:110px; font-size:22px;">DailyLog</a>
	</div>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
		<ul class="nav navbar-nav" >
			<li class="nav-item">

<!-- 			 <button type="button" onclick="location.href='home.mb'" class="nav-link" style="padding-right:0px;">Home</button>
 
 -->			</li>
			<li class="nav-item"><a href="bookmark.mb" class="nav-link" style="padding-right:0px;" onclick="">북마크</a></li>			
			<li class="nav-item"><a href="subscribe.mb" class="nav-link" style="padding-right:0px;">구독</a></li>	
			<li class="nav-item"><a href="newAction.mb" class="nav-link" style="padding-right:0px;">최근 활동</a></li>	
			<li class="nav-item"><a href="#" class="nav-link" style="padding-right:0px;">좋아요 영상</a></li>
			<li class="nav-item"><a href="newHomeChannel.lo" class="nav-link" style="padding-right:0px;" onclick="">로거 스튜디오</a></li>
			<li class="nav-item"><a href="lotest.lo" class="nav-link" style="padding-right:0px;">알림 예시</a></li>
		</ul>

		<form class="navbar-form form-inline" action="search.mb" method="get">
			<div class="input-group search-box">		
			 					
<!--
		<form class="navbar-form form-inline" style="width:250px; ">
			<div class="input-group search-box">								
-->
				<input type="text" id="searchId" class="form-control" placeholder="검색" >
				 
				  <span  class="input-group-addon"><i class="material-icons">&#xE8B6;</i></span> 
			 
				 
			</div>
		</form>
		<ul class="nav navbar-nav navbar-right ml-auto" style="width:310px;">			
			<li class="nav-item">
				<a href="logout.me" class="btn_global link_login" >
				<img src="resources/images/exit.png" style="width:25px;">
			</a>
			</li>
			
			<li class="nav-item">
				<a href="videoUpload.vd" class="btn_global link_login">
				<img src="resources/images/film.png" style="width:25px;">
			</a>
			</li>
			<li class="nav-item">
				 
			 <button  type="button" id="friendlist" class="btn_global link_login" >
				<img src="resources/images/laugh.png" style="width:25px; margin:15px;">
			</button>
			<ul class="dropdown-menu form-wrapper">					
					<li>
 						<div class="noti_text" align="center"><p>친구 리스트</p></div>
  <script type="text/javascript">
$('#friendlist').click(function(){
	 var popUrl = "List.mb";	 
	 var popOption = "width=370, height=500, resizable=no, scrollbars=no, status=no;";   
			window.open(popUrl,"",popOption);
	 
});


</script>                                  
 
<%--  <div class="page-wrapper">
  <form action="List.mb" method="post" id="frm">
    <div class="container-fluid" id="frilist">
        <div class="col-lg-8"><!--게시판 넓이 -->
            <div class="panel panel-default" >
            <div>
                 <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <td>친구  아이디</td>
                                 <td class="b" > </td>  
                                  
                                
                            </tr>
                        </thead>
                            <tbody>
                             <c:forEach var="MailVo" items="${list1}">
                             <td>친구  아이디</td>
                            <td><input type="text" name="friId"></td> 
                             <tr>
                             <td>${MailVo.friId}</td>
                             </tr>
                           <td><button>채팅</button></td>
                            </c:forEach>  
                        </tbody>
                    </table>
                    </div> 
  					 </div>
                </div>
  <button class="ui olive button" id="addfri">친구 추가</button>
                </div>
                </div></form>
     <div class="container-fluid" id="myDiv">
        <div class="col-lg-8"><!--게시판 넓이 -->
            <div class="panel panel-default" >
            <div>
                 <div class="panel-body">
                    <table class="table table-hover">
         <h4>친구요청 보내기</h4>
        <form action="mailSending.mb" method="post">
 			<input type="hidden" id="userId" name="userId" value="userId"/>
 			<input type="hidden" id=status_yn name="status_yn" value="Y"/>
 			
			<!-- 아이디 -->
			<div class="form-group">
				<label for="friId">친구 이메일</label>
					<input type="text" class="form-control" id="friId" name="friId" placeholder="친구 이메일" required>
				<div class="check_font" id="id_check"></div>
			</div>
      <div align="center">
        <input type="submit" value="메일 보내기" class="btn btn-warning">
        <input type="reset" value="취소" class="btn btn-default" id="reset">
      </div>
  </form></table></div></div></div></div></div></div> 
 --%>
 </li></ul></li> 
  
 
         <li class="nav-item">
         <a <%-- href="notification.mb" --%> data-toggle="dropdown" class="btn_global link_login" onclick="send2();">
            <img src="resources/images/bell.png" style="width:25px;">
         </a>
            <ul class="dropdown-menu form-wrapper">               
               <li>
                  <form action="" method="post">
                     <div class="noti_text" align="center"><p>알림</p></div>
                     <div class="form-group">
                     <div id="inputArea" align="center" style="display:none;">
						<input type="hidden" name="tryMoney" id="tryMoney" value="${sessionScope.loginUser.nickname}">
					</div>
                     <div id="history">
			
					</div>
                        <!-- <table class="noti_table">
                           <tr>님을 구독하셨습니다.</tr><br>
                           <tr>댓글에 답글이 달렸습니다.</tr><br>
                        </table> -->
                     </div>
                     <img src="resources/images/settings.png" align="right">
                  </form>
               </li>
            </ul>
         </li>
         <li class="nav-item">
            <a href="myPage.me" class="btn_global link_login" onclick="account();">
            <img src="resources/images/management.png" style="width:25px;">
         </a>
         </li>
      </ul>
   </div>
</nav>
 </body>
 <script>
 /* $(document).ready(function(){
    $('#frilist').show();
    $('#myDiv').hide();
    
    $('#addfri').click(function(){
       $('#frilist').hide();
       $('#myDiv').show();
       return false;
    });
    $('#reset').click(function(){
       $('#frilist').show();
       $('#myDiv').hide();
       
    });
    
 }); */
 
 
 /* $("#notification").click(function(){
	 $.ajax({
		url:"notification.mb",
		type:"post",
		success:function(data){
			console.log("성공!");
			
		},
		error:function(){
			console.log("실패!");
		}
	}); 
		
	}); */
 	function notification(){
 		location.href="notification.mb";
		/* $.ajax({
			url:"notification.mb",
			type:"post",
			success:function(data){
				console.log("성공!");
				
			},
			error:function(){
				console.log("실패!");
			}
		}); */
	}
 
	$(function(){
		$("#tryMoney").select();
			
			
	});
 
	</script>
	<%-- <script> 잠시 주석..나의 알림..
		$(function(){
			getConnection2();
			
		})
			function getConnection(){
				ws = new WebSocket("ws://localhost:8001" + '<%=request.getContextPath()%>/serverStart');
				//서버 시작할 때 동작
				ws.onopen = function(event){

				}
				//서버로부터 메세지를 전달 받을 때 동작하는 메소드
				ws.onmessage = function(event){
					onMessage(event);
				}
				
				//서버에서 에러가 발생할 경우 동작할 메소드
				ws.onerror = function(event){
					onError(event);
				}
				
				//서버와의 연결이 종료될 경우 동작하는 메소드
				ws.onclose = function(event){
					onClose(event);
				}
			
			}
			
			function send(msg){
				
				ws.send(msg);
				
				
			}
			
			function onMessage(event){
				var serverMessage = event.data.split(":");
				
				var productName = serverMessage[0];
				var startPrice = serverMessage[1];
				var currentPrice = serverMessage[1];
				var remainHour = serverMessage[2];
				var remainMin = serverMessage[3];
				var remainSec = serverMessage[4];
				
				$productName = $("#productName");
				$startPrice = $("#startPrice");
				$currentPrice = $("#currentPrice");
				$remainTime = $("#remainTime");
							
				$productName.html(productName);
				$startPrice.html(startPrice);
				$currentPrice.html(currentPrice);
				$remainTime.html(remainHour + " : " + remainMin + " : " + remainSec);
				
				
			} 
			
			function onError(event){
				alert(event.data);
			}
			
			function onClose(event){
				alert(event);
			}
			
			function getConnection2(){
				ws2 = new WebSocket("ws://localhost:8001" + "<%=request.getContextPath()%>/auctionStart");
				
				ws2.onopen2 = function(event){

				}
				//서버로부터 메세지를 전달 받을 때 동작하는 메소드
				ws2.onmessage = function(event){
					onMessage2(event);
				}
				
				//서버에서 에러가 발생할 경우 동작할 메소드
				ws.onerror = function(event){
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
				var msg = event.data.split(":");
				var user = msg[0];
				var contents = msg[1];
				/* $("#currentPrice").html(price); */
				$("#history").append("<span>" + contents + "님이 " + "구독하셨습니다.</span><br>");
			}
			
			function onError2(event){
				alert(event.data);
			}
			
			function onClose2(event){
				alert(event);
			}
		</script> --%>
</html>               
