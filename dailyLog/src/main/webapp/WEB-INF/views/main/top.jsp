 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
  
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WITH</title><link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <style>

.vi{
margin-left:150px ;
 margin-top:20px;
 margin -bottom:30px;
}
img.fixed{
 
 vertical-align: top;
  
 }
 /*  class="carousel-control right carousel-control-next"
  */body {
	background: #ebebeb;
}
h3 {
 background:none;
	color: #696969;
	font-size: 26px;
	font-weight: 300;
	text-align: center;
	position: relative;
	margin: 40px 70px;
	text-transform: uppercase;
	font-family: 'Open Sans', sans-serif;
}
h3::after {
	content: "";
    width: 100%;
    position: absolute;
    margin: 0 auto;
    height: 1px;
    border-radius: 1px;
   /*  background: #d4d4d4; */
    left: 0;
    right: 0;
    bottom: 14px;
     background:none;
}
h3 span {
	display: inline-block;
	padding: 0 25px;
	/* background:#ebebeb; */
	position:relative;
	z-index:2;
background:none;
}
.col-center {
	margin: 0 auto;
	float: none !important;
	 background:none;
}
.carousel {	
	margin: 30px auto 50px;
	padding: 0 68px;
background:none;
}
.carousel .item {
    text-align: center;
	overflow: hidden;
    height: 220px;
    background:none;}
 .carousel-control{
background:none;
 }
  .carousel .item .img-box {
	background:none;
	padding: 9px;
	/* box-shadow: 0 6px 20px -6px rgba(0,0,0,0.4); */
} 
.carousel .item img {
    margin: 0 auto;
   background:none;
}
.carousel .carousel-control {
	width: 68px;
	background:none;
}
.carousel .carousel-control i {
    font-size: 28px;
    position: absolute;
    top: 50%;
    display: inline-block;
    margin-top: -15px;
    z-index: 5;
    left: 0;
    right: 0;
	color: rgba(0, 0, 0, 0.8);
	background:none;
    text-shadow: 0 3px 3px #e6e6e6, 0 0 0 #000;
}
.carousel .carousel-indicators {
	bottom: -40px;
	background:none;
}
.carousel-indicators li, .carousel-indicators li.active {
	width: 10px;
	height: 10px;
	border-radius: 50%;
	margin: 1px 4px;
	box-shadow: inset 0 2px 1px rgba(0,0,0,0.2);
	background:none;
}
.carousel-indicators li {	
	background: #999;
	border-color: transparent;
	 
}
.carousel-indicators li.active {
	background: #555;
}
.form-inline {
        display: inline-block;
    }
	.navbar -header.col {
		padding: 0 !important;
	}	
	 
	.nav-link img {
		/* border-radius: 50%; */
		width: 10px;
		height: 10px;
		float: left;
	}
	.navbar .navbar-brand {
		color: none;
		/* padding-left: 0;
		padding-right: 50px; */
		font-family: 'Merienda One', sans-serif;
	}
	.navbar .navbar-brand i {
		font-size: 20px;
		/* margin-right: 5px; */
	}
	 
	.navbar1 .nav-item i {
		font-size: 18px;
			width: 10px;
		height: 10px;
	}
	.navbar .dropdown-item i {
		font-size: 16px;
		min-width: 10px;
	}
	.navbar .nav-item.open > a {
		background: none !important;
		text-decoration: none;
	}
 
	.navbar .dropdown-menu li a {
		/* color: #777; */
		/* padding: 8px 20px; */
		/* line-height: normal; */text-decoration: none;
		
	}
	.navbar .dropdown-menu li a:hover, .navbar .dropdown-menu li a:active {
		color: none;text-decoration: none;
	}	
	.navbar .dropdown-item .material-icons {
		font-size: 21px;
		/* line-height: 16px; */
		vertical-align: middle;
		margin-top: -2px;
	} 
	
	.friendlist{
	background:none;
	border:1px none;
	}
	  #vid{
	  color:#7d7d7d;  letter-spacing: 5px;
	   border-radius: 5px;
	   font-size:35px;
	 }
	 #sty{
	 /* background:#f7f5f5;
	 border: 1px solid #d1cfcf; */
	  margin:20px;
	   width : "500px";  
	   height:"400px" ;
	    border-radius:10px;
	    text-decoration: none;
	     color: black;
	 }
	 	 #sty1{
	 /* background:#f7f5f5; */
	  margin:15px;
	   width : "500px";  
	   height:"400px" ;
	   text-decoration: none;
	    color: black;
	 }	/*  #sty1:hover{
color: black; text-decoration: none;
	 }
	  #sty:hover{
color: black; text-decoration: none;
	 } */
	 
	 	 #sty2{
	 color:#9e9d9d;
	 }
	/*  #sty:hover{
	  background:#c9c9c9;
	 } */
	 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: black; text-decoration: none; }
 
