<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function(){
		var idx = false;
		var ndx = false;
		
		$("#ckId").click(function(){
			$.ajax({
				url:"idCheck.me",
				type:"GET",
				data:{
					"userId":$("#userId").val()
				},
				success:function(data){
					if(data == 0 && $.trim($("#userId").val()) != ''){
						idx=true;
						alert("사용가능한 아이디입니다.");
						$("#joinBtn").removeAttr("disabled");
					}else{
						alert("아이디 안돼 ")
						$("#joinBtn").attr("disabled", "disabled");
					}
				},
				error:function(){
					alert("서버에러 ");
				}
			});
		});
		
		$("#ckNn").click(function(){
			$.ajax({
				url:"nickCheck.me",
				type:"GET",
				data:{
					"nickname":$("#nickname").val()
				},
				success:function(data){
					if(data == 0 && $.trim($("#nickname").val()) != ''){
						ndx=true;
						alert("사용가능한 닉네임입니다.");
						$("#joinBtn").removeAttr("disabled");
					}else{
						alert("닉네임 안돼 ")
						$("#joinBtn").attr("disabled", "disabled");
					}
				},
				error:function(){
					alert("서버에러 ");
				}
			});
		});
		
		$("#joinForm").submit(function(){
			if($("#userPwd").val() !== $("#userPwd2").val()){
				alert("비밀번호가 다릅니다.");
				$("#userPwd").val("").focus();
				$("#userPwd2").val("");
				return false;
			}else if ($("#userPwd").val().length < 8) {
				alert("비밀번호는 8자 이상으로 설정해야 합니다.");
				$("#userPwd").val("").focus();
				return false;
			}else if($.trim($("#userPwd").val()) !== $("#userPwd").val() || $.trim($("#userId").val()) !== $("#userId").val() || $.trim($("#nickname").val()) !== $("#nickname").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}else if(idx==false){
				alert("아이디 중복체크를 해주세요 ");
				return false;
			}else if(ndx == false){
				alert("닉네임  중복체크를 해주세요 ");
				return false;
			}else{
				$("#joinForm").submit();
			}
		})
		
		
		
	});
</script>
<style type="text/css">
	body{
		color: #fff;
		background: white;
		font-family: 'Roboto', sans-serif;
	}
    .form-control{
		height: 40px;
		box-shadow: none;
		color: #969fa4;
	}
	.form-control:focus{
		border-color: #192466;
	}
    .form-control, .btn{        
        border-radius: 3px;
    }
	.signup-form{
		width: 400px;
		margin: 0 auto;
		padding: 30px 0;
	}
	.signup-form h2{
		color: #636363;
        margin: 0 0 15px;
		position: relative;
		text-align: center;
    }
	.signup-form h2:before, .signup-form h2:after{
		content: "";
		height: 2px;
		width: 30%;
		background: #d4d4d4;
		position: absolute;
		top: 50%;
		z-index: 2;
	}	
	.signup-form h2:before{
		left: 0;
	}
	.signup-form h2:after{
		right: 0;
	}
    .signup-form .hint-text{
		color: #999;
		margin-bottom: 30px;
		text-align: center;
	}
    .signup-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: white;
        
        padding: 30px;
    }
	.signup-form .form-group{
		margin-bottom: 20px;
	}
	.signup-form input[type="checkbox"]{
		margin-top: 3px;
	}
	.signup-form .btn{        
        font-size: 16px;
        font-weight: bold;		
		min-width: 140px;
        outline: none !important;
    }
	.signup-form .row div:first-child{
		padding-right: 10px;
	}
	.signup-form .row div:last-child{
		padding-left: 10px;
	}    	
    .signup-form a{
		color: #fff;
		text-decoration: underline;
	}
    .signup-form a:hover{
		text-decoration: none;
	}
	.signup-form form a{
		color: #192466;
		text-decoration: none;
	}	
	.signup-form form a:hover{
		text-decoration: underline;
	}  
	.btn-join {
    color: #fff;
    background-color: #192466;
    border-color: #4cae4c;
	}
	
</style>
</head>
<body>
	<jsp:include page="../common/guest.jsp"></jsp:include>
	<br><br><br>
	<div class="signup-form">
	
	<form id="joinForm" action="insert.me" method="post" encType="multipart/form-data">
		<table align="center">
			<h2>Sign up</h2>
		<p class="hint-text">Create your account. <br>It's free and only takes a minute.</p>
		
			<div class="form-group">
				<input type="text" class="form-control" name="userNm" id="userNm"  placeholder="Name" required="required"></div>        	
        </div>
        <div class="form-group">
        	<div class="row">
        	<div class="col-xs-9"><input type="email" class="form-control" name="userId" id="userId" placeholder="Email" required="required"></div>
        	<div class="col-xs-3"><button style="height:35px; border-radius: 5px; background:#192466; color:white; border: solid 1px;" name="btncheck" id="ckId">중복확인 </button></div>
       </div>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="userPwd" id="userPwd" placeholder="Password" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="userPwd2" id="userPwd2" placeholder="Confirm Password" required="required">
        </div>  
        <div class="form-group">
        	<div class="row">
        	<div class="col-xs-9"><input type="text" class="form-control" name="nickname" id="nickname" placeholder="Nickname" required="required"></div>
        	<div class="col-xs-3"><button id="ckNn" style="height:35px; border-radius: 5px; background:#192466; color:white; border: solid 1px;" name="btncheck">중복확인 </button></div>
       </div>
		</div>
		<div class="form-group">
            <input type="tel" class="form-control" name="phone" placeholder="Phone" required="required">
        </div>  
        <div class="form-group">
        	<div class="row">
        	<div class="col-xs-3"><input type="text" class="form-control" placeholder="Gender" disabled ></div>
        	<div class="col-xs-3" style="margin-top:5px;"><input type="radio" name="gender" id="gender" value="여" checked="checked">&nbsp;&nbsp; 여  </div>
        	<div class="col-xs-3" style="margin-top:5px;"><input type="radio" name="gender" id="gender" value="남">&nbsp;&nbsp; 남  </div>
       	 </div>
       
       <br><br>
            <button type="submit" id="joinBtn" class="btn btn-join btn-lg btn-block">가입하기 </button>
        </div>
			
			
		</table>
		
	</form>
	
	</div>
	<br><br><br><br><br>
	
	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>