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

  */ 

h3 {
background: none !important;

	  color:#525252; 

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

   color:#7d7d7d; 

    left: 0;

    right: 0;

    bottom: 14px;

    background:none;

}

h3 span {


	display: inline-block;

	padding: 0 25px;

	 color:#7d7d7d; 

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

	background:#fff;

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

		color: #555;

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

	}

 

	.navbar .dropdown-menu li a {

		/* color: #777; */

		   padding: 4px 10px;  

		  line-height: normal;    

		 width:100%;

		 height:100%;

	}
	.navbar .dropdown-item .material-icons {

		font-size: 21px;

		/* line-height: 16px; */

		vertical-align: middle;

		margin-top: -2px;
	} 

	

	.main{

	background:none;

	border:1px none;

	}

	 #l{

	 width:150px;

	 margin-right: 15px;

	 } 

	   #report{

	 background-color:#fff;

	 width:650px;

	 height:250px;
	  left:600px;

	  top:50%;

	 }  

	 #v1{ 

	 margin-left:10%;

	 }

	 .report{

	 margin-left:15%;

	 margin-top:7px;

	 }

	 

	  .dropdown-item2{

	 background-color:#fff;

	 border:none;

	 } 

	  #video{

	 padding:20px;
width:150px;
	 }

	 #dot1{
	margin-left:-50px;
	padding-left:-70px;
	padding-top:20px;
	 background:none;
	 border:none;
	  float:left;
	 }
 #dot2{
 margin-top:20px; 
	  margin-left :-25px; 
	padding-left:-150px; 
	 background:none;
	 border:none;
	  float:left;
	 }
	#dot {
	/* margin-left:-50px;
	padding-left:-50px; */
 float:left;
	 background:none;
	 border:none;
	 } 
	 
	 #a{
	  float:left;
	 }
 
	 #sty{
	 /* background:#f5eded; */
	 bolder:1px none;
	  margin:10px;

	 }  #vid{

	  color:#525252;  letter-spacing: 5px;

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
	   text-decoration: none;
	    color: black;
	 }	/*  #sty1:hover{

color: black; text-decoration: none;

	 }

	  #sty:hover{

color: black; text-decoration: none;

	 } */

	 

	 	 #sty2{

	 color:#525252;

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

 /* .img {width:325px; height:280px; overflow:hidden }  
 */
  .dropdown-menu{
  width:100%;
  border: 2px solid #403d3d;
  }
  
  #re{
  width:100%;
  }
  #movies1{
    width:560px;
  height:300px; 
  object-fit:fill;
    background:none;
  }
  #movies{
 
   width:300px;
  height:200px; 
  object-fit:fill;
  }
  #adinfo{
  height:350px; 
    width:800px;
  object-fit:fill;
    background:none;
  }
</style>
<link href="https://vjs.zencdn.net/7.6.0/video-js.css" rel="stylesheet">

