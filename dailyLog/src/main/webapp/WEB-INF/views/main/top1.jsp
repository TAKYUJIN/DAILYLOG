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
h2 {
 background:#fff;
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
   /*  background: #d4d4d4; */
    left: 0;
    right: 0;
    bottom: 14px;
     background:#fff;
}
h2 span {
	display: inline-block;
	padding: 0 25px;
	/* background:#ebebeb; */
	position:relative;
	z-index:2;
	 background:#fff;
}
.col-center {
	margin: 0 auto;
	float: none !important;
	 background:#fff;
}
.carousel {	
	margin: 30px auto 50px;
	padding: 0 68px;
 background:#fff;
}
.carousel .item {
    text-align: center;
	overflow: hidden;
    height: 220px;
     background:#fff;}
 .carousel-control{
 background:#fff;
 }
  .carousel .item .img-box {
	background: #fff;
	padding: 9px;
	/* box-shadow: 0 6px 20px -6px rgba(0,0,0,0.4); */
} 
.carousel .item img {
    margin: 0 auto;
    background:#fff;
}
.carousel .carousel-control {
	width: 68px;
	 background:#fff;
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
	background:#fff;
}
.carousel-indicators li, .carousel-indicators li.active {
	width: 10px;
	height: 10px;
	border-radius: 50%;
	margin: 1px 4px;
	box-shadow: inset 0 2px 1px rgba(0,0,0,0.2);
	background:#fff;
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
		/* padding: 8px 20px; */
		/* line-height: normal; */
	}
	.navbar .dropdown-menu li a:hover, .navbar .dropdown-menu li a:active {
		color: #333;
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
	 #l{
	 width:150px;
	 margin-right:-25px;
	 } 
</style>
</head>
<body>
<jsp:include page="../common/mainBar.jsp"></jsp:include>	
 
	<%-- <%-- <div class="row">
		<div class="col-md-9 col-center m-auto">
		 <c:forEach var="videoimage" items="${list}"> 
 		<h2> <span>  <b>인기동영상</b></span> </h2>
			<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li> 
				</ol>   
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
				<!-- Wrapper for carousel items -->
				  <div class="carousel-inner">
					<div class="item carousel-item active"> 
						<div class="row">
							<div class="col-sm-4"><div class="img-box"> 
							<a href="video.vd"><img src="resources/images/${videoimage.filepath}" width = "500px"  height="200px" alt=""></a></div></div>
							<a href="#" ><img src="resources/images/three-dot.png"width="30px" height="30px"class="fixed" ></a>
										
						</div>
					</div>
					<div class="item carousel-item">
						<div class="row">
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/${videoimage.filepath}"  width = "700px"  height="200px"alt=""></div></div>
						</div>
					</div>
					<div class="item carousel-item">
						<div class="row">
							<div class="col-sm-4"><div class="img-box"><img src="resources/images/${videoimage.filepath}"  width = "700px"  height="200px" alt=""></div></div>
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
	   --%>
	 <div class="row">
		<div class="col-md-9 col-center m-auto">
			<h2> <span>  <b>구독동영상1</b></span> </h2>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel2" data-slide-to="1"></li>
					<li data-target="#myCarousel2" data-slide-to="2"></li> 
				</ol>   
				<div class="carousel-inner">
					<div class="item carousel-item active"> 
						<div class="row">
							
						<c:forEach var="videoimage" items="${list}">
						<div class="col-sm-2"id="l"><div class="img-box"><div style=" float:left;"> <a href="video.vd">
						<a href="video.vd"><img src="resources/images/${videoimage.filepath}" width = "102px"  height="130px"  ></a>
							<h5>제목:${videoimage.vTitle}</h5>
							<h5>채널명:${videoimage.chNm }</h5>
				</a></div></div></div> 
						<div id="dot" style ="float:left;">
						
							<nav class="navbar  navbar-expand-xl navbar-light">
								<button type="button" class="friendlist"  data-toggle="dropdown" id="btncolor" >
								<img src="resources/images/three-dot.png"width="20px" height="20px">
							</button>
				
				<ul class="dropdown-menu">					
					<li><a href="#" class="dropdown-item">동영상 신고</a></li>
					<li><a href="#" class="dropdown-item">동영상 차단</a></li>
				</ul></nav>
						 </div>
						  </c:forEach> </div></div>
				 
					<div class="item carousel-item1">
						<div class="row"><c:forEach var="videoimage" items="${list}"><a href="video.vd">
 <img src="resources/images/${videoimage.filepath}" class="img-responsive img-fluid"width = "180px"  height="130px" alt=""> </a>
						</c:forEach></div>
					</div>
					<div class="item carousel-item2">
						<div class="row"><c:forEach var="videoimage" items="${list}">
							<div class="col-sm-2" ><div class="img-box"><img src="resources/images/${videoimage.filepath}"  class="img-responsive img-fluid"width = "180px"  height="130px" alt="">
							<h5>제목:${videoimage.vTitle}</h5>
							<h5>채널명:${videoimage.chNm }</h5>
							
							</div></div>
							</c:forEach>
						</div>
					</div>
				</div>
 				<a class="carousel-control left carousel-control-prev" href="#myCarousel1" data-slide="prev" style="background:#fff;">
					<i class="fa fa-chevron-left"></i>
				</a>
				<a class="carousel-control right carousel-control-next" href="#myCarousel1" data-slide="next"style="background:#fff;">
					<i class="fa fa-chevron-right"></i>
 
 </a></div></div></div> 
 <div class="row">
		<div class="col-md-9 col-center m-auto">
			<h2> <span>  <b>구독동영상2</b></span> </h2>
			<div id="myCarousel3" class="carousel slide" data-ride="carousel" data-interval="0">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel2" data-slide-to="1"></li>
					<li data-target="#myCarousel2" data-slide-to="2"></li> 
				</ol>   
				<div class="carousel-inner">
					<div class="item carousel-item active"> 
						<div class="row">
							
						<c:forEach var="videoimage" items="${list}">
						<div class="col-sm-2"id="l"><div class="img-box"><div style=" float:left;"> <a href="video.vd">
						<img src="resources/images/${videoimage.filepath}" width = "102px"  height="130px"  >
							<h5>제목:${videoimage.vTitle}</h5>
							<h5>채널명:${videoimage.chNm }</h5>
				</a></div></div></div> 
						<div id="dot" style ="float:left;">
						
							<nav class="navbar  navbar-expand-xl navbar-light">
								<button type="button" class="friendlist"  data-toggle="dropdown" id="btncolor" >
								<img src="resources/images/three-dot.png"width="20px" height="20px">
							</button>
				
				<ul class="dropdown-menu">					
					<li><a href="#" class="dropdown-item">동영상 신고</a></li>
					<li><a href="#" class="dropdown-item">동영상 차단</a></li>
				</ul></nav>
						 </div>
						  </c:forEach> </div></div>
				 
					<div class="item carousel-item1">
						<div class="row"><c:forEach var="videoimage" items="${list}">
 <img src="resources/images/${videoimage.filepath}" class="img-responsive img-fluid"width = "180px"  height="130px" alt=""> 
						</c:forEach></div>
					</div>
					<div class="item carousel-item2">
						<div class="row"><c:forEach var="videoimage" items="${list}">
							<div class="col-sm-2" ><div class="img-box"><img src="resources/images/${videoimage.filepath}"  class="img-responsive img-fluid"width = "180px"  height="130px" alt="">
							<h5>제목:${videoimage.vTitle}</h5>
							<h5>채널명:${videoimage.chNm }</h5>
							
							</div></div>
							</c:forEach>
						</div>
					</div>
				</div>
 				<a class="carousel-control left carousel-control-prev" href="#myCarousel3" data-slide="prev" style="background:#fff;">
					<i class="fa fa-chevron-left"></i>
				</a>
				<a class="carousel-control right carousel-control-next" href="#myCarousel3" data-slide="next"style="background:#fff;">
					<i class="fa fa-chevron-right"></i>
 
 </a></div></div></div> 
 
 
 
 
 
 
 
 
 
 
</body>
<script type="text/javascript">
function  showVideo(){
	var url="/home.mb";
	var paramData ={"vNo":"${videoimage.vNo}"};
	console.log(paramData);
	
}

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

</script>



</html>