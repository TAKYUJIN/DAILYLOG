<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String checkNo = Integer.toString((int) (Math.random() * 999999) + 100000);
	System.out.println(checkNo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
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
      $("#ckId").click(function() {
         $.ajax({
            url : "idCheck.me",
            type : "GET",
            data : {
               "userId" : $("#userId").val()
            },
            success : function(data) {
               if (data == 0 && $.trim($("#userId").val()) != '') {
                  idx = true;
                  alert("사용가능한 아이디입니다.");
                  $("#joinBtn").removeAttr("disabled");
               } else {
                  alert("이미 가입되어 있는 아이디입니다.  ")
                  $("#joinBtn").attr("disabled", "disabled");
               }
            },
            error : function() {
               alert("서버에러 ");
            }
         });
      });

      $("#ckNn").click(function() {
         $.ajax({
            url : "nickCheck.me",
            type : "GET",
            data : {
               "nickname" : $("#nickname").val()
            },
            success : function(data) {
               if (data == 0 && $.trim($("#nickname").val()) != '') {
                  ndx = true;
                  alert("사용가능한 닉네임입니다.");
                  $("#joinBtn").removeAttr("disabled");
               } else {
                  alert("중복되는 닉네임입니다.  ")
                  $("#joinBtn").attr("disabled", "disabled");
               }
            },
            error : function() {
               alert("서버에러 ");
            }
         });
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
            type:"post",
            data:{rphone:rphone, sphone1:sphone1, sphone2:sphone2, sphone3:sphone3, msg:msg, action:action
            },
            success : function(data) {
            	alert("인증번호가 발송되었습니다.");
			
          },
          error : function() {
             //alert("서버에러 ");
          }
       });
    });
   });
   
   function fnAuthConfirm(){
	   
	   var checkNo = $("input[name='msg']").val();
	   var inputNumber = $("input[name='phone1']").val(); // 입력받은 인증번호
		//receiveMsg : 랜덤으로 생성한 인증번호

		if (inputNumber == checkNo) {
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
               } else if (idx == false) {
                  alert("아이디 중복체크를 해주세요 ");
                  return false;
               } else if (ndx == false) {
                  alert("닉네임  중복체크를 해주세요 ");
                  return false;
               } else if (pdx == false) {
                  alert("휴대폰 번호 중복체크를 해주세요 ");
                  return false;
               } else if (smsPn == false) {
                   alert("인증번호 입력 후 확인을 눌러주세요 ");
                   return false;
     
               } 
           	
               joinForm.action="insert.me";
               joinForm.submit();
               alert("회원가입 인증 이메일 발송완료! \n가입하기 버튼을 누르셔야 로그인이 가능합니다  ");

   }
</script>

<style type="text/css">
body {
	color: #fff;
	background: white;
	font-family: 'Roboto', sans-serif;
}

.form-control {
	height: 40px;
	box-shadow: none;
	color: #969fa4;
}

.form-control:focus {
	border-color: #192466;
}

.form-control, .btn {
	border-radius: 3px;
}

.signup-form {
	width: 400px;
	margin: 0 auto;
	padding: 30px 0;
}

.signup-form h2 {
	color: #636363;
	margin: 0 0 15px;
	position: relative;
	text-align: center;
}

.signup-form h2:before, .signup-form h2:after {
	content: "";
	height: 2px;
	width: 30%;
	background: #d4d4d4;
	position: absolute;
	top: 50%;
	z-index: 2;
}

.signup-form h2:before {
	left: 0;
}

.signup-form h2:after {
	right: 0;
}

.signup-form .hint-text {
	color: #999;
	margin-bottom: 30px;
	text-align: center;
}

.signup-form form {
	color: #999;
	border-radius: 3px;
	margin-bottom: 15px;
	padding: 30px;
}

.signup-form .form-group {
	margin-bottom: 20px;
}

.signup-form input[type="checkbox"] {
	margin-top: 3px;
}

.signup-form .btn {
	font-size: 16px;
	font-weight: bold;
	min-width: 140px;
	outline: none !important;
}

.signup-form .row div:first-child {
	padding-right: 10px;
}

.signup-form .row div:last-child {
	padding-left: 10px;
}

.signup-form a {
	color: #fff;
	text-decoration: underline;
}

.signup-form a:hover {
	text-decoration: none;
}

