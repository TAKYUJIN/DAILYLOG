<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String checkNo = Integer.toString((int)(Math.random()*999999) + 100000);
	System.out.println(checkNo);
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<style>
.form-horizontal1 {
	width: 1600px; /* 전체 폼 사이즈임 */ !
	important margin-top: 50px;
	margin-bottom: 50px;
}

.findId {
	width: 650px;
	height: 500px;
	/*background: lightgray;*/
	margin: 0 auto;
}

div.menu {
	width: 650px;
	height: 50px;
	background: white;
	text-align: center;
	color: white;
}

div.left {
	width: 50%;
	float: left;
	line-height: 50px;
	background: #DDD0DA;
}

div.right {
	width: 50%;
	float: right;
	line-height: 50px;
	background: lightgray;
}

A:link {
	text-decoration: none; 
	color:white;
}
A:visited {
	text-decoration: none; 
	color:white;
}
A:active {
	text-decoration: none; 
	color:white;
}
A:hover {
	text-decoration: none; 
	color:white;
}


</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
$(function() {

	$("#sendId").click(function() {
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
           data:{rphone:rphone, sphone1:sphone1, sphone2:sphone2, sphone3:sphone3, msg:msg, action:action},
           success : function(data) {
				alert("인증번호가 발송되었습니다.");			
			
         },
         error : function() {
            //alert("서버에러 ");
         }
      });
   });	
	
	$("#cksmsPn").click(function(){
		
		var checkNo = $("input[name='msg']").val();
		var checkPhone = $("input[name='authorization_code']").val();		
		
		console.log("checkNo :::: " + checkNo);
		console.log("checkPhone ::::" + checkPhone);
		
		if(checkNo == checkPhone){
			$("#checkNo").attr({"readonly":"true"});
			$("#cksmsPn").hide();
			smsPn = true;
			alert("인증이 완료되었습니다.");
			$("#joinBtn").removeAttr("disabled");
			
		}else{
			alert("인증번호가 틀렸습니다. 다시 입력하세요.");
			$("#joinBtn").attr("disabled", "disabled");
		}	


});

})


</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/guest.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<br>
	<div class="findId">
		<div class="menu">
			<div class="left"><a href="findId.me">아이디 찾기</div>
			<div class="right">
				<a href="findPwd.me">비밀번호 찾기</a>
			</div>
		</div>
		<br> <br>



		<div id="1nd_con">
			<p style="font-weight: bold; font-size: medium; margin-left: 30px;">등록된
				핸드폰으로 계정 찾기</p>
			<br>
			<p style="font-weight: bold; font-size: 13px; margin-left: 30px;">회원가입
				당시 휴대폰 번호를 잊었거나 변경한 경우 고객센터(02-1588-1004)로 먼저 연락주세요</p>
			<br> <br>
		</div>

		<div id="inputdiv" style=" width: 400px; margin:0 auto;">
			<div class="form-group">
				<input type="text" class="form-control" name="userNm" id="userNm"
					placeholder="Name" required="required" style="width: 292px; color:black;">
			</div>
			
			<div class="form-group" >
               <div class="row">
                  <div class="col-xs-9">
                     <input type="text" class="form-control" name="phone"
                        id="phone" placeholder="Phone" required="required" style="color:black;">
                  </div>
                  <div class="col-xs-3">
                     <button id="sendId"
                        style="height: 35px; border-radius: 5px; background: #13334A; color: white; "
                        name="btncheck">번호발송</button>
                  </div>
               </div>
            </div>
            
            <div class="form-group" id="showsms" >
               <div class="row">
                  <div class="col-xs-9">
                     <input type="text" class="form-control" name="authorization_code" id="authorization_code" placeholder="authorization code" required="required" style="color:black;"> 
                        <input type="hidden" id="action" name="action" value="go">
                        <input type="hidden" name="msg" value="<%=checkNo%>">
                        <input type="hidden" id="sphone1" name="sphone1" value="010"> 
                        <input type="hidden" id="sphone2" name="sphone2" value="4560"> 
                        <input type="hidden" id="sphone3" name="sphone3" value="1780">
                  </div>
                  <div class="col-xs-3">
                     <button id="cksmsPn"
                        style="height: 35px; border-radius: 5px; background: #13334A; color: white;"
                        name="btncheck">인증확인</button>

                  </div>
               </div>
            </div>
            <br><br>
            <div class="form-group" >
            <div class="col-xs-4" >
               <button type="submit" id="showId"
                  class="btn btn-join btn-lg btn-block" onclick="showId();" style="height:40px; font-size: medium; background: #13334A; color: white;" >확인 
               </button></div>
              <div class="col-xs-4" >
               <button type="submit" id="joinBtn"
                  class="btn btn-join btn-lg btn-block" onclick="joinfiBtn();" style="height:40px; font-size: medium; ">취소 
               </button></div> 

            </div>
		</div>

	</div>


	<br>
	<br>
	<br>
	<br>
	<br>
	<script>
		function showId(){
			var phone = $("#phone").val();
			location.href = "showId.me?phone="+phone;
		}
		
		var message = "${msg}";
		var userId = "${userId}";
		if(message == "회원님의 아이디는 " + userId + " 입니다."){
			alert(message);
			document.location.href="loginbutton.me";
		}
	</script>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>