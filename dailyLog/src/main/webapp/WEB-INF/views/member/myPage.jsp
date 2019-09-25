<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<title>Bootstrap Sign up Form Horizontal</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$("#mypage").submit(
			function() {
				if ($("#userPwd").val() !== $("#userPwd2").val()) {
					alert("비밀번호가 다릅니다.");
					$("#userPwd").val("").focus();
					$("#userPwd2").val("");
					return false;
				} else if ($("#userPwd").val().length < 8) {
					alert("비밀번호는 8자 이상으로 설정해야 합니다.");
					$("#userPwd").val("").focus();
					return false;
				} else if ($.trim($("#userPwd").val()) !== $("#userPwd").val()
						|| $.trim($("#userId").val()) !== $("#userId").val()
						|| $.trim($("#nickname").val()) !== $("#nickname")
								.val()) {
					alert("공백은 입력이 불가능합니다.");
					return false;
				}
			});
	
	$("pro").change(function(){
		if(this.files && this.files[0]) {
			var reader = new FileReader;
			reader.onload = function(data) {
				$("pro1 img").attr("src", data.taget.result);
			}
			reader.readAsDataURL(this.files[0]);
		}
	});

	$("#delete").submit(function() {
		if (!confirm("정말 탈퇴할까요?")) {
			return false;
		}
	});
</script>
<style type="text/css">

body{
      font-family: 'Varela Round', sans-serif;
   }
 .bs-example{
        margin-left: 20px; 
        margin-top : 10%;
        width: 20%;       
    }


.form-horizontal {
	margin-top: 200px;
}

.form-control {
	font-family: 'Varela Round', sans-serif;
	border-color: #eee;
	min-height: 41px;
	min-width: 100px;
	box-shadow: none !important;
}

.form-control:focus {
	border-color: #5cd3b4;
}

.form-control, .btn {
	border-radius: 3px;
}

.signup-form {
	font-family: 'Varela Round', sans-serif;
	width: 800px;
	margin-top : -21%;
	margin-left: 30%;
	padding: 30px 0;
}

.signup-form h1 {
	color: #333;
	margin: 0 auto;
	top: 100px;
	display: inline-block;
	padding: 0 30px 10px 0;
}

.signup-form form {
	color: #525252;
	border-radius: 3px;
	margin-bottom: 15px;
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

.form-group1{
	margin-top: -10%;
	margin-left: 5%;
}

.avatar {
	/* position: absolute;
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
		box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1); */
	border-radius: 50%;
}



.pro {
	margin-top: -60px;
	margin-left: 500px;
	margin-bottom: 10px;
}

#outbtn {
	width: 300px;
}
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp" />
<div class="bs-example">    
    <div class="list-group">
        <a href="myPage.me" class="list-group-item list-group-item-action active">
            <i class="fa fa-home"></i> 
        </a>
        <a href="alram.me" class="list-group-item list-group-item-action">
            <i class="fa fa-camera"></i> 알림
        </a>
        <a href="point.me" class="list-group-item list-group-item-action">
            <i class="fa fa-music"></i> 후원&포인트 충전
        </a>
        <a href="refund.me" class="list-group-item list-group-item-action">
            <i class="fa fa-film"></i> 환불
        </a>
    </div>
</div>
	<div class="signup-form">
		<div class="col-xs-8 col-xs-offset-4">
			<h1>&nbsp;마이페이지</h1>
		</div>
		<%
			System.out.print("오냐?");
		%>
		<form id="mypage" action="update_myPage.me" method="post" class="form-horizontal" enctype="multipart/form-data">
			<input type="hidden" name="userNo" value="${memberList.userNo}"/>
			<div class="avatar">
				<img id="pro1" src="${memberList.profilePath }" style="border-radius: 50%; margin-left:40%; margin-top:-30%; width:20%;" />
			</div>
			<input type="file" class="pro" id="pro" name="pro">
			<div class="form-group">
				<label class="control-label col-xs-4" style="font-size:16px; font-family: 'Varela Round', sans-serif;"><b>User ID</b></label>
				<div class="col-xs-6">
					<input type="email" class="form-control" id="userId" name="userId"
						required="required" readonly value="${memberList.userId}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-xs-4">User Name</label>
				<div class="col-xs-6">
					<input type="text" class="form-control" id="userNm" name="userNm"
						required="required" readonly value="${memberList.userNm}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-xs-4">User NickName</label>
				<div class="col-xs-6">
					<input type="text" class="form-control" id="nickname"
						name="nickname" required="required" value="${memberList.nickname}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-xs-4">Password</label>
				<div class="col-xs-6">
					<input type="password" class="form-control" id="userPwd"
						name="userPwd" required="required">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-xs-4">Confirm Password</label>
				<div class="col-xs-6">
					<input type="password" class="form-control" id="userPwd2"
						name="userPwd2" required="required">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-xs-4">Phone</label>
				<div class="col-xs-6">
					<input type="text" class="form-control" id="phone" name="phone"
						required="required" value="${memberList.phone}">
				</div>
			</div>


			<div class="form-group" style=" margin-left: 5%;">
				<div class="col-xs-8 col-xs-offset-4">
					<button type="submit" class="btn btn-primary btn-lg" style="background:#A8B7BC;">수정완료</button>
					<button type="reset" class="btn btn-primary btn-lg" style="background:#13334A;">취소</button>
				</div>
			</div>
		</form>

		<form id="delete" action="delete_myPage.me" method="post">
			<div class="form-group1" >
				<div class="col-xs-6 col-xs-offset-4">
					<input type="hidden" class="form-control" id="userPwd"
						name="userPwd" required="required" value="${memberList.userPwd}">
					<input type="hidden" class="form-control" id="userId" name="userId"
						required="required" readonly value="${memberList.userId}">
					<button type="submit" class="btn btn-primary btn-lg" id="outbtn" style="background:#A8B7BC;">탈퇴하기</button>
				</div>

			</div>
		</form>

	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>