<!-- If you'd like to support IE8 (for Video.js versions prior to v7) -->
<script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
<script src='https://vjs.zencdn.net/7.6.0/video.js'></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
</head>
<body>
      		 <jsp:include page="../common/mainBar.jsp"></jsp:include>	

 <div class="row"><br><br><br><br> 
		<div class="col-md-10 col-center m-auto"><br><br><br><br><br><br>
		<c:forEach var="videoimage" items="${adinfo}" >
			<h3>  <span><div id="vid"><b>  ${videoimage.vTitle} </b></div>  </span></h3>  <br>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				  
				<div class="carousel-inner">
						<div class="row">
						
						<div class="col-sm-12 "><div class="img-box"><div id="sty" class="scale"style=" float:left;text-decoration: none;  color: black; "> 
						<a href="video.vd?userNo=${videoimage.userNo}&vNo=${videoimage.vNo}">
						  <img style=" border-radius:10px;  color: black; text-decoration: none; margin:10px;" id="adinfo" src="resources/uploadFiles/${videoimage.fileNm}"   >
						 
						   <%-- <video id="adinfo"  class='video-js'  onmouseover="this.play()" onmouseout="this.pause()"
						     >
						  <source src='resources/uploadFiles/${videoimage.fileNm}' type='video/mp4'>
						   <source src='MY_VIDEO.webm' type='video/webm'>  
						</video> --%>  
							
							<div id="sty1"><h4><b> </b></h4>
							<div id="sty2"><h3><b> ${videoimage.chNm }</b> &nbsp;&nbsp;<b>  ${videoimage.tag }</b>
							 <b>  ${videoimage.uploadDt }</b></h3>
							 </div></div>
				</a></div></div></div> 
						  
						  </div></div>
				</div></c:forEach>
  </div></div> 

 <div class="row">
		<div class="col-md-10 col-center m-auto">
		<br><br><br><br>
			<h3> <span> <div id="vid"><b> 인기 동영상 </b></div> </span> </h3>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				<div class="carousel-inner"> 
						<div class="row">
						<c:forEach var="videoimage" items="${videopop}" begin="0" end="0"> 
						<div class="col-sm-7"><div class="img-box"><div id="sty"class="scale" style=" float:left;">  <a href="video.vd?userNo=${videoimage.userNo}&vNo=${videoimage.vNo}">
						
						    <video id="movies1"  class='video-js'  onmouseover="this.play()" onmouseout="this.pause()"
						     >
						  <source src='resources/uploadFiles/${videoimage.fileNm}' type='video/mp4'>
						   <source src='MY_VIDEO.webm' type='video/webm'>  
						</video>
						
			 	<div id="sty1">  <h4> <b>${videoimage.vTitle}</b></h4>
						<div id="sty2">	<h5><b> ${videoimage.chNm }</b> &nbsp;&nbsp; 
								<b>${videoimage.tag }</b> <b>  ${videoimage.uploadDt }</b></h5></div></div>
				</a></div></div> 
				<div id="dot" style ="float:left;  ">
							<nav class="navbar  navbar-expand-xl navbar-light" id="dot2"> 
								<button type="button" class="main"  data-toggle="dropdown" id="btncolor" >
								<img src="resources/images/three-dot.png"width="20px" height="20px">
							</button>
				<ul class="dropdown-menu" >	
							 <li > <a id="vr1" class="dropdown-item2" href="javascript:video();">동영상 신고</a>	
					 </li >  
					  <div  id="video"> 
					 <form action="report.rp" method="post" >
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
					  <input type="hidden"  id="retarget" name="retarget" value="${videoimage.userNo}"/>
					   <li> <input type="radio" id="rewhy" name="rewhy"  value="성적인 콘텐츠" checked>성적인 콘텐츠</li>
					    <li><input type="radio" id="rewhy" name="rewhy"  value="폭력적 또는 혐오스러운 콘텐츠">폭력적 또는 혐오스러운 콘텐츠</li>
					      <li><input type="radio"id="rewhy" name="rewhy"  value="증오 또는 악의적인 콘텐츠">증오 또는 악의적인 콘텐츠</li>
					   <li><input type="radio" id="rewhy" name="rewhy"  value="유해하거나 위험한행위 ">유해하거나 위험한행위</li>
					    <li> <input type="radio"id="rewhy" name="rewhy"  value="스팸 또는 사용자를 현혹하는 콘텐츠">스팸 또는 사용자를 현혹하는 콘텐츠</li>
					    <li> <input type="text" class="form-control" id="rewhy" name="rewhy" placeholder="기타"></li >
 					  <input type="hidden" id="rety" name="rety" value="동영상"/>
					 <input type="hidden"  id="vNo" name="vNo" value="${videoimage.vNo}"/>
					  <input type="hidden"  id="chNm" name="chNm" value="${videoimage.chNm}" > 
					  <input type="hidden" id="vTitle" name="vTitle" value="${videoimage.vTitle}">
				    <input type="submit" value="완료" class="btn btn-info" id="alram">
        			<input type="reset" value="취소" class="btn btn-default"> 	</form> </div></li>
					<li><div  id="blockch">
					<form action="blockvi.rp" method="post" >
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
					  <input type="hidden" id="vNo" name="vNo"  value="${videoimage.vNo}"/>
					 <input type="submit" class="dropdown-item2"  value="동영상  차단">
					 </form> </div>		</li>	</ul></div>
				</nav>
				</div>
						  </c:forEach> <img src="resources/images/광고.PNG" width = "500px"  height="300px" style=" margin-top:25px;margin-left:3px;"  >
						  </div>
				</div>
 	 </div></div></div> 
