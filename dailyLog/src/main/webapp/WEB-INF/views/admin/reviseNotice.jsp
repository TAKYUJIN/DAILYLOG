<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<style>
.mainpage {
	width: 1024px;

	/* border: 1px solid black; */
	margin-top: 80px;
}

.button {
	background-color: #f08080;
	padding: 6px 24px;
	font-color: white;
}

.buttonarea {
	width: 180px;
	margin-left: 55%;
	margin-top: -10%;
}
input{
border:none; border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;
}
</style>

<body>
	<jsp:include page="../common/defaultAdminBar.jsp"></jsp:include>
	<div class="mainpage">
	<div class="container">
  <table class="table">
    <thead>
      <tr>
        <th>
        <ol>제목&emsp;&emsp;&emsp;&emsp;&emsp;<input type="text"placeholder="제목" style= "width:500px" ></ol>
        <ol>작성자&emsp;&emsp;&emsp;&emsp;<input type="text"placeholder="작성자"  style= "width:500px"></ol>
        <ol>작성일&emsp;&emsp;&emsp;&emsp;<input type="text"placeholder="날짜"  style= "width:500px"></ol>
        <ol>파일첨부 &emsp;&emsp;&emsp;<input type="file" style= "width:500px"></ol>
        </th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>      <textarea class="form-control" rows="20" id="comment"></textarea>
</td>
              

      </tr>
  
    </tbody>
  </table>
</div>
	
	</div>

	<div class="buttonarea">
		<button class="button">수정</button>
		<button class="button">취소</button>
	</div>


</body>
</html>