<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
  
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
/* #video1{
/* margin-bottom:80px;
 */
/*  }.video2{
margin-top:20%;
}
#imagesection{
float:left;
margin:0px auto;
margin-left:80px;
}
*/
img.fixed{
 
 vertical-align: top;
  
 } 
 body {
	background: #ebebeb;
}
h2 {
	color: #696969;
	font-size: 26px;
	font-weight: 300;
	text-align: center;
	position: relative;
	margin: 40px 70px;
	text-transform: uppercase;
	font-family: 'Open Sans', sans-serif;
}
h2::after {
	content: "";
    width: 100%;
    position: absolute;
    margin: 0 auto;
    height: 1px;
    border-radius: 1px;
    background: #d4d4d4;
    left: 0;
    right: 0;
    bottom: 14px;
}
h2 span {
	display: inline-block;
	padding: 0 25px;
	background:#ebebeb;
	position:relative;
	z-index:2;
}
.col-center {
	margin: 0 auto;
	float: none !important;
}
.carousel {	
	margin: 30px auto 50px;
	padding: 0 68px;
}
.carousel .item {
    text-align: center;
	overflow: hidden;
    height: 220px;
}
 
/* .carousel .item .img-box {
	background: #fff;
	padding: 9px;
	box-shadow: 0 6px 20px -6px rgba(0,0,0,0.4);
} */
.carousel .item img {
    margin: 0 auto;
}
.carousel .carousel-control {
	width: 68px;
	background: none;
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
    text-shadow: 0 3px 3px #e6e6e6, 0 0 0 #000;
}
.carousel .carousel-indicators {
	bottom: -40px;
}
.carousel-indicators li, .carousel-indicators li.active {
	width: 10px;
	height: 10px;
	border-radius: 50%;
	margin: 1px 4px;
	box-shadow: inset 0 2px 1px rgba(0,0,0,0.2);
}
.carousel-indicators li {	
	background: #999;
	border-color: transparent;
}
.carousel-indicators li.active {
	background: #555;
}
</style>
</head>
<body>

<!-- 							  <div class="video1">
							 <h2>인기 동영상</h2>
 									<div id="imagesection">
 
								Feature
									<section >
										<img src="resources/images/video.PNG"width="30px" height="220px">
										<a href="#" ><img src="resources/images/three-dot.png"width="px" height="30px" class="fixed"></a>
										 
									</section>

							</div></div>
 		  
 		 
 		 
							  <div class="video2">
							 <h2>최근 동영상</h2>
 									<div id="imagesection">
 
								Feature
									<section >
										<img src="resources/images/video.PNG"width="400px" height="220px">
										<a href="#" ><img src="resources/images/three-dot.png"width="30px" height="30px" class="fixed"></a>
										 
									</section>

							</div>
 									<div id="imagesection">
 
								Feature
									<section>
										<img src="resources/images/video.PNG"width="400px" height="220px">
																				<a href="#" ><img src="resources/images/three-dot.png"width="30px" height="30px"class="fixed" ></a>
										
										<header>
											<h3>Nice! What is HTML5 UP?</h3>
										</header>
										<p>I started it as a way to both test my responsive tools and sharpen up my coding
										and design skills a bit.</p>
									</section>
</div>

  
								Feature
									<div id="imagesection">
									<section>
									
									<img src="resources/images/video.PNG" width="400px" height="220px">
																			<a href="#" ><img src="resources/images/three-dot.png"width="30px" height="30px"class="fixed"></a>
									
										<header>
											<h3>What's this built with?</h3>
										</header>
										<p><strong>Responsive Tools</strong> is a simple set of tools for building responsive
										sites and apps. All of my templates at are built using these tools.</p>
									</section>
									</div>

 							 
						</div> -->

