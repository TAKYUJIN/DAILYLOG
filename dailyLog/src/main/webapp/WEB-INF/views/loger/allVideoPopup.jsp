<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto">
<title>WITH</title>
<style>
</style>
<body>

	<div id="popup"
		style="border: 1px solid black; width: 700px; height: 500px; padding: 10px;">
		<div class="selectVideo">
			<table class="table table-striped" id="adminTable">

				<tbody id="admin">
					 <c:forEach items="${cList}" var="c"> 
					<tr>
						<td><input type="checkbox" class="inputCheck" name="check">
							<div
								style="margin-left: 30px; border: 1px solid black; width: 100px; height: 70px; padding: 10px;">썸네일자리!</div>
							<p style="margin-left: 200px; margin-top: -100px; font-size:15px;">영상제목</p>
							<p style="margin-left: 200px; font-size:15px;">업로드일</p>
							<p style="margin-left: 200px; font-size:15px;">태그</p></td>
					</tr>
					<tr>
						<td><input type="checkbox" class="inputCheck" name="check">
							<div
								style="margin-left: 30px; border: 1px solid black; width: 100px; height: 70px; padding: 10px;">썸네일자리!</div>
								<p style="margin-left: 200px; margin-top: -100px; font-size:15px;">영상제목</p>
							<p style="margin-left: 200px; font-size:15px;">업로드일</p>
							<p style="margin-left: 200px; font-size:15px;">태그</p></td>
					</tr>
					<tr>
						<td><input type="checkbox" class="inputCheck" name="check">
							<div
								style="margin-left: 30px; border: 1px solid black; width: 100px; height: 70px; padding: 10px;">썸네일자리!</div>
								<p style="margin-left: 200px; margin-top: -100px; font-size:15px;">영상제목</p>
							<p style="margin-left: 200px; font-size:15px;">업로드일</p>
							<p style="margin-left: 200px; font-size:15px;">태그</p></td>
					</tr>
					 </c:forEach> 
				</tbody>
			</table>

									<button type="submit" style="margin-left:300px; margin-top:80px;">선택완료</button>



		</div>

	</div>

</body>






</html>