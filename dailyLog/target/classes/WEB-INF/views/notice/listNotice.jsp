<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<style>
.mainpage {
	width: 1024px;
	height: 800px;
	/* border: 1px solid black; */
	margin-top:80px;
}

.button{
background-color:#f08080;
	padding:6px 24px;
	font-color:white;
	
}
.buttonarea{
	width:180px;
	margin-left:850px;
	margin-top:30px;
}



</style>

<body>
<jsp:include page="../common/defaultAdminBar.jsp"></jsp:include>
	<div class="mainpage">
	<div class="container">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>No</th>
        <th>Category</th>
        <th>Subject	</th>
        <th>Writer</th>
        <th>Date</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>01</td>
        <td>일반</td>
        <td>공지사항입니다</td>
        <td>관리자</td>
        <td>2019-08-25</td>
      </tr>
     <tr>
        <td>02</td>
        <td>일반</td>
        <td>공지사항입니다</td>
        <td>관리자</td>
        <td>2019-08-25</td>
      </tr>
      <tr>
        <td>03</td>
        <td>일반</td>
        <td>공지사항입니다</td>
        <td>관리자</td>
        <td>2019-08-25</td>
      </tr>
      <tr>
        <td>04</td>
        <td>일반</td>
        <td>공지사항입니다</td>
        <td>관리자</td>
        <td>2019-08-25</td>
      </tr>
      <tr>
        <td>05</td>
        <td>일반</td>
        <td>공지사항입니다</td>
        <td>관리자</td>
        <td>2019-08-25</td>
      </tr>
</tbody>
</table>
</div>
<div class="buttonarea">
<button class="button" >작성</button>
<button class="button">취소</button>
</div>

</div>
</body>
</html>