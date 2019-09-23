<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	body{
		font-family: 'Varela Round', sans-serif;
		margin: 10px;
		    height:100%;
	}
.where {
  display: block;
  margin: 25px 15px;
  font-size: 11px;
  color: #000;
  text-decoration: none;
      height:100%;
 /*  font-family: verdana;
  font-style: italic; */
}

/*  .checks {position: relative;} */

.checks input[type="checkbox"] {  /* 실제 체크박스는 화면에서 숨김 */
 /*  position: absolute; */
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0
}
.checks input[type="checkbox"] + label {
  display: inline-block;
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
}
.checks input[type="checkbox"] + label:before {  /* 가짜 체크박스 */
  content: ' ';
  display: inline-block;
  width: 21px;  /* 체크박스의 너비를 지정 */
  height: 21px;  /* 체크박스의 높이를 지정 */
  line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
  margin: -2px 8px 0 0;
  text-align: center; 
  vertical-align: middle;
  background: #fafafa;
  border: 1px solid #16499c;
  border-radius : 3px;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}
.checks input[type="checkbox"] + label:active:before,
.checks input[type="checkbox"]:checked + label:active:before {
  box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
}

.checks input[type="checkbox"]:checked + label:before {  /* 체크박스를 체크했을때 */ 
  content: '\2714';  /* 체크표시 유니코드 사용 */
  color: #16499c;
  text-shadow: 1px 1px #fff;
  background: #16499c;
  border-color: #adb8c0;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.1);
}

.checks.etrans input[type="checkbox"] + label {
  padding-left: 30px;
}
.checks.etrans input[type="checkbox"] + label:before {
  position: absolute;
  left: 0;
  top: 0;
  margin-top: 0;
  opacity: .6;
  box-shadow: none;
  border-color: #16499c;
  -webkit-transition: all .12s, border-color .08s;
  transition: all .12s, border-color .08s;
}

.checks.etrans input[type="checkbox"]:checked + label:before {
  position: absolute;
  content: "";
  width: 10px;
  top: -5px;
  left: 5px;
  border-radius: 0;
  opacity:1; 
  background: transparent;
  border-color:transparent #16499c #16499c transparent;
  border-top-color:transparent;
  border-left-color:transparent;
  -ms-transform:rotate(45deg);
  -webkit-transform:rotate(45deg);
  transform:rotate(45deg);
}

.no-csstransforms .checks.etrans input[type="checkbox"]:checked + label:before {
  /*content:"\2713";*/
  content: "\2714";
  top: 0;
  left: 0;
  width: 21px;
  line-height: 21px;
  color: #16499c;
  text-align: center;
  border: 1px solid #16499c;
  }
</style>
 
</head> 
<body>
<!-- <div class="checks etrans">
  <input type="checkbox" id="ex_chk3"> 
  <label for="ex_chk3">체크박스</label> 
</div> -->

