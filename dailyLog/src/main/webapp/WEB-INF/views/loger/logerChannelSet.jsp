<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Insert title here</title>
<style>
.mainpage {
	width: 1600px;
	/* height: 800px; */
	margin-top: 50px;
	margin-left: 180px;
	/* border: 1px solid black; */
}

#line {
	border: 1px solid darkgray;
	width: 800px;
	margin-left: 100px;
}

#textarea {
	margin-left: 130px;
}

#Revisbtn {
	margin-top: 80px;
	margin-left: -400px;
}

#editbtn {
	
}

h4 {
	width: 200px;
	/* border: 1px solid black; */
}



</style>

</head>
<body>
	<jsp:include page="../common/logerBar.jsp"></jsp:include>


	<form action="logerChannelSet.lo" method="post">

		<div class="mainpage">


			<h4 style="margin-left: 120px;">
				<strong>채널전체구성</strong>
			</h4>
				<select name="preview" style=" margin-left:800px;">
					<option value="newlist">최신순</option>
					<option value="favlist">인기순</option>
					<option value="pickme" onclick="location.href='allVideoPopup.lo'"></option>
				</select>
			<div id="line"></div>

			
	
	<!-- 		<a href="allVideoPopup.lo">팝업화면보이기</a>
			 -->
			<button id="editbtn" class="btn btn-primary">편집</button>
		</div>
		
	</form>



	<br>
	<Br>
	<br>
	<Br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>