.signup-form form a {
	color: #192466;
	text-decoration: none;
}

.signup-form form a:hover {
	text-decoration: underline;
}

.btn-join {
	color: #fff; !important;
	background-color: #13334A;
	border-color: #4cae4c;
}



</style>
</head>
<body>
	<jsp:include page="../common/guest.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<div class="signup-form">

		<form id="joinForm" name="joinForm" method="post"
			encType="multipart/form-data">
			<table align="center">
				<h2>Sign up</h2>
				<p class="hint-text">
					Create your account. <br>It's free and only takes a minute.
				</p>

				<div class="form-group">
					<input type="text" class="form-control" name="userNm" id="userNm"
						placeholder="Name" required="required" style="color: black;">
				</div>
				</div>
				<div class="form-group">
					<div class="row">
						<div class="col-xs-8">
							<input type="email" class="form-control" name="userId"
								id="userId" placeholder="Email" required="required" style="color: black;">
						</div>
						<div class="col-xs-4">
							<button
								style="width:98px; height: 35px; border-radius: 5px; background: #13334A; color: white; "
								name="btncheck" id="ckId">중복확인</button>
						</div>
					</div>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" name="userPwd"
						id="userPwd" placeholder="Password" required="required" style="color: black;">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" name="userPwd2"
						id="userPwd2" placeholder="Confirm Password" required="required" style="color: black;">
				</div>
				<div class="form-group">
					<div class="row">
						<div class="col-xs-8">
							<input type="text" class="form-control" name="nickname"
								id="nickname" placeholder="Nickname" required="required" style="color: black;">
						</div>
						<div class="col-xs-4">
							<button id="ckNn"
								style="width:98px;height: 35px; border-radius: 5px; background: #13334A; color: white; "
								name="btncheck">중복확인</button>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="row">
						<div class="col-xs-3">
							<input type="text" class="form-control" placeholder="Gender"
								disabled >
						</div>
						<div class="col-xs-3" style="margin-top: 5px;">
							<input type="radio" name="gender" id="gender" value="여"
								checked="checked">&nbsp;&nbsp; 여
						</div>
						<div class="col-xs-3" style="margin-top: 5px;">
							<input type="radio" name="gender" id="gender" value="남">&nbsp;&nbsp;
							남
						</div>
					</div>
				</div>

				<div class="form-group">
					<input type="text" class="form-control" name="birth" id="birth"
						placeholder="Birth  ex) 20191001" required="required" style="color: black;">
				</div>

				<div class="form-group">
					<div class="row">
						<div class="col-xs-8">
							<input type="tel" class="form-control" name="phone" id="phone"
								placeholder="Phone" required="required" style="color: black;">
						</div>
						<div class="col-xs-4">
							<input type="button" id="ckPn"
							style="width:98px;height: 35px; border-radius: 5px; background: #13334A; color: white; "
							name="btncheck" value="중복확인" />
							 <input type="button" id="sendPn" style="width:98px;height: 35px; border-radius: 5px; background: #13334A; 
							 color: white; "name="btncheck" hidden value="문자전송" />
						</div>

					</div>
				</div>
				<div class="form-group" id="showsms" hidden>
					<div class="row">
						<div class="col-xs-8">
							<input type="text" class="form-control" name="phone1"
								id="phone1" placeholder="authorization code"
								 style="color: black;"> <input type="hidden" id="action"
								name="action" value="go"> <input type="hidden"
								name="msg" value="<%=checkNo%>"> <input type="hidden"
								id="sphone1" name="sphone1" value="010"> <input
								type="hidden" id="sphone2" name="sphone2" value="9923">
							<input type="hidden" id="sphone3" name="sphone3" value="0092">
						</div>
						<div class="col-xs-4">
							<input type="button" id="cksmsPn"
							style="width:98px;height: 35px; border-radius: 5px; background: #13334A; color: white; "
							name="cksmsPn" onclick="fnAuthConfirm();" value="인증확인" />

						</div>
					</div>
				</div>


				<br>
				<br>
				<div class="form-group">
					<button type="button" id="joinBtn"
						class="btn btn-join btn-lg btn-block" onclick="fnSend();">가입하기
					</button>

				</div>


			</table>

		</form>


	</div>
	<br>
	<br>
	<br>
	<br>
	<br>

	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>