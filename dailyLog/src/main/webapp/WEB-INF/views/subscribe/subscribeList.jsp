<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
</head>
<style>
.mainpage {
	width: 1600x;
	margin-top: 200px;

	/*    border: 1px solid black; */
}

#left {
	width: 200px;
	/* height:700px; */
	margin-top: 100px;
	margin-left: 20px;
	/* border: 1px solid black; */
}

#right {
	width: 1000px;
	/* height:700px;  */
	margin-top: -100px;
	margin-left: 200px;
	/*     border: 1px solid red;  */
}

#sub_list {
	margin-top: 50px;
}

.col-sm-6 {
	float: left;
}
  .button1 {
	background-color: #13334A;
	padding: 10px 24px;
	color: white;
	border: none;
	border-radius: 7px;
	moz-border-radius: 7px;
	khtml-border-radius: 7px;
	webkit-border-radius: 7px;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/mainBar.jsp"></jsp:include>
	<form action="subscribe.mb" method="post">
		<div class="maingape">
			<div id="left">
				<div class="container" style="margin-left:1300px">
					<div class="dropdown">
						<button class="button1" type="button"
							data-toggle="dropdown">
							구독 <span class="caret"></span>
						</button>		
						<ul class="dropdown-menu">
						<c:forEach items="${subscribeList}" var="s">
							<li><a href="newHomeChannel.lo?userNo=${s.userNo}"><c:out value="${s.chNm}" /></a></li>
							</c:forEach>
						</ul>
						
					</div>
				</div>
			</div>
		</div>

		<div id="right" style="margin-top:40px; ">
			<div class="carousel-inner">
				<div class="row">
					<c:forEach items="${subscribeVideoList}" var="sv" begin="0" end="5">
						<div class="col-sm-4 ">
							<div class="img-box">
								<div id="sty" class="scale"
									style=" float:left; text-decoration: none; color: black;">
									<a style="text-decoration: none;"
										href="video.vd?userNo=${sv.videoUserNo}&vNo=${sv.vNo}"> <img
										style="border-radius: 10px; color: black; text-decoration: none; margin: 10px;"
										src="resources/uploadFiles/${sv.fileNm}" width="300px"
										height="200px"><br>

										<div style="width: 150px;">
											<c:out value="${sv.chNm}" />
										</div>
										<div style="width: 150px;">
											<c:out value="${sv.vTitle}" />
										</div>
										<p style="width: 150px;">
											<c:out value="${sv.count}" />
											회
										</p>
									</a>
								</div>

							</div>
						</div>

					</c:forEach>
				</div>
			</div>

		</div>
	</form>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
<br>
</html>