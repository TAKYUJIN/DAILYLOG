<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">인덱스페이지</h1>
	 <c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	 
	  
   <jsp:forward page="WEB-INF/views/main/main.jsp"></jsp:forward>    
	 
 	 <%-- <c:if test="${ empty sessionScope.loginUser }">
		 <jsp:forward page="guest.mb"></jsp:forward>  
	 </c:if>
	 
	 <c:if test="${ !empty sessionScope.loginUser }">
 		<jsp:forward page="home.mb"></jsp:forward>  
	</c:if>  --%>
</body>
</html>