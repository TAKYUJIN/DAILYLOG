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
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<style>
	body{
		color:#525252 !important;
	}
	.chImg {
		width:60px; 
		height:60px;
		/* border:1px dashed gray; */
		border-radius: 50%;
		/* vertical-align: middle; */
	}
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
	.btn{
		background:#13334A;
		color:white !important;
	}
.btn:hover {
	opacity:0.7;
}

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
 	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<br>
	<%-- <c:forEach items="${list}" --%>
	<div align="center">
		<table >
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
						<div style="display:inline-block;">
							<button class="btn"><b>구독</b></button>
						</div>
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
				
				<td width="80px" height="60px">
					<div style="margin-top:28%; align:right;">

					</div>
				</td>
				<td width="240px" height="60px">
					<div align="right" style="margin-top:15%;">
						<nav class="navbar navbar-default navbar-expand-lg navbar-light">
							<ul class="nav navbar-nav navbar-right ml-auto" style="width:300px;">			
								<li class="nav-item" stlye="border:1px solid #A8B7BC;">
									<a href="#none" data-toggle="dropdown" id="subtitle">
										<img src="resources/images/diamond.png" style="width:18px; align:right;">
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
																<button id="selectPoint" style="width:75px;margin-right:2% !important;background:#A8B7BC;margin-top:5%;margin-bottom:5%;" class="btn">조회</button>
																<button id="chargeBtn" style="width:75px; text-align:center;margin-top:5%;margin-bottom:5%;" class="btn">충전</button><br>
															</td>
														</tr>
																											
														<tr><td><small>후원</small></td></tr>
														<tr><td><input type="text" class="form-control" id="rPrice" placehold="후원금액을 입력하세요"></td></tr>
														<tr>
															<td>
																<button style="width:75px;margin-right:2% !important;text-align:center;background:#A8B7BC;margin-top:5%;margin-bottom:5%;" class="btn" id="cancle1">취소</button>
																<button id="rOk" style="width:75px; text-align:center;margin-top:5%;margin-bottom:5%;" class="btn">후원</button>
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
																<button id="selectPoint2" style="width:75px;margin-right:2% !important;background:#A8B7BC;margin-top:5%;margin-bottom:5%;" class="btn">조회</button>
																<button id="chargeBtn" style="width:75px;margin-right:2% !important;margin-top:5%;margin-bottom:5%;" class="btn">충전</button>
															</td>
														</tr>
																											
														<tr><td><small>후원</small></td></tr>
														<tr><td><input type="text" class="form-control" id="oPrice" placehold="후원금액을 입력하세요"></td></tr>
														<tr>
															<td>
																<button style="width:75px;margin-right:2% !important;background:#A8B7BC;margin-top:5%;margin-bottom:5%;" class="btn" id="cancle2">취소</button>
																<button id="oOk" style="width:75px;margin-right:2% !important;margin-top:5%;margin-bottom:5%;" class="btn">후원</button>
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
																<small>앞으로 <b>${ list1[0].chNm }</b>채널에 대한 영상을<br> 추천 받지 않게 됩니다.</small>
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
				<td colspan="4" height="400px"><!-- autoplay="autoplay" -->
					  <video id='my-video' class='video-js' controls  preload='auto' width='600' height='400'
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
					<div style="margin:20px;">
						<h3>${ list1[0].vTitle }</h3>
						<small>조회수  ${ list1[0].count }</small><br>
						<div>
							<a href="" style="color: #525252;"><small>${ list1[0].tag }</small></a>
						</div>
					</div>
					<hr>
				</td>
			</tr>
			<tr>
				<!-- 더보기 -->
				<td colspan="4" height="130px">
					더보기
					<a href="age.vd">본인인증</a>
					<a href="age2.vd">본인인증222</a>
				</td>
			</tr>
		</table>
	</div>
	<script>
	   
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
			
	        console.log(check + ", " + userNo + ", " + vNo + ", " + chNm);
	        $.ajax({
	        	url:"report.vd",
				type:"post",
				data:{check:check, 
					  userNo:userNo,
					  vNo:vNo,
					  chNm:chNm},
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
		//좋아요 조회
		function selectLike(){
			var chNo = "<c:out value='${list2[0].chNo}'/>";
			var vNo = "<c:out value='${list1[0].vNo}'/>";
			console.log(chNo + "::" + vNo);
			if(state == 0){
				document.getElementById('like').src = "resources/images/heart_red.png";
				state = 1;
				$.ajax({
					url:"insertLike.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("insert성공!");
						//state = data;
					},
					error:function(){
						console.log("실패!");
					}
				});
			}else {
				document.getElementById('like').src = "resources/images/heart_black.png";
				state = 0;
				$.ajax({
					url:"deleteLike.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("delete성공!");
						
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
				state = 1;
				$.ajax({
					url:"insertHate.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("insert성공!");
						//state = data;
					},
					error:function(){
						console.log("실패!");
					}
				});
			}else {
				document.getElementById('hate').src = "resources/images/broken.png";
				state = 0;
				$.ajax({
					url:"deleteHate.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("delete성공!");
						
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
				state = 1;
				$.ajax({
					url:"insertBookmark.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("insert성공!");
						//state = data;
					},
					error:function(){
						console.log("실패!");
					}
				});
			}else {
				document.getElementById('bookmark').src = "resources/images/bookmark.png";
				state = 0;
				$.ajax({
					url:"deleteBookmark.vd",
					type:"post",
					data:{chNo:chNo, vNo:vNo},
					success:function(data){
						console.log("delete성공!");
						
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
		//후원 div 
		 $(document).ready(function(){
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
/* 			 var copyLink = new ClipboardJS("#btnCopy");
				
				copyLink.on("success", function(){
					alert("클립보드에 복사되었습니다.");
					
					window.getSelection().removeAllRanges();
					
				}); */
/* 				function copyUrl(var){
					var textArea = document.createElement("textArea");
					document.body.appendChild(textArea);
					textArea.value=val;
					textArea.select();
					
					document.execCommand('copy');
					document.body.removeChild(textArea);
					console.log('copied on clipboard');
				} */
		 });
	</script>

	<br><br>
	<jsp:include page="../common/footer.jsp"></jsp:include> 
</body>
</html>