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
  */ 
h2 {
background:none;
	 
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
	 
/*
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
    
*/
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
	.navbar .dropdown-menu li a:hover, .navbar .dropdown-menu li a:active {
		 
	 
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
	 margin-right:-25px;
	 } 
	 
	   #report{
	 background-color:#fff;
	 width:650px;
	 height:250px;
	 /* margin-left:600px;
	  */
	 /*  position:fixed; */
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
	 padding:10px;
	 }
</style>
</head>
<body>
      		 <jsp:include page="../common/mainBar.jsp"></jsp:include>	
    
  
	<%-- 
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
	   
	   
	  	<div class="row" id="v1"> <h2> <span>  <b>인기동영상</b></span> </h2><br>
						<c:forEach var="videoimage" items="${list}">
							
						<div class="col-sm-2"id="l"><div class="img-box"><div style=" float:left;"> <a href="video.vd">
						<img src="resources/images/${videoimage.filepath}" width = "102px"  height="130px"  >
							  <h5>제목:${videoimage.vTitle}</h5>
							<%--  <c:out value="${videoimage.vTitle}" /> > --%>
							<h5>채널명:${videoimage.chNm }</h5> 
							<input type="hidden"  id="target" value="${videoimage.vNo}"/> 
				</a></div></div>
				
				</div> 
						<div id="dot" style ="float:left;">
							<nav class="navbar  navbar-expand-xl navbar-light">
								<button type="button" class="main"  data-toggle="dropdown" id="btncolor" >
								<img src="resources/images/three-dot.png"width="20px" height="20px">
							</button>
				
			<ul class="dropdown-menu" >	
							 <li > <a id="vr1" class="dropdown-item2" href="javascript:video();">동영상 신고</a>	
					 <li >  
					  <div  id="video"> 
					 <form action="report.rp" method="post" >
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
					  <input type="hidden"  id="retarget" name="retarget" value="${videoimage.userNo}"/>
					   <li> <input type="radio" id="rewhy" name="rewhy"  value="성적인 콘텐츠">성적인 콘텐츠</li>
					    <li><input type="radio" id="rewhy" name="rewhy"  value="폭력적 또는 혐오스러운 콘텐츠">폭력적 또는 혐오스러운 콘텐츠</li>
					      <li><input type="radio"id="rewhy" name="rewhy"  value="증오 또는 악의적인 콘텐츠">증오 또는 악의적인 콘텐츠</li>
					   <li><input type="radio" id="rewhy" name="rewhy"  value="유해하거나 위험한행위 ">유해하거나 위험한행위</li>
					    <li> <input type="radio"id="rewhy" name="rewhy"  value="스팸 또는 사용자를 현혹하는 콘텐츠">스팸 또는 사용자를 현혹하는 콘텐츠</li>
					    <li> <input type="text" class="form-control" id="rewhy" name="rewhy" placeholder="기타"></li >
 					  <input type="hidden" id="rety" name="rety" value="동영상"/>
					 <input type="hidden"  id="vNo" name="vNo" value="${videoimage.vNo}"/>
					  <input type="hidden"  id="chNm" name="chNm" value="${videoimage.chNm}" > 
				    <input type="submit" value="완료" class="btn btn-info">
        			<input type="reset" value="취소" class="btn btn-default"> 	</form> </div></li>
					<li><div  id="blockvi">
					<form action="blockvi.rp" method="post" >
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
					  <input type="hidden" id="vNo" name="vNo"  value="${videoimage.vNo}"/>
					 <input type="submit" class="dropdown-item2"  value="동영상 채널 차단">
					 </form> </div>		</li>	</ul>
				
				</nav>
				</div>
      				</c:forEach> 
						</div> <br><br><br><br>
	   
	   	<div class="row" id="v1"> <h2> <span>  <b>최근 본 동영상</b></span> </h2>
	   	<br>
						<c:forEach var="videoimage" items="${list}">
						<div class="col-sm-2"id="l"><div class="img-box"><div style=" float:left;"> <a href="video.vd">
						<img src="resources/images/${videoimage.filepath}" width = "102px"  height="130px"  >
							  <h5>제목:${videoimage.vTitle}</h5>
							<%--  <c:out value="${videoimage.vTitle}" /> > --%>
							<h5>채널명:${videoimage.chNm }</h5> 
							<input type="hidden"  id="target" value="${videoimage.vNo}"/> 
				</a></div></div>
				
				</div> 
						<div id="dot" style ="float:left;">
							<nav class="navbar  navbar-expand-xl navbar-light">
								<button type="button" class="main"  data-toggle="dropdown" id="btncolor" >
								<img src="resources/images/three-dot.png"width="20px" height="20px">
							</button>
				
			<ul class="dropdown-menu" >	
							 <li > <a id="vr1" class="dropdown-item2" href="javascript:video();">동영상 신고</a>	
					 <li >  
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
				    <input type="submit" value="완료" class="btn btn-info">
        			<input type="reset" value="취소" class="btn btn-default"> 	</form> </div></li>
					<li><div  id="blockch">
					<form action="blockch.rp" method="post" >
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
					  <input type="hidden" id="chNm" name="chNm"  value="${videoimage.chNm}"/>
					 <input type="submit" class="dropdown-item2"  value="동영상 채널 차단">
					 </form> </div>		</li>	</ul>
				
				</nav>
				</div>
      				</c:forEach> 
						</div>
      <br><br><br><br>
      	<div class="row" id="v1"> <h2> <span>  <b>즐겨찾기한 동영상</b></span> </h2>
      	<br>
						<c:forEach var="videoimage" items="${list}">
							
						<div class="col-sm-2"id="l"><div class="img-box"><div style=" float:left;"> <a href="video.vd">
						<img src="resources/images/${videoimage.filepath}" width = "102px"  height="130px"  >
							  <h5>제목:${videoimage.vTitle}</h5>
							<%--  <c:out value="${videoimage.vTitle}" /> > --%>
							<h5>채널명:${videoimage.chNm }</h5> 
							<input type="hidden"  id="target" value="${videoimage.vNo}"/> 
				</a></div></div>
				
				</div> 
						<div id="dot" style ="float:left;">
							<nav class="navbar  navbar-expand-xl navbar-light">
								<button type="button" class="main"  data-toggle="dropdown" id="btncolor" >
								<img src="resources/images/three-dot.png"width="20px" height="20px">
							</button>
				
				<ul class="dropdown-menu" >	
							 <li > <a id="vr1" class="dropdown-item2" href="javascript:video();">동영상 신고</a>	
					 <li >  
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
				    <input type="submit" value="완료" class="btn btn-info">
        			<input type="reset" value="취소" class="btn btn-default"> 	</form> </div></li>
					<li><div  id="blockch">
					<form action="blockch.rp" method="post" >
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
					  <input type="hidden" id="chNm" name="chNm"  value="${videoimage.chNm}"/>
					 <input type="submit" class="dropdown-item2"  value="동영상 채널 차단">
					 </form> </div>		</li>	</ul>
				
				</nav>
				</div>
      				</c:forEach> 
						</div>
      
      <br><br><br><br>
      
    	<div class="row" id="v1"> <h2> <span>  <b>구독동영상1</b></span> </h2>
    	<br>
						<c:forEach var="videoimage" items="${list}">
							
						<div class="col-sm-2"id="l"><div class="img-box"><div style=" float:left;">
						<a href="video.vd?userNo=${videoimage.userNo}&vNo=${videoimage.vNo}">
						<img src="resources/images/${videoimage.filepath}" width = "102px"  height="130px"  >
							  <h5>제목:${videoimage.vTitle}</h5>
							<%--  <c:out value="${videoimage.vTitle}" /> > --%>
							<h5>채널명:${videoimage.chNm }</h5> 
							<input type="hidden"  id="target" value="${videoimage.vNo}"/> 
				</a></div></div>
				
				</div> 
						<div id="dot" style ="float:left;">
							<nav class="navbar  navbar-expand-xl navbar-light">
								<button type="button" class="main"  data-toggle="dropdown" id="btncolor" >
								<img src="resources/images/three-dot.png"width="20px" height="20px">
							</button>
			<ul class="dropdown-menu" >	
							 <li > <a id="vr1" class="dropdown-item2" href="javascript:video();">동영상 신고</a>	
					 <li >  
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
				    <input type="submit" value="완료" class="btn btn-info">
        			<input type="reset" value="취소" class="btn btn-default"> 	</form> </div></li>
					<li><div  id="blockch">
					<form action="blockch.rp" method="post" >
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
					  <input type="hidden" id="chNm" name="chNm"  value="${videoimage.chNm}"/>
					 <input type="submit" class="dropdown-item2"  value="동영상 채널 차단">
					 </form> </div>		</li>	</ul>
				</nav>
				</div>
      				</c:forEach> 
						</div>
						
						<br><br><br><br>
						
						<div class="row" id="v1"> <h2> <span>  <b>구독동영상2</b></span> </h2>
						<br>
						<c:forEach var="videoimage" items="${list}">
							
						<div class="col-sm-2"id="l"><div class="img-box"><div style=" float:left;"> <a href="video.vd">
						<img src="resources/images/${videoimage.filepath}" width = "102px"  height="130px"  >
							  <h5>제목:${videoimage.vTitle}</h5>
							<%--  <c:out value="${videoimage.vTitle}" /> > --%>
							<h5>채널명:${videoimage.chNm }</h5> 
							<input type="hidden"  id="target" value="${videoimage.vNo}"/> 
				</a></div></div>
				
				</div> 
						<div id="dot" style ="float:left;">
							<nav class="navbar  navbar-expand-xl navbar-light">
								<button type="button" class="main"  data-toggle="dropdown" id="btncolor" >
								<img src="resources/images/three-dot.png"width="20px" height="20px">
							</button>
				
				<ul class="dropdown-menu" >	
							 <li > <a id="vr1" class="dropdown-item2" href="javascript:video();">동영상 신고</a>	
					 <li >  
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
				    <input type="submit" value="완료" class="btn btn-info">
        			<input type="reset" value="취소" class="btn btn-default"> 	</form> </div></li>
					<li><div  id="blockch">
					<form action="blockch.rp" method="post" >
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
					  <input type="hidden" id="chNm" name="chNm"  value="${videoimage.chNm}"/>
					 <input type="submit" class="dropdown-item2"  value="동영상 채널 차단">
					 </form> </div>		</li>	</ul>
				
				</nav>
				</div>
      				</c:forEach> 
				 </div>
				 
				 
				 
				 
				 
				 
				 
	  	<div class="row" id="v1"> <h2> <span>  <b>인기동영상</b></span> </h2><br>
						<c:forEach var="videoimage" items="${list}">
						<div class="col-sm-2"id="l"><div class="img-box"><div style=" float:left;"> <a href="video.vd">
						<img src="resources/images/${videoimage.filepath}" width = "102px"  height="130px"  >
							  <h5>제목:${videoimage.vTitle}</h5>
							<%--  <c:out value="${videoimage.vTitle}" /> > --%>
							<h5>채널명:${videoimage.chNm }</h5> 
							<input type="hidden"  id="target" value="${videoimage.vNo}"/> 	</a></div></div></div> 
			
						<div id="dot" style ="float:left;">
							<nav class="navbar  navbar-expand-xl navbar-light">
								<button type="button" class="main"  data-toggle="dropdown" id="btncolor" >
								<img src="resources/images/three-dot.png"width="20px" height="20px"></button>
				
				<ul class="dropdown-menu" >	
							 <li > <a id="vr1" class="dropdown-item2" href="javascript:video();">동영상 신고</a>	
					 <li >  
					  <div  id="video">동영상 신고 
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
				    <input type="submit" value="완료" class="btn btn-info">
        			<input type="reset" value="취소" class="btn btn-default"> 	</form> </div></li>
					<li><div  id="blockch">
					<form action="blockch.rp" method="post" >
					  <input type="hidden" id="userNo" name="userNo"  value="${loginUser.userNo}"/>
					  <input type="hidden" id="chNm" name="chNm"  value="${videoimage.chNm}"/>
					 <input type="submit" class="dropdown-item2"  value="동영상 채널 차단">
					 </form> </div>		</li>	</ul>	</nav>	</div>		</c:forEach> 	</div>			 
				 
				 
				 
				 
				 
				 
				 
				 
				 
						<%-- 
 						 <div id="v11">  
					<form action="report.rp" method="post"  >
					<c:forEach var="videoimage" items="${list}">
					 <input type="text"  id="vNo" value="${videoimage.vNo}"/>
					  <input type="hidden"  id="userNo" value="${videoimage.userNo}"/>
					   <input type="hidden"  id="chNm" value="${videoimage.chNm}"/>
					   <input type="text" id="userId" name="userId" value="${loginUser.userNm}"/>
 						<input type="hidden" id="rety" name="rety" value="메인"/>
					<label for="rewhy">신고 사유</label>
					<input type="text" class="form-control" id="rewhy" name="rewhy" placeholder="동영상 신고 사유">
					</c:forEach>
					</form> 
			 	 </div>   --%>
						
						  <<%-- div id="report" style="display:none;">
        			<div class="col-lg-8"><!--게시판 넓이 -->
        			    <div class="panel panel-default" >
           				  <div class="panel-body">
                    <table class="table table-hover">
         <h4>동영상 신고</h4>
        <form action="report.rp" method="post">
        <input type="text"  name="v11" value="${videoimage.vNo}"/>
 			<input type="hidden" id="userId" name="userId" value="${loginUser.userNm}"/>
 			<input type="hidden" id="rety" name="rety" value="메인"/>
 			
			<!-- 신고사유 -->
			<div class="form-group">
				<label for="rewhy">신고 사유</label>
					<input type="text" class="form-control" id="rewhy" name="rewhy" placeholder="동영상 신고 사유">
			</div>
      <div align="center">
        <input type="submit" value="완료" class="btn btn-warning">
        <input type="reset" value="취소" class="btn btn-default" id="reset">
      </div> </form></table> </div></div></div></div> --%>
    <!--   
        <button onclick="fnMove('1')">div1로 이동</button>
    <button onclick="fnMove('2')">div2로 이동</button>
    <button onclick="fnMove('3')">div3로 이동</button>
    <div id="div1">div1</div>
    <div id="div2">div2</div>
    <div id="div3">div3</div> -->
