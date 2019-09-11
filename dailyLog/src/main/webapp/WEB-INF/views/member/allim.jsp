<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 .bs-example{
        margin-left: 20px; 
        margin-top : 10%;
        width: 20%;       
    }
   </style>
</head>
<body>
<jsp:include page="../common/mainBar.jsp" />


<form action="allim.me" method="post">
	<div class="bs-example">    
    <div class="list-group">
        <a href="myPage.me" class="list-group-item list-group-item-action active">
            <i class="fa fa-home"></i> 
        </a>
        <a href="allim.me" class="list-group-item list-group-item-action">
            <i class="fa fa-camera"></i> 알림
        </a>
        <a href="point.me" class="list-group-item list-group-item-action">
            <i class="fa fa-music"></i> 후원&포인트 충전
        </a>
        <a href="#" class="list-group-item list-group-item-action">
            <i class="fa fa-film"></i> 환불
        </a>
    </div>
</div>
		<h1>알림을 받을 방법을 선택하여 주세요.</h1>
		<br><br><br>
		
		<h3>실시간 알림 설정</h3>
		<input type="radio" id="no1" value="신고한 영상이나 댓글에 대해서 신고 현황에 대해 알림을 받습니다.">
		<input type="radio" id="no2"  value="구독한 채널의 영상에 대한 알림을 받습니다.">
		<input type="radio" id="no3" value="내 댓글에 답글이 달리면 알림을 받겠습니다.">
		<input type="radio" id="no4" value="내 채널에  구독과 댓글이 달리면 알림을 받겠습니다.">
	</form>

<jsp:include page="../common/footer.jsp"/>
</body>
</html>