<br><br><br><br>
  
	   <div class="row">
		<div class="col-md-10 col-center m-auto" style="z-index:  1;">
			<h3> <span><div id="vid">  <b>최근 업로드된 동영상</b></div></span> </h3>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
						<div class="row">
						<c:forEach var="videoimage" items="${videonew}" begin="0" end="5"> 
						<div class="col-sm-4" style="margin-top:10px;"><div class="img-box"><div id="sty"class="scale" style=" float:left;">  <a href="video.vd?userNo=${videoimage.userNo}&vNo=${videoimage.vNo}">
						
						  <video id="movies"  class='video-js'  onmouseover="this.play()" onmouseout="this.pause()"
						     >
						  <source src='resources/uploadFiles/${videoimage.fileNm}' type='video/mp4'>
						   <source src='MY_VIDEO.webm' type='video/webm'>  
						</video>
						
						
							 <div id="sty1"><h4><b>  ${videoimage.vTitle}</b></h4>
							<div id="sty2"><h5><b> ${videoimage.chNm }</b>&nbsp;&nbsp; 
								 <b>${videoimage.tag }</b> <b>  ${videoimage.uploadDt }</b></h5></div></div>
				</a></div></div></div> <div id="dot" style ="float:left;">
							<nav class="navbar  navbar-expand-xl navbar-light" id="dot1"> 
								<button type="button" class="main"  data-toggle="dropdown" id="btncolor" >
								<img src="resources/images/three-dot.png"width="20px" height="20px">
							</button>
				<ul class="dropdown-menu" style="width:250px;border: 1px solid #878686; position:absolute;z-index:  1;">	
							 <li > <a id="vr1" class="dropdown-item2" href="javascript:video();">동영상 신고</a>	
					 <li>  
					  <div  id="video" style="width:100%;"> 
					 <form action="report.rp" method="post" style="width:100%;">
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
					  <input type="hidden"  id="retarget" name="retarget" value="${videoimage.userNo}"/>
					   <li> <input type="radio" id="rewhy" name="rewhy"  value="성적인 콘텐츠" checked>성적인 콘텐츠</li>
					    <li><input type="radio" id="rewhy" name="rewhy"  value="폭력적 또는 혐오스러운 콘텐츠">폭력적 또는 혐오스러운 콘텐츠</li>
					      <li><input type="radio"id="rewhy" name="rewhy"  value="증오 또는 악의적인 콘텐츠">증오 또는 악의적인 콘텐츠</li>
					   <li><input type="radio" id="rewhy" name="rewhy"  value="유해하거나 위험한행위 ">유해하거나 위험한행위</li>
					    <li> <input type="radio"id="rewhy" name="rewhy"  value="스팸 또는 사용자를 현혹하는 콘텐츠">스팸 또는 사용자를 현혹하는 콘텐츠</li>
					    <li> <input type="text" class="form-control" id="rewhy" name="rewhy" placeholder="기타"></li >
 					  <input type="hidden" id="rety" name="rety" value="동영상"/>
					 <input type="hidden"  id="vNo" name="vNo" value="${videoimage.vNo}"/>
					 <input type="hidden" id="vTitle" name="vTitle" value="${videoimage.vTitle}">
					  <input type="hidden"  id="chNm" name="chNm" value="${videoimage.chNm}" > 
				    <input type="submit" value="완료" class="btn btn-info" id="alram">
        			<input type="reset" value="취소" class="btn btn-default"> 	</form> </div></li>
					<li><div  id="blockch">
					<form action="blockvi.rp" method="post" >
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
									  <input type="hidden" id="vNo" name="vNo"  value="${videoimage.vNo}"/>
					 <input type="submit" class="dropdown-item2"  value="동영상  차단">	 </form> </div>		</li>	</ul>
				</nav>
				</div>
						  </c:forEach> 
						  </div>
				</div>
 	 </div></div></div> 
      <br><br><br><br>

      
      
      
      <div class="row">
		<div class="col-md-10 col-center m-auto" style="z-index:  1;">
			<h3> <span><div id="vid">  <b>구독 동영상</b></div></span> </h3>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
						<div class="row">
						<c:forEach var="videoimage" items="${videosub}" begin="0" end="5"> 
						<div class="col-sm-4" style="margin-top:10px;"><div class="img-box"><div id="sty"class="scale" style=" float:left;">  <a href="video.vd?userNo=${videoimage.userNo}&vNo=${videoimage.vNo}">
						<img style=" border-radius:10px;  margin:10px;"  src="resources/uploadFiles/${videoimage.fileNm}" width = "300px"  height="200px"  >
							 <div id="sty1"><h4><b>  ${videoimage.vTitle}</b></h4>
							<div id="sty2"><h5><b> ${videoimage.chNm }</b>&nbsp;&nbsp; 
								 <b>${videoimage.tag }</b> <b>  ${videoimage.uploadDt }</b></h5></div></div>
				</a></div></div></div> <div id="dot" style ="float:left;">
							<nav class="navbar  navbar-expand-xl navbar-light" id="dot1"> 
								<button type="button" class="main"  data-toggle="dropdown" id="btncolor" >
								<img src="resources/images/three-dot.png"width="20px" height="20px">
							</button>
				<ul class="dropdown-menu" style="width:250px;border: 1px solid #878686; position:absolute;z-index:  1;">	
							 <li > <a id="vr1" class="dropdown-item2" href="javascript:video();">동영상 신고</a>	
					 <li>  
					  <div  id="video" style="width:100%;"> 
					 <form action="report.rp" method="post" style="width:100%;">
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
					  <input type="hidden"  id="retarget" name="retarget" value="${videoimage.userNo}"/>
					   <li> <input type="radio" id="rewhy" name="rewhy"  value="성적인 콘텐츠" checked>성적인 콘텐츠</li>
					    <li><input type="radio" id="rewhy" name="rewhy"  value="폭력적 또는 혐오스러운 콘텐츠">폭력적 또는 혐오스러운 콘텐츠</li>
					      <li><input type="radio"id="rewhy" name="rewhy"  value="증오 또는 악의적인 콘텐츠">증오 또는 악의적인 콘텐츠</li>
					   <li><input type="radio" id="rewhy" name="rewhy"  value="유해하거나 위험한행위 ">유해하거나 위험한행위</li>
					    <li> <input type="radio"id="rewhy" name="rewhy"  value="스팸 또는 사용자를 현혹하는 콘텐츠">스팸 또는 사용자를 현혹하는 콘텐츠</li>
					    <li> <input type="text" class="form-control" id="rewhy" name="rewhy" placeholder="기타"></li >
 					  <input type="hidden" id="rety" name="rety" value="동영상"/>
					 <input type="hidden"  id="vNo" name="vNo" value="${videoimage.vNo}"/>
					 <input type="hidden" id="vTitle" name="vTitle" value="${videoimage.vTitle}">
					  <input type="hidden"  id="chNm" name="chNm" value="${videoimage.chNm}" > 
				    <input type="submit" value="완료" class="btn btn-info" id="alram">
        			<input type="reset" value="취소" class="btn btn-default"> 	</form> </div></li>
					<li><div  id="blockch">
					<form action="blockvi.rp" method="post" >
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
									  <input type="hidden" id="vNo" name="vNo"  value="${videoimage.vNo}"/>
					 <input type="submit" class="dropdown-item2"  value="동영상  차단">	 </form> </div>		</li>	</ul>
				</nav>
				</div>
						  </c:forEach> 
						  </div>
				</div>
 	 </div></div></div> 
      <br><br><br><br>
      
      
      
      
      
      
      <div class="row">
		<div class="col-md-10 col-center m-auto" style="z-index:  1;">
			<h3> <span><div id="vid">  <b>좋아요 동영상</b></div></span> </h3>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
						<div class="row">
						<c:forEach var="videoimage" items="${videolike}" begin="0" end="5"> 
						<div class="col-sm-4" style="margin-top:10px;"><div class="img-box"><div id="sty"class="scale" style=" float:left;">  <a href="video.vd?userNo=${videoimage.userNo}&vNo=${videoimage.vNo}">
						<img style=" border-radius:10px;  margin:10px;"  src="resources/uploadFiles/${videoimage.fileNm}" width = "300px"  height="200px"  >
							 <div id="sty1"><h4><b>  ${videoimage.vTitle}</b></h4>
							<div id="sty2"><h5><b> ${videoimage.chNm }</b>&nbsp;&nbsp; 
								 <b>${videoimage.tag }</b> <b>  ${videoimage.uploadDt }</b></h5></div></div>
				</a></div></div></div> <div id="dot" style ="float:left;">
							<nav class="navbar  navbar-expand-xl navbar-light" id="dot1"> 
								<button type="button" class="main"  data-toggle="dropdown" id="btncolor" >
								<img src="resources/images/three-dot.png"width="20px" height="20px">
							</button>
				<ul class="dropdown-menu" style="width:250px;border: 1px solid #878686; position:absolute;z-index:  1;">	
							 <li > <a id="vr1" class="dropdown-item2" href="javascript:video();">동영상 신고</a>	
					 <li>  
					  <div  id="video" style="width:100%;"> 
					 <form action="report.rp" method="post" style="width:100%;">
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
					  <input type="hidden"  id="retarget" name="retarget" value="${videoimage.userNo}"/>
					   <li> <input type="radio" id="rewhy" name="rewhy"  value="성적인 콘텐츠" checked>성적인 콘텐츠</li>
					    <li><input type="radio" id="rewhy" name="rewhy"  value="폭력적 또는 혐오스러운 콘텐츠">폭력적 또는 혐오스러운 콘텐츠</li>
					      <li><input type="radio"id="rewhy" name="rewhy"  value="증오 또는 악의적인 콘텐츠">증오 또는 악의적인 콘텐츠</li>
					   <li><input type="radio" id="rewhy" name="rewhy"  value="유해하거나 위험한행위 ">유해하거나 위험한행위</li>
					    <li> <input type="radio"id="rewhy" name="rewhy"  value="스팸 또는 사용자를 현혹하는 콘텐츠">스팸 또는 사용자를 현혹하는 콘텐츠</li>
					    <li> <input type="text" class="form-control" id="rewhy" name="rewhy" placeholder="기타"></li >
 					  <input type="hidden" id="rety" name="rety" value="동영상"/>
					 <input type="text"  id="vNo" name="vNo" value="${videoimage.vNo}"/>
					 <input type="hidden" id="vTitle" name="vTitle" value="${videoimage.vTitle}">
					  <input type="hidden"  id="chNm" name="chNm" value="${videoimage.chNm}" > 
				    <input type="submit" value="완료" class="btn btn-info" id="alram">
        			<input type="reset" value="취소" class="btn btn-default"> 	</form> </div></li>
					<li><div  id="blockch">
					<form action="blockvi.rp" method="post" >
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
									  <input type="hidden" id="vNo" name="vNo"  value="${videoimage.vNo}"/>
					 <input type="submit" class="dropdown-item2"  value="동영상  차단">	 </form> </div>		</li>	</ul>
				</nav>
				</div>
						  </c:forEach> 
						  </div>
				</div>
 	 </div></div></div> 
      <br><br><br><br>
      
      
      
      
      
      
      
      
      
      
      

<script type="text/javascript">


	function  showVideo(){
		var url="/home.mb";
		var paramData ={"vNo":"${videoimage.vNo}"};
		console.log(paramData);

	}
	
	$(function(){
		$("#alram").each(function(){
			$(this).click(function(){
				var videoUserNo = $(this).parent().children("#retarget").val();
				var loginUserNo = $(this).parent().children("#userNo").val();
				console.log(videoUserNo);
				var msg = loginUserNo + "&" + videoUserNo;
				ws2.send(msg);
			});
		});
	});
	
    
    </script>
  <jsp:include page="../common/footer.jsp"></jsp:include>
 
</body>
</html>