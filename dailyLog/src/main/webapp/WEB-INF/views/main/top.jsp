 
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
     background:none;
}
h2 span {
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
	 
	 
	 
</style>
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
	 <div class="row">
		<div class="col-md-9 col-center m-auto">
			<h2> <span>  <b>인기 동영상 </b></span> </h2>
			<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
				  
				<div class="carousel-inner">
						<div class="row">
							
						<c:forEach var="videoimage" items="${videopop}" begin="0" end="5">
						<div class="col-sm-4 "><div class="img-box"><div style=" float:left;"> <a href="video.vd">
						<img src="resources/uploadFiles/${videoimage.fileNm}" width = "350px"  height="300px"  >
							<h5>제목:${videoimage.vTitle}</h5>
							<h5>채널명:${videoimage.chNm }</h5>
							<h5>태그명:${videoimage.tag }</h5>
				</a></div></div></div> 
						 
						  </c:forEach> </div></div>
				</div>
  </div></div></div> 

  <div class="row">
		<div class="col-md-9 col-center m-auto">
			<h2> <span>  <b>최근 업로드된 동영상</b></span> </h2>
			<div id="myCarousel3" class="carousel slide" data-ride="carousel" data-interval="0">
				<div class="carousel-inner">
					 
						<div class="row">
							
						<c:forEach var="videoimage" items="${videonew}" begin="0" end="5">
						<div class="col-sm-4" ><div class="img-box"><div style=" float:left;"> <a href="video.vd">
						<img src="resources/uploadFiles/${videoimage.fileNm}" width = "230px"  height="200px"  >
							<h5>제목:${videoimage.vTitle}</h5>
							<h5>채널명:${videoimage.chNm }</h5>
							<h5>태그명:${videoimage.tag }</h5>
				</a></div></div></div> 
					 
						  </c:forEach> </div></div>
				</div>
 				 
 
  </div></div></div> 
  
 	<jsp:include page="../common/footer.jsp"></jsp:include>
 
</body>
</html>

