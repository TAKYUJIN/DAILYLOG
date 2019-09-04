<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	.navbar .nav li {
		position: relative;
	}
	.navbar .nav li a {
		color: #888;
	}
	.navbar .nav .btn-primary, .navbar .nav .btn-primary:active {
		color: #fff;
		background: darkgray;
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
		<table border="1px;">
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
										<ul class="dropdown-menu form-wrapper" style="width:200px;">					
											<li>
												<div class="noti_text" align="center"><p>정기후원</p></div>
												<div class="form-group" >
													<table class="noti_table">
														<tr><small>채널명</small></tr>
														<tr><b>채널명</b></tr>
														<tr><small>포인트조회</small></tr>
														<tr><a href="regular.vd">정기후원</a></tr><br>
														<tr><a href="once.vd">일시후원</a></tr><br>
													</table>
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
	</script>
	
	<br><br>
	<jsp:include page="../common/footer.jsp"></jsp:include> 
</body>
</html>