<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>Bootstrap Sign up Form Horizontal</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
	body {
		color: #999;
		background: #f3f3f3;
		font-family: 'Roboto', sans-serif;
	}
	.form-horizontal {
		margin-top:200px;
	}
    .form-control {
		border-color: #eee;
        min-height: 41px;
        min-width : 100px;
		box-shadow: none !important;
	}
    .form-control:focus {
		border-color: #5cd3b4;
	}
    .form-control, .btn {        
        border-radius: 3px;
    }
	.signup-form {
		width: 800px;
		margin: 0 auto;
		padding: 30px 0;
	}
    .signup-form h1 {
		color: #333;
        margin: 0 auto;
        top : 100px;
		display: inline-block;
		padding: 0 30px 10px 0;
		border-bottom: 3px solid #5cd3b4;
    }
    .signup-form form {
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
		font-size: 13px;
	}
    .signup-form .btn {        
        font-size: 16px;
        font-weight: bold;
		background: #5cd3b4;
		border: none;
		margin-top: 20px;
		min-width: 140px;
    }
	.signup-form .btn:hover, .signup-form .btn:focus {
		background: #41cba9;
        outline: none !important;
	}

	 .avatar {
		position: absolute;
		margin: 0 auto;
		left : 0px;
		right : 0px;
		top: 195px;
		width: 100px;
		height: 100px;
		border-radius: 50%;
		z-index: 9;
		background: #60c7c1;
		padding: 15px;
		box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
	}
	.avatar img {
		width: 100%;
	}
	.pro {
		margin-top: -60px;
		margin-left: 500px;
		margin-bottom: 10px;
		}
	
	#outbtn {
		width:300px;
	}
	
</style>
</head>
<body>
<jsp:include page="../common/mainBar.jsp"/>
<div class="signup-form">
<div class="col-xs-8 col-xs-offset-4">
			<h1>마이페이지</h1>
		</div>
		
    <form action="myPage" method="post" class="form-horizontal">
				
		<div class="avatar">
		</div>	
		<input type="file" class="pro" > 
		<div class="form-group">
			<label class="control-label col-xs-4">User ID</label>
			<div class="col-xs-6">
                <input type="email" class="form-control" name="email" 
                			required="required" readonly value="${m.userId }">
            </div>    
            </div>    	
        <div class="form-group">
			<label class="control-label col-xs-4">User Name</label>
			<div class="col-xs-6">
                <input type="text" class="form-control" name="userName" 
                					required="required" readonly value="${m.userNm }">
            </div>        	
        </div>
        <div class="form-group">
			<label class="control-label col-xs-4">User NickName</label>
			<div class="col-xs-6">
                <input type="text" class="form-control" name="nickname" 
                					required="required" >
            </div>        	
        </div>
        
		<div class="form-group">
			<label class="control-label col-xs-4">Password</label>
			<div class="col-xs-6">
                <input type="password" class="form-control" name="passPwd" required="required">
            </div>        	
        </div>
		<div class="form-group">
			<label class="control-label col-xs-4">Confirm Password</label>
			<div class="col-xs-6">
                <input type="password" class="form-control" name="passPwd2" required="required">
            </div>        	
        </div>
        <div class="form-group">
			<label class="control-label col-xs-4">Phone</label>
			<div class="col-xs-6">
                <input type="text" class="form-control" name="phone" 
                					required="required">
            </div>        	
        </div>
		<div class="form-group">
			<div class="col-xs-6 col-xs-offset-4">
				<button class="btn btn-primary btn-lg" id="outbtn">탈퇴하기</button>
			</div>  
		</div>	
		<div class="form-group">
			<div class="col-xs-8 col-xs-offset-4">
				<button type="submit" class="btn btn-primary btn-lg">수정완료</button>
				<button type="reset" class="btn btn-primary btn-lg">취소</button>
			</div>  
		</div>	
    </form>
    
</div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>                            