<!-- <script>
    function fnMove(seq){
        var offset = $("#div" + seq).offset();
        $('html, body').animate({scrollTop : offset.top}, 1000);
    }
</script> -->



<script type="text/javascript">
/* $(document).ready(function(){
    $('.video').hide();
    $('#video').hide();
    
    $('#vr1').click(function(){
       $('#dropdown-item2').hide();
       $('#vr1').hide();
       $('#blockch').hide();
       $('#video').show();
      
     });
    $('.dropdown-item2').click(function(){
       $('#dropdown-item2').show();
       $('#myDiv').hide();
       $('#blockch').hide();
       $('#vr1').hide();
       
    });
    
 }); */
	function  showVideo(){
	
		var url="/home.mb";
		var paramData ={"vNo":"${videoimage.vNo}"};
		console.log(paramData);
		
	}
	
/* 	$('#video').click(function(){
		var userNo = "<c:out value='${videoimage.userNo}'/>";
		var vNo = "<c:out value='${videoimage.vNo}'/>";
		
		console.log(userNo + ":::" + vNo);
		//$('#video').load("video.vd",{no:no});
		location.href='video.vd?userNo='+userNo+'&vNo='+vNo;
		
		return false;
	}); */
	
	
/* 	 $(document).ready(function(){
		 $('#main').hide(); 
		    $('#report').hide();  
		    $('.dropdown-item1').click(function(){
		       $('#report').show();
		    });
		    $('#reset').click(function(){
		       $('#report').hide();
		    });
		    
		 }); */
	 
/* 		 $('#v10').hide(); 		
$(document).ready(function(){
	 $('#dot').click(function(){
		 
		 $('#v10').hide(); 
		 $('#vb').show();
		 $('#vr').show();
	 });
	 $('.dropdown-item1').click(function(){
		 
		 $('#v10').show(); 
		 $('#vb').hide();
		 $('#vr').hide();
	 });
	  $('#reset').click(function(){
		  $('#v10').hide(); 
			 $('#vb').show();
			 $('#vr').show();
	       
	    });
}); */
 
</script>
 
</body>
</html>