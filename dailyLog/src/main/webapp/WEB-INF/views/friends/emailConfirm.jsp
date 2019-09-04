<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="margin: 100px;">
		<a><img src="${pageContext.request.contextPath}/images/dailyloglog.png"	style="height: 80px; margin-left: 10px;" /></a> <br>
		<br>
		<h3>안녕하세요, ${param.FriId} 님</h3>
		<br>
		<p>환영합니다!</p>
		<br>
		<p>친구 추가가 정상적으로 이루어 졌습니다.</p>
		<br>
		<p>로그인 하시면 친구 기능 서비스를 이용하실 수 있습니다.</p>
		<br> <a href="${pageContext.request.contextPath}/">로그인 페이지로 이동하기</a>
	
	</div>
</body>
</html>