<div class="container">
	<div class="row">
		<div class="col-md-9 col-center m-auto">
		<c:forEach var="videoimage" items="${list}">
			<h2> <span>  <b>인기동영상</b></span> </h2>
			<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
				<!-- Carousel indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li> 
				</ol>   
				<!-- Wrapper for carousel items -->
				<div class="carousel-inner">
					<div class="item carousel-item active"> 
						<div class="row">
							<div class="col-sm-4"><div class="img-box"><h1>${videoimage.userNo}</h1>
							<a href="video.vd"><img src="resources/images/${videoimage.filepath}" width = "700px"  height="200px" alt=""></a></div></div>
							<a href="#" ><img src="resources/images/three-dot.png"width="30px" height="30px"class="fixed" ></a>
										
						</div>
					</div>
					<div class="item carousel-item">
						<div class="row">
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG"  width = "700px"  height="200px"alt=""></div></div>
						</div>
					</div>
					<div class="item carousel-item">
						<div class="row">
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG"  width = "700px"  height="200px" alt=""></div></div>
						</div>
					</div>
				</div>
				<!-- Carousel controls -->
				<a class="carousel-control left carousel-control-prev" href="#myCarousel" data-slide="prev">
					<i class="fa fa-chevron-left"></i>
				</a>
				<a class="carousel-control right carousel-control-next" href="#myCarousel" data-slide="next">
					<i class="fa fa-chevron-right"></i>
				</a>
			</div></c:forEach>
		</div>
	</div>
	<div class="row">
		<div class="col-md-9 col-center m-auto">
			<h2> <span>  <b>구독동영상1</b></span> </h2>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel1" data-slide-to="1"></li>
					<li data-target="#myCarousel1" data-slide-to="2"></li> 
				</ol>   
				<div class="carousel-inner">
					<div class="item carousel-item active"> 
						<div class="row">
							<div class="col-sm-4"><div class="img-box" > <img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt="">
						    <a href="#" ><img src="resources/images/three-dot.png"width="20px" height="20px"class="fixed" ></a></div></div> 
							<div class="col-sm-4"><div class="img-box"> <img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt="">
							 <a href="#" ><img src="resources/images/three-dot.png"width="20px" height="20px"class="fixed" ></a></div></div>
							<div class="col-sm-4"><div class="img-box"> <img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt="">
						    <a href="#" ><img src="resources/images/three-dot.png"width="20px" height="20px"class="fixed" ></a></div></div> 
 							
						</div>
					</div>
					<div class="item carousel-item">
						<div class="row">
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt=""></div></div>
							
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt=""></div></div>
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt=""></div></div>
						</div>
					</div>
					<div class="item carousel-item">
						<div class="row">
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt=""></div></div>
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt=""></div></div>
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt=""></div></div>
						</div>
					</div>
				</div>
				<!-- Carousel controls -->
				<a class="carousel-control left carousel-control-prev" href="#myCarousel1" data-slide="prev">
					<i class="fa fa-chevron-left"></i>
				</a>
				<a class="carousel-control right carousel-control-next" href="#myCarousel1" data-slide="next">
					<i class="fa fa-chevron-right"></i>
				</a>
			</div>
		</div>
	</div>
</div> 
	<div class="row">
		<div class="col-md-9 col-center m-auto">
			<h2> <span>  <b>구독동영상2</b></span> </h2>
			<div id="myCarousel2" class="carousel slide" data-ride="carousel" data-interval="0">
				<!-- Carousel indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel2" data-slide-to="1"></li>
					<li data-target="#myCarousel2" data-slide-to="2"></li> 
				</ol>   
				<!-- Wrapper for carousel items -->
				<div class="carousel-inner">
					<div class="item carousel-item active"> 
						<div class="row">
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG"  class="img-responsive img-fluid" alt="">
							<a href="#" ><img src="resources/images/three-dot.png"width="20px" height="20px"class="fixed" ></a></div></div>
							
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt="">
							<a href="#" ><img src="resources/images/three-dot.png"width="20px" height="20px"class="fixed" ></a></div></div>
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt="">
							<a href="#" ><img src="resources/images/three-dot.png"width="20px" height="20px"class="fixed" ></a></div></div>
						</div>
					</div>
					<div class="item carousel-item1">
						<div class="row">
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt=""></div></div>
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt=""></div></div>
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt=""></div></div>
						</div>
					</div>
					<div class="item carousel-item2">
						<div class="row">
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt=""></div></div>
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt=""></div></div>
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/video22.PNG" class="img-responsive img-fluid" alt=""></div></div>
						</div>
					</div>
				</div>
 				<a class="carousel-control left carousel-control-prev" href="#myCarousel2" data-slide="prev">
					<i class="fa fa-chevron-left"></i>
				</a>
				<a class="carousel-control right carousel-control-next" href="#myCarousel2" data-slide="next">
					<i class="fa fa-chevron-right"></i>
				</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>