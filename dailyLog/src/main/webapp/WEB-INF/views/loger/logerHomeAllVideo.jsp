
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
.mainpage {
	width: 1600px;
	margin-top: 30px;
	margin-left:70px;
}

.logerMainImg {
	margin-left:30px;
}

.imInfoPic {
	margin-top: 50px;
	margin-left: 50px;
	width: 70px;
	height: 70px;
	border-radius: 50%;
}

#subscribebtn {
	margin-left: 250px;
	margin-top: -60px;
}

body {
	background: #fff;
	font-family: 'Varela Round', sans-serif;
}

#accordionExample {
	margin-bottom: 20px;
}

.noticeMain {
	margin-top: 50px;
	margin-left: 100px;
	width: 1000px;
	margin-bottom: 50px;
}

.accordion .card {
	background: none;
	border: none;
}

.accordion .card .card-header {
	background: none;
	border: none;
	padding: .4rem 1rem;
	font-family: 'Varela Round', sans-serif;
}

.accordion .card-header h2 span {
	float: left;
	margin-top: 10px;
}

.accordion .card-header .btn {
	color: #2f2f31;
	font-size: 16px; /* 질문 폰트 크기 */
	text-align: left;
	position: relative;
	font-weight: 500;
	padding-left: 2rem;
}

.accordion .card-header i {
	font-size: 1.2rem;
	font-weight: bold;
	position: absolute;
	left: 0;
	top: 9px;
}

.accordion .card-header .btn:hover {
	color: #ff8300;
}

.accordion .card-body {
	color: #324353;
	padding: 0.5rem 3rem;
}

.page-title1 {
	margin: 3rem 0 3rem 0rem;
	font-family: 'Varela Round', sans-serif;
	position: relative;
}

.page-title1::after {
	content: "";
	width: 70px;
	position: absolute;
	height: 3px;
	border-radius: 1px;
	background: #13334A; /* #73bb2b 원래 색 */
	left: 0;
	bottom: -15px;
}

.page-title2 {
	margin: 3rem 0 3rem 0rem;
	font-family: 'Varela Round', sans-serif;
	position: relative;
}

.page-title2::after {
	content: "";
	width: 70px;
	position: absolute;
	height: 3px;
	border-radius: 1px;
	background: #13334A; /* #73bb2b 원래 색 */
	left: 0;
	bottom: -15px;
}

.page-title3 {
	margin: 3rem 0 3rem 0rem;
	font-family: 'Varela Round', sans-serif;
	position: relative;
}

.page-title3::after {
	content: "";
	width: 70px;
	position: absolute;
	height: 3px;
	border-radius: 1px;
	background: #13334A; /* #73bb2b 원래 색 */
	left: 0;
	bottom: -15px;
}

#videoarea {
	width: 900px;
	margin-left: 30px;
	margin-top: 20px;
	/* 	border: 1px solid red; */
}

#videoarea1 {
	width: 900px;
	margin-left: 30px;
	margin-top: 20px;
	/* 	border: 1px solid red; */
}

.newVideo {
	margin-top: 100px;
}

.myInfo {

	margin-left: 30px;

}
#subscribe{
		margin-left:430px;
}
.my-hr1 {
        border: 0;
    height: 1px;
    background:#A8B7BC;
    width:1400px;
    margin-right:1000px;
  }
    .my-hr2{
  margin-left:70px;
      border: 0;
    height: 1px;
    background:#A8B7BC;
    width:1400px;
    margin-right:1000px;
  }

</style>