<nav class="navbar navbar-default navbar-expand-lg navbar-light">
	<div class="navbar-header d-flex col" >
		
		<a href="List.mb"> <img src="resources/images/logo.png" style="width:90px; padding-top:10px;"></a>	
		<li class="nav-item"><a href="#" class="nav-link" style="padding-right:0px;" onclick="">친구 요청 확인</a></li>			
			<li class="nav-item"><a href="#" class="nav-link" style="padding-right:0px;">친구 요청 보내기</a></li>	
			
	</div><br><br>
  <div class="page-wrapper">
  
    <div class="container-fluid" id="frilist">
        <div class="col-lg-8"><!--게시판 넓이 --><form action="FriendChat.mb" >
            <div class="panel panel-default" >
                 <div class="panel-body">
            <!--  <div class="checks etrans" > -->
                    <table class="table table-hover">
                        <thead> 
                            <tr>
                                <td>친구  아이디</td>
                            </tr>
                        </thead>
                            <tbody>
                           
                             <c:forEach var="MailVo" items="${list}">
                             <tr>
                             <td><input type="checkbox" name="list" id="ex_chk3" value="${MailVo.friId}">
 			   
 		     		 ${MailVo.friId}
 				   </td> 
 				 		</tr>
 				 		</c:forEach>
 				 		</tbody>
 				 		</table>
                  </div>
                  
                  </div>
 				 		<input type="submit" class="btn btn-default"  style="background:#A8B7BC; color:#fff; float: right;"value="채팅" />
                  </form>
                  </div>
  <button    id="addfri" class="btn btn-default" style="background:#13334A; color:#fff;" >친구 추가</button>
                </div >
                
                
     <div class="container-fluid" id="myDiv">
        <div class="col-lg-8"><!--게시판 넓이 -->
            <div class="panel panel-default" >
            <div>
                 <div class="panel-body">
                    <table class="table table-hover">
         <h4>친구요청 보내기</h4>
        <!-- <form action="mailSending.mb" method="get"  > --> 
        <form action="friendSending.mb" method="get"  >
        <c:forEach var="user" items="${user}">
 			
 			<input type="hidden" id="userId" name="userId" value="${user.userId }"/>
 			
			<!-- 아이디 -->
			<div class="form-group">
			 	<label for="friId">친구 이메일</label>
					<input  style="float:left;"type="text" class="form-control" id="friId" name="friId" placeholder="친구 이메일" required>
				  <!-- <button type="button" id ="fricheck" class="btn btn-default" style="background:#13334A; color:#fff;  float:left;"   >이메일 확인</button>
	  -->
		<div class="check" id="id_check"></div>
		<!-- <p id="result">
			<span class="msg">친구 이메일을 다시 한번 확인 해주세요.</span>
		
		</p> -->
		
		 
		
			</div><br><br>
      <div align="center">
        
        <!-- <input type="submit" id=" joinBtn"value="메일 보내기"  class="btn btn-default" style="background:#13334A; color:#fff;">
         -->
         <input type="submit" id=" joinBtn"value="친구 요청 보내기"  class="btn btn-default" style="background:#13334A; color:#fff;">
        <input type="reset" value="취소" class="btn btn-default" id="reset" style="background:#A8B7BC; color:#fff;">
      </div></c:forEach>
  </form></table></div></div></div></div></div></div>
	 
</nav>
 </body>
  <script>
 $(document).ready(function(){
    $('#frilist').show();
    $('#myDiv').hide();
    
    $('#addfri').click(function(){
       $('#frilist').hide();
       $('#myDiv').show();
       return false;
    });
    $('#reset').click(function(){
       $('#frilist').show();
       $('#myDiv').hide();
       
    });
    
 });
 
 /* $("#fricheck").click (function(){
	 var query={userId:$("#friId").val()};
	 alert(query);
	 $.ajax({
		  url : '${pageContext.request.contextPath}/fricheck.mb?friId='+ friId ,
		  type : "get",
		  data : query,
		  success : function(data) {
			  alert(data);
		   if(data == 1) {
		    $(".result .msg").text("사용 불가");
		    $(".result .msg").attr("style", "color:#f00");    
		   } else {
		    $(".result .msg").text("사용 가능");
		    $(".result .msg").attr("style", "color:#00f");
		   }
		  }
	 
	 
 });}); */
 
 
 </script>
 
  

<script>
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" </script>
	
	
<script>
$(function() {
    var idx = false;
    var ndx = false;
    var pdx = false;
    
    

    $("#friId").blur(function()  {
    	 var friId = $('#friId').val();
       $.ajax({
          url : '${pageContext.request.contextPath}/fricheck.mb?friId='+friId,
          type : "GET",
          data : {
             "friId" : $("#friId").val() 
          },
          success : function(data) {
             if (data == 1 && $.trim($("#friId").val()) != '') {
                idx = true;
                $("#id_check").text("사용 가능한 이메일 입니다");
				$("#id_check").css("color", "red");
            $("#joinBtn").attr("disabled", true);
             } else {
            	 $("#id_check").text("없는 아이디 입니다ㅠ 친구 아이디를 다시 확인 해주세요");
					$("#id_check").css("color", "red");
             }
          },
          error : function() {
             alert("서버에러 ");
             alert(data);
          }
       });
    });
});


</script>



















</html>                                                                                    