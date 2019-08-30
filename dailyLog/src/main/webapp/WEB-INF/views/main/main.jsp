<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<%-- 	<jsp:include page="../loger/searchLogerVideo.jsp"></jsp:include> --%>	 
  	  
	<%-- <jsp:include page="../loger/selectLogerCalculate.jsp"></jsp:include> --%>
	<c:if test="${ empty sessionScope.loginUser }">
			 <jsp:include page="../common/guest.jsp"></jsp:include> 
	</c:if>
	<c:if test="${ !empty sessionScope.loginUser }">
		<jsp:include page="../common/mainBar.jsp"></jsp:include>	
	</c:if>
	
	<jsp:include page="../common/footer.jsp"/>
  	  
	<%-- <jsp:include page="../loger/logerCalculate.jsp"></jsp:include> --%>


</body>
</html>