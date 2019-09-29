<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WITH</title><link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
    body {
		font-family: 'Varela Round', sans-serif;
	}
	.modal-confirm {		
		color: #636363;
		width: 400px;
	}
	.modal-confirm .modal-content {
		padding: 20px;
		border-radius: 5px;
		border: none;
        text-align: center;
		font-size: 14px;
	}
	.modal-confirm .modal-header {
		border-bottom: none;   
        position: relative;
	}
	.modal-confirm h4 {
		text-align: center;
		font-size: 26px;
		margin: 30px 0 -10px;
	}
	.modal-confirm .close {
        position: absolute;
		top: -5px;
		right: -2px;
	}
	.modal-confirm .modal-body {
		color: #999;
	}
	.modal-confirm .modal-footer {
		border: none;
		text-align: center;		
		border-radius: 5px;
		font-size: 13px;
		padding: 10px 15px 25px;
	}
	.modal-confirm .modal-footer a {
		color: #999;
	}		
	.modal-confirm .icon-box {
		width: 80px;
		height: 80px;
		margin: 0 auto;
		border-radius: 50%;
		z-index: 9;
		text-align: center;
		border: 3px solid #f15e5e;
	}
	.modal-confirm .icon-box i {
		color: #f15e5e;
		font-size: 46px;
		display: inline-block;
		margin-top: 13px;
	}
    .modal-confirm .btn {
        color: #fff;
        border-radius: 4px;
		background: #60c7c1;
		text-decoration: none;
		transition: all 0.4s;
        line-height: normal;
		min-width: 120px;
        border: none;
		min-height: 40px;
		border-radius: 3px;
		margin: 0 5px;
		outline: none !important;
    }
	.modal-confirm .btn-info {
        background: #c1c1c1;
    }
    .modal-confirm .btn-info:hover, .modal-confirm .btn-info:focus {
        background: #a8a8a8;
    }
    .modal-confirm .btn-danger {
        background: #f15e5e;
    }
    .modal-confirm .btn-danger:hover, .modal-confirm .btn-danger:focus {
        background: #ee3535;
    }
	.trigger-btn {
		display: inline-block;
		margin: 100px auto;
	}
</style>
</head>   
<body>
      		 <jsp:include page="../common/guest.jsp"></jsp:include>	
<div class="text-center">
	<!-- Button HTML (to Trigger Modal) -->
	<h2><a href="#myModal" class="trigger-btn" data-toggle="modal">daily log 친구 요청 입니다~</a>
</h2>
</div>

<!-- Modal HTML -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content"> <form action="frireject.mb" method="get">
		<c:forEach var="l" items="${friId}" > 
			<div class="modal-header">
				 
				<img src="resources/images/newlogo3.png" style="border-radius: 55%; margin-left:30px;">
								
				<h1 class="modal-title">환영합니다 <%=request.getAttribute("userId") %>님!
				</h1>	
			  
						 
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<h4> <p>${friId}님의 <br>친구 요청을 수락 하시겠습니까? </p></h4> 
			</div>
			<input type="hidden" id="friId" name="friId" value="${friId}"/>
			<input type="hidden"  id="userId" name="userId" value="${userId}"/>
		  
			<div class="modal-footer">
				<button type="button" class="btn btn-primary btn-lg"style="background:#13334A;" onclick="location.href='loginbutton.me'">친구 수락</button>
				<input type="submit" class="btn btn-primary btn-lg" style="background:#A8B7BC; color:#fff;" value="친구 거절">
			</div>
			 </c:forEach></form>
		</div>
	</div>
</div> 
      		 <jsp:include page="../common/footer.jsp"></jsp:include>	
    
</body>
</html>                                                        