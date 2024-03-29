<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<style>
	body {
        color: #666;
        background: #f5f5f5;
		font-family: 'Roboto', sans-serif;
	}
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
    }
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
	}
    .table-wrapper {
    	width:800px;
        background: #fff;
        padding: 20px;
        margin: 30px 0;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .pagination {
        margin: 10px 0 5px;
    }
    .pagination li a {
        border: none;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 4px !important;
        text-align: center;
        padding: 0;
    }
    .pagination li a:hover {
        color: #666;
    }
    .pagination li.active a, .pagination li.active a.page-link {
        background: #59bdb3;
    }
    .pagination li.active a:hover {        
        background: #45aba0;
    }
    .pagination li:first-child a, .pagination li:last-child a {
        padding: 0 10px;
    }
    .pagination li.disabled a {
        color: #ccc;
    }
    .pagination li i {
        font-size: 17px;
        position: relative;
        top: 1px;
        margin: 0 2px;
    }
	.noticeChattingQuestion {
		margin-top:50px;
		margin-left:100px;
		width:1000px;
		margin-bottom:50px;
	}

	.page-title1 {
		margin: 3rem 0 3rem 1rem;
		font-family: 'Varela Round', sans-serif;
		position: relative;
	}
	.page-title1::after {
		content: "";
		width: 90px;
		position: absolute;
		height: 3px;
		border-radius: 1px;
		background: #192466; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	
	.page-title2 {
		margin: 3rem 0 3rem 1rem;
		font-family: 'Varela Round', sans-serif;
		position: relative;
	}
	.page-title2::after {
		content: "";
		width: 110px;
		position: absolute;
		height: 3px;
		border-radius: 1px;
		background: #192466; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	
	.page-title3 {
		margin: 3rem 0 3rem 1rem;
		font-family: 'Varela Round', sans-serif;
		position: relative;
	}
	.page-title3::after {
		content: "";
		width: 150px;
		position: absolute;
		height: 3px;
		border-radius: 1px;
		background: #FBC52C; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	
	.page-title4 {
		margin: 1rem 0 3rem 1rem;
		font-family: 'Varela Round', sans-serif;
		position: relative;
	}
	.page-title4::after {
		content: "";
		width: 95px;
		position: absolute;
		height: 3px;
		border-radius: 1px;
		background: #192466; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	
	.page-title5 {
		margin: 1rem 0 3rem 1rem;
		font-family: 'Varela Round', sans-serif;
		position: relative;
	}
	.page-title5::after {
		content: "";
		width: 65px;
		position: absolute;
		height: 3px;
		border-radius: 1px;
		background: #FBC52C; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	.page-title6 {
		margin: 1rem 0 3rem 1rem;
		font-family: 'Varela Round', sans-serif;
		position: relative;
	}
	.page-title6::after {
		content: "";
		width: 91px;
		position: absolute;
		height: 3px;
		border-radius: 1px;
		background: #192466; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	.chatForm {
		margin-left:300px;
		margin-top:500px;
	}
		.userImg {
		width:40px; 
		height:40px;
		/* border:1px dashed gray; */
		border-radius: 50%;
		/* vertical-align: middle; */
	}
	#startBtn {
		hegiht:50px;
		width:100px;
	}
</style>
</head>
<body>
<jsp:include page="../common/mainBar.jsp"></jsp:include>
<div class="noticeChattingQuestion">
		<div class="col-lg-15">
			<a href="noticeMain.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title1">FAQs</h1></a> 
			<a href="noticeList.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title2">Notice</h1></a>
			<a href="noticeEmailQuestion.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title3">question</h1></a>
		</div>
		<div>
			<a href="selectNoticeQuestion.no" class="noticeLink" style="float:right; width:40%;"><h4 class="page-title4">나의 문의내역</h4></a>
			
			<a href="noticeChattingQuestion.no" class="noticeLink" style="float:right; width:15%;"><h4 class="page-title5">1:1문의</h4></a>
			<a href="noticeEmail.no" class="noticeLink" style="float:right;width:15%;"><h4 class="page-title6">이메일 문의</h4></a>
			<input type="hidden" value="${ sessionScope.loginUser.userNo }" id="chattingUserNo">
		</div>

		</div>
			<div id="startDiv" style="margin-top:18%; margin-left:30%;margin-bottom:10%;background:#13334A;opacity:0.6;width:400px;border-radius:5px;height:300px;text-align:center;">
			<input type="hidden" id="chatUserNo" value="${sessionScope.loginUser.userNo}"/>
			<p style="line-height:160px;color:#FFF;">실시간 1:1문의를 시작하시겠습니까?</p>
			<input type="button" id="startBtn" style="height:40px; color:black; background:#EDEAD7;border:1px solid #EDEAD7;border-radius:3px;" value="상담 신청"/></div>
				<div class="chatForm" id="startChat" style="display:none;margin-top:18%;margin-left:28%;color:white; width:430px; height:350px; text-align:center; background-color:#13334A; border-radius:10%; margin-bottom:10%; opacity:0.6;">
			<div style="overflow:auto;padding:10px; width:425px; height:260px;" align="center">
				<div id="messageWindow" style="margin-top:25%;">
				</div> 
			</div>
			<!-- 채팅 -->
			<div style="margin-top:4%; opacity:1;">
           		<div style="width:50px; display:inline-block;">
       			    <div>
						<c:if test="${userImg != null}">
							<img class="userImg" src="resources/uploadFiles/${userImg}" style="margin-bottom:30px;">
						</c:if>
						<c:if test="${userImg == null}">
							<img class="userImg" src="resources/images/newlogo3.png" style="margin-bottom:30px;">
						</c:if>	
					</div>
           		</div>
         		<div style="display:inline-block; margin-left:1%; margin-right:1%;">
     			    <div class="input-group">
						<input type="text" id="inputMessage" name="chatInput" class="form-control" placeholder="Search&hellip;" style="background:none !important; width:250px;" onkeyup="enterkey()">
					</div>
           		</div>
           		<div style="display:inline-block;">
           			<input type="button" id="insertChat" style="width:60px; margin-bottom:30px; background:#A8B7BC;" class="btn" value="작성" onclick="send();">
					<!-- <a><i class="material-icons">&#xE876;</i></a> -->
           		</div>
			</div>
		</div>	
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>

<script type="text/javascript">
	$(function(){
		$("#startBtn").click(function(){
		var chatUserNo = $(this).parent().children("#chatUserNo").val();
			 $.ajax({
					url:"insertChat.no",
					type:"post",
					success:function(data){
						console.log('succ');
						$("#startDiv").hide();
						$("#startChat").show();
					},
					error : function(){
						console.log('error');
					}
			})
			
		});
	});
	

var socket;
var login_ids={};
    var textarea = document.getElementById("messageWindow");
    var nickname="${loginUser.nickname}";
    var webSocket = new WebSocket('ws://192.168.0.13:8001/with/broadcasting');
    /* socket.emit('login','nickname'); */
    var inputMessage = document.getElementById('inputMessage');
    webSocket.onerror = function(event) {
        onError(event)
    };
    webSocket.onopen = function(event) {
        onOpen(event)
    };
    webSocket.onmessage = function(event) {
        onMessage(event)
    };
   function onMessage(event) {
	   var chat_id ="${loginUser.nickname}";
/* 	   $("#messageWindow").html("  <p class='chat_content'>"+chat_id  +"님이 채팅에 참여하였습니다.</p> ");  
 */	   console.log("event"+event);
        var message = event.data.split("|");
        var sender = message[0];
        var content = message[1];
       
        if (content == "") {
        	 
        } /* else {
            if (content.match("/")) {
                if (content.match(("/" + $("#chat_id").val()))) {
                    var temp = content.replace("/" + $("#chat_id").val(), "(귓속말) :").split(":");
                   
                    if (temp[1].trim() == "") {
                    } else {
                        $("#messageWindow").html($("#messageWindow").html() + "<p class='whisper'>"
                            + sender + content.replace("/" + $("#chat_id").val(), "(귓속말) :") + "</p>");
                    }
                } else {
                }
            }  */else {
                if (content.match("/")) {
                	
                    $("#messageWindow").html($("#messageWindow").html()
                        + "<p class='chat_content'><b class='impress'>" + sender + " : " + content + "</b></p>");
                } else {
                    $("#messageWindow").html($("#messageWindow").html()
                        + "<p class='chat_content'>" + sender + " : " + content + "</p>");
                }
            }
       
    } 
    function onOpen(event) {
    	var chat_id ="${loginUser.nickname}";
    	console.log(chat_id);
    	console.log(event+"11");
      $("#messageWindow").append("  <p class='chat_content'>"+chat_id  +"님이 채팅에 참여하였습니다.</p> ");  
   
        
       /*  if (inputMessage.value == "") {
        } else {
            $("#messageWindow").html($("#messageWindow").html()
            		("  <p class='chat_content'>" +chat_id+ "님이 채팅에 참여하였습니다."+"</p> "));
            
        } */
        webSocket.send(chat_id  +"님이 채팅에 참여하였습니다." + inputMessage.value);
      /*   inputMessage.value = ""; */
        
        
        
    }
  /*   function onError(event) {
        alert(event.data);
    } */
    function send() {
    	var chat_id ="${loginUser.nickname}";
    	var message = inputMessage.value;
    	  
        if (inputMessage.value == "") {
        } else {
            $("#messageWindow").html($("#messageWindow").html()
                + "<p class='chat_content'>  "+"<b>"+chat_id+"<b>" + " : " + inputMessage.value + "</p>");
            
        }
        
        
        webSocket.send(chat_id + "|" + inputMessage.value);
        inputMessage.value = "";
        
        $.ajax({
			url:"insertChatContent.no",
			data:{"message":message},
			type:"post",
			success:function(data){
				console.log('succ');
				
			},
			error : function(){
				console.log('error');
			}
	})
        
    }
    //     엔터키를 통해 send함
    function enterkey() {
        if (window.event.keyCode == 13) {
            send();
        }
    }
    //     채팅이 많아져 스크롤바가 넘어가더라도 자동적으로 스크롤바가 내려가게함
/*     window.setInterval(function() {
        var elem = document.getElementById('messageWindow');
        elem.scrollTop = elem.scrollHeight;
    }, 0); */
</script>
</html>