.scale {
  transform: scale(1);
  -webkit-transform: scale(1);
  -moz-transform: scale(1);
  -ms-transform: scale(1);
  -o-transform: scale(1);
  transition: all 0.3s ease-in-out;   /* 부드러운 모션을 위해 추가*/
}
.scale:hover {
  transform: scale(1.02 );
  -webkit-transform: scale(1.02 );
  -moz-transform: scale(1.02 );
  -ms-transform: scale(1.02 );
  -o-transform: scale(1.02 );
  box-shadow: 1px 1px 20px  grey;
  background:#c9c9c9;
  text-decoration: none;
}
.img {width:325px; height:280px; overflow:hidden }    
	 
	 #rain{
	 width:500px;
	 }
</style>
 
<link href="https://vjs.zencdn.net/7.6.0/video-js.css" rel="stylesheet">

<!-- If you'd like to support IE8 (for Video.js versions prior to v7) -->
<script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
<script src='https://vjs.zencdn.net/7.6.0/video.js'></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
</head>
<body>
  <jsp:include page="../common/guest.jsp"></jsp:include>  
  
  	<%-- <%--  
	  	<!-- <script>
					$("#mainSome").click(function(){
						var userNo = $('#mainNo').val();
						
						$.ajax({
							url:"video.vd",
							type:"post",
							data:{userNo:userNo},
							success:function(data){
								
								console.log("성공:");
							},
							error:function(){
								console.log("실패:");
							}
						});
					});
					
				</script> --> 
			 
	   --%>
 
 <!--  <video  onmouseover="this.play()" onmouseout="this.pause()" width="400px" height="300px">
    <source src="resources/uploadFiles/jhj11.mp4" type="video/mp4">
  </video> -->
  
 <!--   <video  id='my-video' class='video-js' controls  preload='auto' width='300' height='200' onmouseover="this.play()" onmouseout="this.pause()"  
     data-setup='{}'  >
    <source src='resources/uploadFiles/rain.mp4'type='video/mp4'>
     
  </video> -->
   
       
<!-- 	   <video id="movies"  onmouseover="this.play()" onmouseout="this.pause()"  
    autobuffer="true" width='600' height='300'>
    <source src="resources/uploadFiles/rain.mp4" id="rain" type='video/mp4'>
  </video>
	   
	   <div class="row"><br><br><br><br>
		<div class="col-md-10 col-center m-auto"><br><br><br><br><br><br>
			<h3>  <span><div id="vid"><b> 인기 동영상 </b></div>  </span></h3>  <br>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				  
				<div class="carousel-inner">
						<div class="row">
						 
						<div class="col-sm-4 "><div class="img-box"><div id="sty" class="scale"style=" float:left;text-decoration: none;  color: black; "> 
						<a  style=" text-decoration: none;" href="loginbutton.me">

