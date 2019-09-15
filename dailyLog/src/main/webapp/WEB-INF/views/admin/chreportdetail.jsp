<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>Bootstrap Sign up Form Horizontal</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style type="text/css">
	body {
		color: #999;
		background: #f3f3f3;
		font-family: 'Roboto', sans-serif;
	}
    .form-control {
		border-color: #eee;
         height: 70%;
		box-shadow: none !important;
	}
    .form-control:focus {
		border-color: #5cd3b4;
	}
    .form-control, .btn {        
        border-radius: 3px;
    }
	.signup-form {
		width: 70%;
		
		margin: 0 auto;
		padding: 30px 0;
	}
    .signup-form h2 {
		color: #333;
        margin: 0 0 30px 0;
		display: inline-block;
		padding: 0 30px 10px 0;
		border-bottom: 3px solid #5cd3b4;
		height: 70%;
    }
    .signup-form form {
    height: 70%;
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #fff;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.signup-form .form-group {
		margin-bottom: 20px;
	}
	.signup-form label {
		font-weight: normal;
		font-size: 18px;
	} 
    .signup-form input[type="checkbox"] {
		margin-top: 2px;
	}
    .signup-form .btn {        
        font-size: 13px;
        font-weight: bold;
		/* background: #5cd3b4; */
		border: none;
		margin-top: 20px;
		margin-left: 20px;
		min-width: 80px;
    }
	.signup-form .btn:hover, .signup-form .btn:focus {
	 
	}
    .signup-form a {
		color: #5cd3b4;
		text-decoration: underline;
	}
	.signup-form a:hover {
		text-decoration: none;
	}
    .signup-form form a {
		color: #5cd3b4;
		text-decoration: none;
	}	
	.signup-form form a:hover {
		text-decoration: underline;
	}
</style>
</head>
<body>
	<jsp:include page="../common/adminBar.jsp"></jsp:include>
 <div class="signup-form">
<!--     <form action="/examples/actions/confirmation.php" method="post" class="form-horizontal">
 -->
 <form action="videoreportdetail2.ad" method="get">
<c:forEach items="${videoreportdetail}" var="de">
			<h3><b>동영상 신고 관리 상세 </b></h3><br>
		<div class="form-group">
			<label>신고 번호:${de.reno}  </label><br><br>
			<input type="hidden" id="reno" name="reno" value="${de.reno}">
			<label>신고 동영상 번호:${de.vNo}  </label><br><br>
			<input type="hidden" id="vNo" name="vNo" value="${de.vNo}">
			<label>신고 동영상 제목:${de.vTitle} </label><br><br>
			<input type="hidden" id="vTitle" name="vTitle" value="${de.vTitle}">
			<label>신고인 아이디:${de.userNm}</label><br><br>
			<input type="hidden" id="userNm" name="userNm" value="${de.userNm}">
			<label>신고일:${de.redt} </label><br><br>
			<input type="hidden" id="redt" name="redt" value="${de.redt}">
			<label>신고 사유:${de.rewhy}</label><br><br>
			<input type="hidden" id="rewhy" name="rewhy" value="${de.rewhy}">
			<input type="hidden" id="recount" name="recount" value="${de.recount}">
			 <br>
             
			<div class="col-xs-8 col-xs-offset-4"><br><br><br>
 		      <input type="submit" class="btn btn-link" value="신고">
 		    <button type="button" class="btn btn-primary" onclick="location.href='reportlist.ad'">취소</button>
 		    <br><br>  
 		    
			</div>  
	</div></c:forEach></form></div>
    <jsp:include page="../common/footer.jsp" />

</body>
</html>                            
