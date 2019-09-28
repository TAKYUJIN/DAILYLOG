<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String checkNo = Integer.toString((int) (Math.random() * 999999) + 100000);
	System.out.println("aaaa : " + checkNo);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet">
<title>Bootstrap Sign up Form Horizontal</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	var idx = false;
	var ndx = false;
	var pdx = false;
	var smsPn = false;
	var receiveMsg = "";

	$(function() {

		$("pro").change(function() {
			if (this.files && this.files[0]) {
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
		$("#ckPn").click(function() {
			$.ajax({
				url : "phoneCheck.me",
				type : "GET",
				data : {
					"phone" : $("#phone").val()
				},
				success : function(data) {
					if (data == 0 && $.trim($("#phone").val()) != '') {
						pdx = true;
						alert("사용가능한 휴대폰번호입니다 .");
						$("#ckPn").hide();
						$("#sendPn").show();
						$("#showsms").show();

						$("#joinBtn").removeAttr("disabled");
					} else {
						alert("이미 가입되어 있는 휴대폰번호 입니다.  ")
						$("#joinBtn").attr("disabled", "disabled");
					}
				},
				error : function() {
					alert("서버에러 ");
				}
			});
		});

		$("#sendPn").click(function() {
			var rphone = $('#phone').val();
			var msg = $('input[name=msg]').val();
			var sphone1 = $("#sphone1").val();
			var sphone2 = $("#sphone2").val();
			var sphone3 = $("#sphone3").val();
			var action = $("#action").val();
			console.log(rphone);
			console.log(action);
			console.log(msg);

			$.ajax({
				url : "smssend.me",
				type : "post",
				data : {
					rphone : rphone,
					sphone1 : sphone1,
					sphone2 : sphone2,
					sphone3 : sphone3,
					msg : msg,
					action : action
				},
				success : function(data) {
					alert("인증번호가 발송되었습니다.");
					receiveMsg = data;

				},
				error : function() {
					//alert("서버에러 ");
				}
			});
		});
	});

	// 인증번호 확인 함수
	function fnAuthConfirm() {
		var inputNumber = $("input[name='phone1']").val(); // 입력받은 인증번호
		//receiveMsg : 랜덤으로 생성한 인증번호

		if (inputNumber == receiveMsg) {
			$("#checkNo").attr({
				"readonly" : "true"
			});
			$("#cksmsPn").hide();
			smsPn = true;
			alert("인증이 완료되었습니다.");
			$("#joinBtn").removeAttr("disabled");

		} else {
			alert("인증번호가 틀렸습니다. 다시 입력하세요.");
			$("#joinBtn").attr("disabled", "disabled");
		}
	}

	// 수정완료 함수
	function fnSend() {
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
				|| $.trim($("#nickname").val()) !== $("#nickname").val()) {
			alert("공백은 입력이 불가능합니다.");
			return false;
		} else if (pdx == false) {
			alert("휴대폰 번호 중복체크를 해주세요 ");
			return false;
		} else if (smsPn == false) {
			alert("인증번호 입력 후 확인을 눌러주세요 ");
			return false;
		}

		frm.action = "update_myPage.me";
		frm.submit();
	}
</script>
<style type="text/css">
body {
	font-family: 'Varela Round', sans-serif;
}

.bs-example {
	margin-left: 20px;
	margin-top: 10%;
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
.form-group{
	margin-left: 30%;
}
.signup-form {
	font-family: 'Varela Round', sans-serif;
	width: 800px;
	margin-top: -21%;
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

.form-group1 {
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

.switch {
	position: relative;
	display: inline-block;
	width: 60px;
	height: 34px;
}

.switch input {
	opacity: 0;
	width: 0;
	height: 0;
}

.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 26px;
	width: 26px;
	left: 4px;
	bottom: 4px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #99ffb9;
}

input:focus+.slider {
	box-shadow: 0 0 1px #99ffb9;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp" />
	<div class="bs-example">
		<div class="list-group">
			<a href="myPage.me"
				class="list-group-item list-group-item-action active"> <i
				class="fa fa-home"></i>
			</a> <a href="point.me" class="list-group-item list-group-item-action">
				<i class="fa fa-music"></i> 후원&포인트 충전
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
		<form id="mypage" name="frm" method="post" class="form-horizontal"
			enctype="multipart/form-data">
			<input type="hidden" name="userNo" value="${memberList.userNo}" />
			<div class="avatar">
				<img id="pro1" src="${memberList.profilePath }"
					style="border-radius: 50%; margin-left: 40%; margin-top: -30%; width: 20%;" />
			</div>
			<input type="file" class="pro" id="pro" name="pro">
			<div class="form-group">
				<label class="control-label col-xs-4"
					style="font-size: 16px; font-family: 'Varela Round', sans-serif;"><b>User
						ID</b></label>
				<div class="col-xs-6">
					<input type="email" class="form-control" id="userId" name="userId"
						required="required" readonly value="${memberList.userId}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-xs-4"><b>User Name</b></label>
				<div class="col-xs-6">
					<input type="text" class="form-control" id="userNm" name="userNm"
						required="required" readonly value="${memberList.userNm}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-xs-4"><b>User NickName</b></label>
				<div class="col-xs-6">
					<input type="text" class="form-control" id="nickname"
						name="nickname" required="required" value="${memberList.nickname}">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-xs-4"><b>Password</b></label>
				<div class="col-xs-6">
					<input type="password" class="form-control" id="userPwd"
						name="userPwd" required="required">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-xs-4"><b>Confirm Password</b></label>
				<div class="col-xs-6">
					<input type="password" class="form-control" id="userPwd2"
						name="userPwd2" required="required">
				</div>
			</div>
			<%-- <div class="form-group">
				<label class="control-label col-xs-4">Phone</label>
				<div class="col-xs-6">
					<input type="text" class="form-control" id="phone" name="phone"
						required="required" value="${memberList.phone}">
				</div>
			<input type="button" value="휴대폰 인증" />
			</div> --%>
			<div class="form-group">
				<div class="row">
				<label class="control-label col-xs-4"
					style="font-size: 16px; font-family: 'Varela Round', sans-serif;"><b>Phone</b></label>
					<div class="col-xs-6" style="width='80%;'">
						<input type="tel" class="form-control" name="phone" id="phone"
							placeholder="Phone" required="required" style="color: black;"
							value="${memberList.phone}">
					</div>
					<div class="col-xs-3">
						<input type="button" id="ckPn"
							style="height: 35px; border-radius: 5px; background: #13334A; color: white; border: solid 1px;"
							name="btncheck" value="중복확인" />
							 <input type="button" id="sendPn" style="height: 35px; border-radius: 5px; background: #13334A; 
							 color: white; border: solid 1px;"name="btncheck" hidden value="문자전송" />
						<!-- <button id="ckPn"
								style="height: 35px; border-radius: 5px; background: #13334A; color: white; border: solid 1px;"
								name="btncheck">중복확인</button> -->
						<!-- <button id="sendPn"
								style="height: 35px; border-radius: 5px; background: #13334A; color: white; border: solid 1px;"
								name="btncheck" hidden>문자전송</button> -->
					</div>

				</div>
			</div>
			<div class="form-group" id="showsms" hidden>
				<div class="row">
					<div class="col-xs-6">
						<input type="text" class="form-control" name="phone1" id="phone1"
							placeholder="required" style="color: black;"> <input
							type="hidden" id="action" name="action" value="go"> <input
							type="hidden" name="msg" value="<%=checkNo%>"> <input
							type="hidden" id="sphone1" name="sphone1" value="010"> <input
							type="hidden" id="sphone2" name="sphone2" value="4560"> <input
							type="hidden" id="sphone3" name="sphone3" value="1780">
					</div>
					<div class="col-xs-3">
						<input type="button" id="cksmsPn"
							style="height: 35px; border-radius: 5px; background: #13334A; color: white; border: solid 1px;"
							name="cksmsPn" onclick="fnAuthConfirm();" value="인증확인" />
						<!-- <button id="cksmsPn"
								style="height: 35px; border-radius: 5px; background: #13334A; color: white; border: solid 1px;"
								name="cksmsPn" onclick="fnAuthConfirm();">인증확인</button> -->

					</div>
				</div>
			</div>
			<div id="sw" name="sw">
			<h3></h3><label class="control-label col-xs-4" ><b>알림설정</b></label></h3>
				<label class="switch">
				 <input type="checkbox" checked>
					<span class="slider round"></span>
				</label>
			</div>

			<div class="form-group" style="margin-left: 5%;">
				<div class="col-xs-8 col-xs-offset-4">
					<button type="button" class="btn btn-primary btn-lg"
						style="background: #A8B7BC;" onclick="fnSend();">수정완료</button>
					<button type="reset" class="btn btn-primary btn-lg"
						style="background: #13334A;">취소</button>
				</div>
			</div>
		</form>

		<form id="delete" action="delete_myPage.me" method="post">
			<div class="form-group1">
				<div class="col-xs-6 col-xs-offset-4">
					<input type="hidden" class="form-control" id="userPwd"
						name="userPwd" required="required" value="${memberList.userPwd}">
					<input type="hidden" class="form-control" id="userId" name="userId"
						required="required" readonly value="${memberList.userId}">
					<button type="submit" class="btn btn-primary btn-lg" id="outbtn"
						style="background: #A8B7BC;">탈퇴하기</button>
				</div>

			</div>
		</form>

	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>
