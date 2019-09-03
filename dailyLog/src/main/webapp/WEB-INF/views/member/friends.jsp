<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../common/mainBar.jsp"/>


<form action="" method="post">
		<h1>알림을 받을 방법을 선택하여 주세요.</h1>
		<br><br><br>
		
		<h3>실시간 알림 설정</h3>
		<input type="radio" value="신고한 영상이나 댓글에 대해서 신고 현황에 대해 알림을 받습니다.">
		<input type="radio" value="구독한 채널의 영상에 대한 알림을 받습니다.">
		<input type="radio" value="내 댓글에 답글이 달리면 알림을 받겠습니다.">
		<input type="radio" value="내 채널에  구독과 댓글이 달리면 알림을 받겠습니다.">
	</form>

<jsp:include page="../common/footer.jsp"/>
</body>
</html>