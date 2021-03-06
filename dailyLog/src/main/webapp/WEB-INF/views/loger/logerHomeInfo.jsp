
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
	margin-left: 70px;
}

.logerMainImg {
	margin-left: 30px;
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

#subscribe {
	margin-left: 230px;
}

#subscribecancel {
	margin-left: 230px;
}
.my-hr1 {
	border: 0;
	height: 1px;
	background: #A8B7BC;
}

.my-hr1 {
	border: 0;
	height: 1px;
	background: #A8B7BC;
	width: 1400px;
	margin-right: 1000px;
}

.my-hr2 {
	margin-left: 70px;
	border: 0;
	height: 1px;
	background: #A8B7BC;
	width: 1400px;
	margin-right: 1000px;
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
.button2 {
	margin-left:50px;
	background-color: #A8B7BC ;
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
	<jsp:include page="../common/logerBar.jsp"></jsp:include>

	<div class="mainpage">
		<div class="logerMainImg">
			<img src="resources/uploadFiles/${logertitleimg.fileNm}"
				style="width: 1000px; height: 200px; margin-left: 130px;">
		</div>
		<br> <br>
		<hr class="my-hr1">
		


		<div class="myInfo">
			<div class="profileImg">
				<c:if test="${result.fileNm != null}">
					<img src="resources/uploadFiles/${result.fileNm}" width="200px"
				height="200px">
				</c:if>
					<c:if test="${result.fileNm == null}">
				<img class="chImg" src="resources/images/newlogo3.png" width="200px"
				height="200px">
				</c:if>
			</div>
			<div class="textInfo" style="font-size: 30px">
				<p style="widht: 200px; margin-left: 230px; margin-top: -90px;">
					<strong><c:out value="${logerTitleNm.chNm}" /></strong>
				</p>
			</div>
			<div id="subDiv">
				<c:if test="${subcount == 0}">
					<input type="button" id="subscribe" class="button1"
						value="구독">
				</c:if>
				<c:if test="${subcount == 1}">
					<input type="button" id="subscribecancel" class="button2"
						value="구독취소">
				</c:if>
			</div>
		
		</div>

			<div class="row" style="margin-left: 30px; margin-top:70px;" >
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
		<div class="infoarea" style="margin-left: 30px">
			<p id="textInfo">
				<strong>통계</strong>
			</p>
			<P>
				가입일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<c:out value="${logerHomeInfo.chDT}" />
			</P>
			<P>
				구독자수 &nbsp;&nbsp;
				<c:out value="${logerHomeInfo.subNum}" />
				명
			</P>
			<br>
			<br>
			<br>
		</div>
		<hr class="my-hr1">
		<br>
		<br>
		<div class="infoarea" style="margin-left: 30px">
			<p id="textInfo">
				<strong>채널소개</strong>
			</p>
			<div id="infoarea">
				<c:out value="${logerHomeInfo.chInfo}" />
			</div>
		</div>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br>

	</div>
	<script>

         
         var message = '${msg}';
         if (message == "자신의 채널은 구독 불가 입니다") {
            alert(message);

         }
         var message = '${msg}';
         if (message == "동영상이 업로드 되었습니다!") {
            alert(message);
         }

         
         $('#subscribe').click(function(){
         
               $.ajax({
                  url:"subOk.lo",
                  type:"post",
                  data:{},
                  success:function(data){
                     
                     console.log("insert성공!");
                     
                     
                     var $subDiv=$('#subDiv');
                     var $subOk=$('#subscribe');
                     
                     $subOk.remove();
                     
                     var $subOk2=
                        ('  <input type="button" id="subscribecancel" class="btn btn-primary" value="구독취소">   ');
                       
                        $subDiv.append($subOk2);

                  },
                  error:function(){
                     console.log("실패!");
                        }
                  });
               }); 
         
         
               $('#subscribecancel').click(function(){
               $.ajax({
                  url:"subCancle.lo",
                  type:"post",
                  data:{},
                  success:function(data){
                  
                     console.log("delete성공!");

                     
                     var $subDiv=$('#subDiv');
                     var $subOk=$('#subscribecancel');
                     
                     $subOk.remove();
                     
                     var $subOk2=
                        ('  <input type="button" id="subscribe" class="btn btn-primary" value="구독">   ');
                       
                        $subDiv.append($subOk2);
                      

                  },
                  error:function(){
                     console.log("실패!");
                        }
                  });
               }); 
         
      </script>





	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>