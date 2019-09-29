<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WITH</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style type="text/css">
	
    table.table tr th, table.table tr td {
    	background:none;
        border-color: #e9e9e9;
        text-align:center;
        /* text-align:center; */
    }
    table.table-striped tbody tr:nth-of-type(odd) {
    	background:none;
	}
	.noticeList {
		margin-top:50px;
		margin-left:100px;
		width:90%;
		margin-bottom:50px;
	}
    .table-wrapper {
    	width:80%;
        padding: 20px;
        margin:0 auto;
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
	.page-title {
		margin: 3rem 0 3rem 1rem;
		font-family: 'Varela Round', sans-serif;
		position: relative;
	}
	.page-title::after {
		content: "";
		width: 90px;
		position: absolute;
		height: 3px;
		border-radius: 1px;
		background: #192466; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	.userImg {
		width:40px; 
		height:40px;
		/* border:1px dashed gray; */
		border-radius: 50%;
		/* vertical-align: middle; */
	}
</style>
</head>
<body>
<jsp:include page="../common/adminBar.jsp"></jsp:include>
	<div class="noticeList">
			<div class="col-lg-15">
				<a href="noticeMain.no" class="noticeLink" style="float: left; width: 25%;"><h4 class="page-title">실시간 문의</h4></a>
			</div>
		<div class="table-wrapper">

			<table class="table table-striped" style="">
				<thead>
					<tr>
						<th>문의 번호</th>
						<th>문의자</th>
						<th>신청일</th>
						<th>상태</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${cList}" var="c">
					<tr id="test" onclick="chatResult(${c.chatNo},${c.userNo});">
						<td><c:out value="${c.chatNo}"/></td>
						<td><c:out value="${c.userNo}"/></td>
						<td><c:out value="${fn:substring(c.chatDt,0,10)}"/></td>
						<td><c:out value="${c.status}"/></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			
		</div>
	</div>
				<div class="chatForm" id="startChat" style="display:none;margin-top:5%;margin-left:35%;color:white; width:430px; height:350px; text-align:center; background-color:#13334A; border-radius:10%; margin-bottom:10%; opacity:0.6;">
			<div style="overflow:auto;padding:10px; width:425px; height:260px;" align="center">
				<div id="messageWindow" style="margin-top:25%;">
				</div> 
			</div>
			<!-- 채팅 -->
			<div style="margin-top:4%; opacity:1;">
           		<div style="width:50px; display:inline-block;">
       			    <div>
							<img class="userImg" src="resources/images/newlogo3.png" style="margin-bottom:30px;">
					</div>
           		</div>
         		<div style="display:inline-block; margin-left:1%; margin-right:1%;">
     			    <div class="input-group">
						<input type="text" id="inputMessage" name="chatInput" class="form-control" placeholder="Search&hellip;" style="background:none !important; width:250px;" onkeyup="enterkey()">
					</div>
           		</div>
           		<div style="display:inline-block;">
           			<input type="button" id="insertChat" style="width:60px; margin-bottom:30px; background:#A8B7BC;" class="btn" value="작성" onclick="send();">
           		</div>
			</div>
		<input type="button" id="updateChat" style="width:90px; margin-top:50px;margin-bottom:30px; background:#A8B7BC;" class="btn" value="상담 완료">
		</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
<script>

	$("#updateChat").click(function(){
	/* var chatNo = $(this).parent().parent().children("#test").val(); */
	var chatNo = 22;
	console.log(chatNo);
	
	location.href='succChat.ad?chatNo='+chatNo;
		
	});
	



function chatResult(chatNo, userNo){
	var chatNo = chatNo;
	var userNo = userNo;
	
	console.log(chatNo);
	console.log(userNo);
	$.ajax({
		url:"goChat.ad",
		type:"post",
		data:{userNo:userNo, chatNo:chatNo},
		success:function(data){
			console.log("성공인가");
			$(".noticeList").hide();
			$(".chatForm").show(); 
		},
		error:function(data){
			console.log("제발");
		}
		
	});
	
	
}

var socket;
var login_ids={};
    var textarea = document.getElementById("messageWindow");
    var nickname="${loginUser.nickname}";
    var webSocket = new WebSocket('ws://192.168.0.13:8001/with/broadcasting');
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
	   console.log("event"+event);
        var message = event.data.split("|");
        var sender = message[0];
        var content = message[1];
       
        if (content == "") {
        	 
        }else {
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
   

        webSocket.send(chat_id  +"님이 채팅에 참여하였습니다." + inputMessage.value);
        
        
        
    }
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
</script>
</html>       