</head>
<body>
	<jsp:include page="../common/logerBar.jsp"></jsp:include>

	<div class="mainpage">
		<div class="logerMainImg">
			<img src="resources/uploadFiles/${logertitleimg.fileNm}" style="width:1000px; height: 200px; margin-left:130px;">
		</div>
		<br> <br>
		<hr class="my-hr1">
		<form class="navbar-form form-inline" action="search.mb" method="get">
			<div class="input-group search-box" style="margin-left: 1200px">		
				<input type="text" id="search" name="search"  class="form-control" placeholder="검색" >
				  <span  class="input-group-addon"><i class="material-icons">&#xE8B6;</i></span> 
			</div>
		</form>
		
		<div class="myInfo">
			<img src="resources/uploadFiles/${result.fileNm}" width="200px"
				height="200px" >


			<div class="textInfo" style="font-size:30px">
				<p style="widht: 200px; margin-left: 230px; margin-top: -90px;">
					<strong><c:out value="${result.chNm}" /></strong>
				</p>
			</div>
			<input type="button" id="subscribe" class="btn btn-primary"
				value="구독">
			<p style="widht: 200px; margin-left: 230px;font-size:20px; margin-top: -30px;">
				<c:out value="${result.subNum}" />
				명
			</p>
		</div>
		<div class="row" style="margin-left: 30px;">
			<div class="col-lg-15">
				<a href="newHomeChannel.lo?userNo=${sessionScope.userNo}"
					class="noticeLink" style="float: left; width: 15%;"><h4
						class="page-title1">홈</h4></a> <a
					href="logerHomeAllVideo.lo?userNo=${sessionScope.userNo}"
					class="noticeLink" style="float: left; width: 15%;"><h4
						class="page-title2">동영상</h4></a> <a
					href="logerHomeInfo.lo?userNo=${sessionScope.userNo}"
					class="noticeLink" style="float: left; width: 15%;"><h4
						class="page-title3">정보</h4></a>
			</div>
			<div class="newVideo"></div>

		</div>
		<br>

		<p id="newvideos" style="margin-left: 20px">
			<strong>모든동영상</strong>
		</p>
		<br>
		<table id="videoarea">
			<c:forEach items="${logerHomeAllVideo}" var="av" >

				<div class="col-sm-4">

					<a href="video.vd?userNo=${av.userNo}&vNo=${hv.vNo}"> <img  style="
		
border-radius: 7px;
-moz-border-radius: 7px;
-khtml-border-radius: 7px;
-webkit-border-radius: 7px;
"
						src="resources/uploadFiles/${av.fileNm}" width="250px"
						height="200px"></a> <br><br>
					<div class="ch_cnt">
						<strong style="font-size: 15px;"><c:out
								value="${av.vTitle}" /></strong> <br><img
							src="resources/images/playbtn.png" style="width: 15px;"> <span
							class="hit"> <strong class="blind">조회수</strong> <em><c:out
									value="${av.count}" />회</em> &nbsp;
						</span> <span class="bar"> </span> <span class="date"> <strong>등록</strong>
							<em><c:out value="${av.uploadDt}" /></em>
						</span> <br> <span class="tag"><em><c:out
									value="${av.tag}" /></em> </span>
					</div>
	<br><br><br>
				</div>
			</c:forEach>

		</table>

		
</div>
		<script>
			function subOk() {

				location.href = 'subOk.lo';

			}
			var message = '${msg}';
			if (message == "자신의 채널은 구독 불가 입니다") {
				alert(message);

			}
			var message = '${msg}';
			if (message == "동영상이 업로드 되었습니다!") {
				alert(message);
			}

			var state = 0;
			$('#subscribe').click(function(){
			

				if(state == 0){
					document.getElementById('subscribe').value = "구독중";
					
					$.ajax({
						url:"subOk.lo",
						type:"post",
						data:{},
						success:function(data){
							 window.location.reload();
							console.log("insert성공!");

							state = 1;
						},
						error:function(){
							
							console.log("실패!");
						}
					});
				}else {
					document.getElementById('subscribe').value = "구독";
					$.ajax({
						url:"subCancle.lo",
						type:"post",
						data:{},
						success:function(data){
							 window.location.reload();
							console.log("delete성공!");

							state = 0;
						},
						error:function(){
							console.log("실패!");
						}
					});
				}
			});
			//구독중 유지
			$(document).ready(function(){
				var chNo = "<c:out value='${result.chNo}'/>";
				console.log()
				
				$.ajax({
					url:"fastenSub.lo",
					type:"post",
					data:{chNo:chNo},  
					success:function(data){
						console.log("채널번호넘김성공!");

						document.getElementById('subscribe').value = "구독중";
					},
					error:function(){
						console.log("실패!");
					}
				});
			});
		</script>

<hr class="my-hr2">

		<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>