<video id="movies"  controls  preload='auto' onmouseover="this.play()" onmouseout="this.pause()"  
    width='600' height='300'>
   <source src="resources/uploadFiles/oceans.mp4" type='video/mp4' >
    <source src="resources/uploadFiles/rain.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"'>
  </video>

							 
				</a></div></div></div> 
						  
						  </div></div>
				</div>
  </div></div>
	   
	    -->
	   
	   
	   
	   
	   
	   
	  
	 <div class="row"><br><br><br><br>
		<div class="col-md-10 col-center m-auto"><br><br><br><br><br><br>
			<h3>  <span><div id="vid"><b> 인기 동영상 </b></div>  </span></h3>  <br>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				  
				<div class="carousel-inner">
						<div class="row">
						<c:forEach var="videoimage" items="${videopop}" begin="0" end="5">
						<div class="col-sm-4 "><div class="img-box"><div id="sty" class="scale"style=" float:left;text-decoration: none;  color: black; "> 
						<a  style=" text-decoration: none;" href="loginbutton.me">
						<img style=" border-radius:10px;  color: black; text-decoration: none; margin:10px;" src="resources/uploadFiles/${videoimage.fileNm}" width = "300px"  height="200px"  >
							<div id="sty1"><h4><b>  ${videoimage.vTitle}</b></h4>
							<div id="sty2"><h5><b> ${videoimage.chNm }</b> &nbsp;&nbsp;<b>  ${videoimage.tag }</b>
							 <b>  ${videoimage.uploadDt }</b></h5>
							 </div></div>
				</a></div></div></div> 
						  
						  </c:forEach> </div></div>
				</div>
  </div></div> 
 

 <div class="row"><br><br><br><br>
		<div class="col-md-10 col-center m-auto"><br><br><br> 
			<h3>  <span><div id="vid"><b>최 근   업로드된    동영상</b></div>  </span></h3>  <br>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				  
				<div class="carousel-inner">
						<div class="row">
							
						<c:forEach var="videoimage" items="${videonew}" begin="0" end="5">
						<div class="col-sm-4 "><div class="img-box"><div id="sty" class="scale"style=" float:left;text-decoration: none;  color: black; "> 
						<a  style=" text-decoration: none;" href="loginbutton.me">
						<img style=" border-radius:10px; color: black; text-decoration: none; margin:10px;" src="resources/uploadFiles/${videoimage.fileNm}" width = "300px"  height="200px"  >
							<div id="sty1"><h4><b>  ${videoimage.vTitle}</b></h4>
							<div id="sty2"><h5><b> ${videoimage.chNm }</b> &nbsp;&nbsp;<b>  ${videoimage.tag }</b> <b>  ${videoimage.uploadDt }</b> </h5>
							 </div></div>
				</a></div></div></div> 
						  
						  </c:forEach> </div></div>
				</div>
  </div></div> 
   
  <div class="row"><br><br><br><br>
		<div class="col-md-10 col-center m-auto"><br><br><br> 
			<h3>  <span><div id="vid"><b> TAKLOG </b></div>  </span></h3>  <br>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				  
				<div class="carousel-inner">
						<div class="row">
							
						<c:forEach var="videoimage" items="${videotak}" begin="0" end="5">
						<div class="col-sm-4 "><div class="img-box"><div id="sty" class="scale"style=" float:left;text-decoration: none;  color: black; "> 
						<a  style=" text-decoration: none;" href="loginbutton.me">
						<img style=" border-radius:10px; color: black; text-decoration: none; margin:10px;" src="resources/uploadFiles/${videoimage.fileNm}" width = "300px"  height="200px"  >
							<div id="sty1"><h4><b>  ${videoimage.vTitle}</b></h4>
							<div id="sty2"><h5><b> ${videoimage.chNm }</b> &nbsp;&nbsp;<b>  ${videoimage.tag }</b> <b>  ${videoimage.uploadDt }</b> </h5>
							 </div></div>
				</a></div></div></div> 
						  
						  </c:forEach> </div></div>
				</div>
  </div></div> 
  
  
  
  <div class="row"><br><br><br><br>
		<div class="col-md-10 col-center m-auto"><br><br><br> 
			<h3>  <span><div id="vid"><b> 채빈S 채널 </b></div>  </span></h3>  <br>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				  
				<div class="carousel-inner">
						<div class="row">
							
						<c:forEach var="videoimage" items="${videokim1}" begin="0" end="5">
						<div class="col-sm-4 "><div class="img-box"><div id="sty" class="scale"style=" float:left;text-decoration: none;  color: black; "> 
						<a  style=" text-decoration: none;" href="loginbutton.me">
						<img style=" border-radius:10px; color: black; text-decoration: none; margin:10px;" src="resources/uploadFiles/${videoimage.fileNm}" width = "300px"  height="200px"  >
							<div id="sty1"><h4><b>  ${videoimage.vTitle}</b></h4>
							<div id="sty2"><h5><b> ${videoimage.chNm }</b> &nbsp;&nbsp;<b>  ${videoimage.tag }</b> <b>  ${videoimage.uploadDt }</b> </h5>
							 </div></div>
				</a></div></div></div> 
						  
						  </c:forEach> </div></div>
				</div>
  </div></div> 
  
  
  <div class="row"><br><br><br><br>
		<div class="col-md-10 col-center m-auto"><br><br><br> 
			<h3>  <span><div id="vid"><b> 오이도꿔까  </b></div>  </span></h3>  <br>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				  
				<div class="carousel-inner">
						<div class="row">
							
						<c:forEach var="videoimage" items="${videopark}" begin="0" end="5">
						<div class="col-sm-4 "><div class="img-box"><div id="sty" class="scale"style=" float:left;text-decoration: none;  color: black; "> 
						<a  style=" text-decoration: none;" href="loginbutton.me">
						<img style=" border-radius:10px; color: black; text-decoration: none; margin:10px;" src="resources/uploadFiles/${videoimage.fileNm}" width = "300px"  height="200px"  >
							<div id="sty1"><h4><b>  ${videoimage.vTitle}</b></h4>
							<div id="sty2"><h5><b> ${videoimage.chNm }</b> &nbsp;&nbsp;<b>  ${videoimage.tag }</b> <b>  ${videoimage.uploadDt }</b> </h5>
							 </div></div>
				</a></div></div></div> 
						  
						  </c:forEach> </div></div>
				</div>
  </div></div> 
   <div class="row"><br><br><br><br>
		<div class="col-md-10 col-center m-auto"><br><br><br> 
			<h3>  <span><div id="vid"><b> 희정이네 </b></div>  </span></h3>  <br>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				  
				<div class="carousel-inner">
						<div class="row">
							
						<c:forEach var="videoimage" items="${videoji}" begin="0" end="5">
						<div class="col-sm-4 "><div class="img-box"><div id="sty" class="scale"style=" float:left;text-decoration: none;  color: black; "> 
						<a  style=" text-decoration: none;" href="loginbutton.me">
						<img style=" border-radius:10px; color: black; text-decoration: none; margin:10px;" src="resources/uploadFiles/${videoimage.fileNm}" width = "300px"  height="200px"  >
							<div id="sty1"><h4><b>  ${videoimage.vTitle}</b></h4>
							<div id="sty2"><h5><b> ${videoimage.chNm }</b> &nbsp;&nbsp;<b>  ${videoimage.tag }</b> <b>  ${videoimage.uploadDt }</b> </h5>
							 </div></div>
				</a></div></div></div> 
						  
						  </c:forEach> </div></div>
				</div>
  </div></div> 
  
  <div class="row"><br><br><br><br>
		<div class="col-md-10 col-center m-auto"><br><br><br> 
			<h3>  <span><div id="vid"><b> CHAEWON </b></div>  </span></h3>  <br>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				  
				<div class="carousel-inner">
						<div class="row">
							
						<c:forEach var="videoimage" items="${videokim2}" begin="0" end="5">
						<div class="col-sm-4 "><div class="img-box"><div id="sty" class="scale"style=" float:left;text-decoration: none;  color: black; "> 
						<a  style=" text-decoration: none;" href="loginbutton.me">
						<img style=" border-radius:10px; color: black; text-decoration: none; margin:10px;" src="resources/uploadFiles/${videoimage.fileNm}" width = "300px"  height="200px"  >
							<div id="sty1"><h4><b>  ${videoimage.vTitle}</b></h4>
							<div id="sty2"><h5><b> ${videoimage.chNm }</b> &nbsp;&nbsp;<b>  ${videoimage.tag }</b> <b>  ${videoimage.uploadDt }</b> </h5>
							 </div></div>
				</a></div></div></div> 
						  
						  </c:forEach> </div></div>
				</div>
  </div></div> 
  
 
  <div class="row"><br><br><br><br>
		<div class="col-md-10 col-center m-auto"><br><br><br> 
			<h3>  <span><div id="vid"><b> 은주의 일상 </b></div>  </span></h3>  <br>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				  
				<div class="carousel-inner">
						<div class="row">
							
						<c:forEach var="videoimage" items="${videojeong}" begin="0" end="5">
						<div class="col-sm-4 "><div class="img-box"><div id="sty" class="scale"style=" float:left;text-decoration: none;  color: black; "> 
						<a  style=" text-decoration: none;" href="loginbutton.me">
						<img style=" border-radius:10px; color: black; text-decoration: none; margin:10px;" src="resources/uploadFiles/${videoimage.fileNm}" width = "300px"  height="200px"  >
							<div id="sty1"><h4><b>  ${videoimage.vTitle}</b></h4>
							<div id="sty2"><h5><b> ${videoimage.chNm }</b> &nbsp;&nbsp;<b>  ${videoimage.tag }</b> <b>  ${videoimage.uploadDt }</b> </h5>
							 </div></div>
				</a></div></div></div> 
						  
						  </c:forEach> </div></div>
				</div>
  </div></div> 
  
 	<jsp:include page="../common/footer.jsp"></jsp:include>
 
</body>
</html>

