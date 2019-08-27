<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../common/loger.jsp"></jsp:include>
	<form:form action="updateBoard.do" method="post" modelAttribute="boardVO">
		<table style="width:500px; border:1px solid black">
			<form:input type="hidden" path="idx"/>
			<tr>
				<td>글제목</td>
				<td><form:input type="text" path="title"/></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><form:input type="text" path="id"/></td>
			</tr>
			<tr>
				<td>글내용</td>
				<td><form:textarea style="width: 400px; height: 200px;" path="content" /></td>
			</tr>
			<tr>
				<td><button>글수정</button></td>
				<td><input type="button" onclick="location.href='getBoardList.do'" value="글목록"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>

</body>
</html>