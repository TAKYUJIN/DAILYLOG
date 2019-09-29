<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>>
</head>
<body>
<nav class="navbar navbar-default navbar-expand-lg navbar-light">

	<div class="navbar-header d-flex col" >
		<img src="resources/images/logo.png" style="width:90px; padding-top:10px;">	
	</div><br><br>
	<input type="hidden" id="nickname" value="${login.nickname }">
	<input type="hidden" id="room" value="${room}">
	
	<table style="width:900px;">
	
		<tr>
		<td align="center" style="width:600px; color:white">
			<h2>방이름  <c:if test="${room=='all'}"><b>with</b></c:if>
			<c:if test="${room !='all'}"><b> ${room}</b></c:if>
			</h2>
	    </td>
	    
	    <td align="center" style="width:300px">
	    <input type="button" class="ui button" value="방 만들기" id="createRoom">
	    &nbsp; &nbsp;
	    <input type="button" class="ui button" value="채팅방으로 이동" id="backBtn">
	    </td>
	    </tr> 
	    
	</table>
	<!-- 채팅방 구현하기 위한 테이블 -->	
	<table align="center" style="height:700px; width:900px; margin:0; padding:0; class="ui blue table">
		<col width="400px"><!-- 메세지 입력 영역 -->
		<col width="300px"><!-- 보내기 영역 -->

		<tr height="600px;">
			<!-- 채팅 내용 출력 -->
			<td style="width:550px" colspan="2">
			<div style="width:100%; height:550px; overflow-y:scroll; overflow-x:inherit;" class="ui message" id="output">
			
			</div>
			</td>
			<td style="width:300px">
			<!-- 채팅 방 -->
			<form action="MoveChatRoom.mb" method="post" id="moveChatForm">
			<input type="hidden" value="" id="roomName">
			<div style="width:300px; height:100px; overflow-y:scroll; overflow-x:inherit;" class="ui message blue"
			 id="room">
			<!-- 전체 채팅 방  -->			
			<div class="ui celled list"id="getRoomList">
				<div class="item">
					<div class="content">
						<b title="채팅방">with</b>
					</div>
				</div>
			</div>
	</div>
			</form>

			<input type="text" style="width:200px; height:32px; "placeholder="방 제목" class="ui input blue" id="searchRoomText">			
			  &nbsp; &nbsp;  &nbsp; &nbsp;
			  
			<input type="button" value="검색" style="width:80px; height:30px;" class="ui primary buttone" id="searchRoomBtn">	
			
			<form action="createChatRoom.mb" method="post" id="createForm">
				<!-- hidden 정보 -->
			<input type="hidden" id="chkRoomName" value=""> <!-- 방 제목 중복 확인 여부 -->
			
			<div style="width:300px; height:500px; display:none;" class="ui message" id="showCreateRoom">
			
			<!-- 방 만들기 테이블 -->
			<table style="width:100%; height:100%">
			<col width="80px">
			<!-- 방 제목 -->
			<tr style="padding:1px;margin:1px">
				<th>방 제목</th>
			<td> <input type="text" name="name" placeholder="방 이름" size="8">
			</td></tr>
			
			 <!-- 참여 인원 -->
			 <tr>
			 	<th>참여 인원</th>
			 <td>
			 	<a href="#none"><img onclick="count_back()" width="13px" title="1명 감소" ></a>
			 	<input type="text" name="totalcount" value="4" size="2" readonly="readonly"
			 	id="count" class="ui message" style="height:15px; font-weight:bold;">
			 	<a href="#none"><img onclick="count_next()" width="13px" title="1명 증가" ></a>
			 </td>
			 </tr>
			 
			 
			 <tr>
			 <th>내용</th>
			 <td> 
			 <input type="text" name="content" placeholder="내용" class="ui message" 
			 style="font-weight:bold; width:100%;height:15px">
			 </td>
			 </tr>
			 
			 <!-- 버튼 처리 -->
			 <tr>
			 	<td colspan="2">
			 	<input type="button" id="submitBtn" value="방 만들기" class="ui primary button">
			 	<input type="button" id="backBtn" value="돌아가기" class="ui button">
			 	</td>
			 </tr>
			</table>			 
			 
			 </div>
			</form>
				  
				  
		<!-- 채팅 참여자 출력 -->		  
		<div style="width:100%; height:400px;  overflow-y:"scroll;" class="ui message" id="listPeople">		</div></td></tr>  
				  
		<!-- 입력 창 -->		  
		<tr height="100px;"> 
			<!-- 보낼 메세지 입력 -->	  
				  <td>
				  <input type="text" name="chatInput" value="" size="50" placeholder="내용 입력"
			 	id="textID" class="ui message blue" style="height:100%; width:100%; font-weight:bold;">
				  </td>
				  
				  
				  <!-- 보내기 입력 -->
				  <td>
				  <input type="button" value="보내기"
				  id="buttonMessage" style="width:100%; height:100%" class="ui primary button">
				  </td>
				  
	</table>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</nav>
</body>
<script>

var sock=null;
var id='${login.nickname}';
$(document).ready(function(){
	$("#textID").focus();
});
	ws = new WebSocket("ws://localhost:8001/with/chat.mb");
ws.onopen =function(){
	//처음 접속시에만 채팅방에 추가
	$("#output").append("<b>채팅방에 참여 했습니다.</b>:"+$("#room").val()+"<br>");
	$("#buttonMessage").click(function(){
		var msg =$('input[name=chatInput]').val().trim("!%/");//메세지
		var room =$('#room').val().trim("!%/");//방 이름
		
		id(msg !=""){
			//소켓으로 메세지 전달
			ws.send(msg+"!%/"+""+"!%/"+room);
			$("#output").append("<i class='user icon'></i>"+"<b style='color:black'> [${login.nickname}]</b>:"+msg+"<br>");
			
			$("#output").scrollTop(99999999); //글 입력 시 무조건 하단으로
			$("#textID").val("");//입력창 내용 지우기
			$("#textID").focus("");//입력창
			
		}
	});
	$("#textID").keypress(function(event){
		if(event.which=="13"){
			event.preventDefault():
		  var msg =$('input[name=chatInput]').val().trim("!%/");//메세지
			var room =$("#room").val().trim("!%/");//방이름
			
			
			//전체에게 보낼 때
			if(msg !=""){
				
				//소켓으로 메세지 전달
			ws.send(msg+"!%/"+""+"!%/"+room);
			$("#output").append("<i class='user icon'></i>"+"<b style='color:black'> [${login.nickname}]</b>:"+msg+"<br>");
			
			$("#output").scrollTop(99999999); //글 입력 시 무조건 하단으로
			$("#textID").val("");//입력창 내용 지우기
			$("#textID").focus("");//입력창
				
				
			}
		}
	});
};


ws.onmessage =function(message){
	//메세지
	var jsonData =JSON.parse(message.data);
	
	if(jsonData.message != null){
		$("#output").append(jsonData.message+"<br>");
		$("#output").scrollTop(99999999); 
	}
	//접속자 리스트 
	
	var jsonData2 =JSON.parse(message.data);
	if(jsonData2.list != null){
		$("#listPeople").html(jsonData2.list);
	}
	//방 정보
	var jsonData3 =JSON.parse(message.data);
	
	if(jsonData3.room != null){
	
		var roomSplit =jsonData3.room.split(',');
		var str ="<div class='item'><div class='content'>"+
		"<b title='전체 채팅방 입니다.' class='chatRoom'"+"onclick=\"moveRoom('all',0,10000,'null')\">"+"WITH</b>(총 "+roomSplit[0]+"명 참여)</div></div>";
	for(i=1; i<roomSplit.length; i++){
		val spl =roomSplit[i].split("/");
		
		if(apl[0] =='방 존재 하지 않습니다.'){
			str += "<div class='item'><div class='content'><b title='방이 존재 하지 않습니다.'>"
			+spl[0]+"</b></div></div>";
		}else{
			str +="<div class='item'><dic class='content'><b title='"+spl[3]+"' class='chatRoom'"+
			"onclick=\"mobeRoom('"+spl[0]+"','"+spl[1]+"','"+spl[2]+"','"+spl[4]+"')\">"
			+spl[0]+"</b>("+sql[1]+"/"+sql[2]+")</div></div>";
		}}
		
		$("#getRoomList").html(str);
		
	}
	ws.onclose =function(event){};
	});
	
	
}
</script>

<script>
//방만들기

$("#createRoom").click(function(){
	$("#listPeople").slideToggle(300);
	$("#showCreateRoom").slideToggle(300);
	 
});
//방 나가ㅣ기
$("#backBtn").click(function(){
		location.href="chat.mb";
});
</script>

<script>
function count_back(){
		var count =$("#count").val();
		count =(Number(count)-1);
		if(count >=2){
			$("#count").val(count);
		}
	
};
function count_next(){
	var count =$("#count").val();
	count =(Number(count)+1);
	if( $("#count").val() <30){
		$("#count").val(count);
		
	}
};

</script>

<!-- 버튼 처리 -->
<script>
$("#submitBtn").click(function(){
	if($("[name='name']").val().length<1){
		
		alert("방 제목 입력");
		$("[name='name']").focus();
	}
	else if($("[name='name']").val()=="all"){
		alert("방 xx");
	}	else if($("#chkRoomName").val()==""){
		alert("방 존재");
		$("[name='name']").focus();
	}
	 
});
$("$backBtn").click(function(){
	$("form").each(function(){
		this.reset();
	});
	$("#listPeople").slideToggle(300);
	$("#showCreateRoom").slideToggle(300);
	
});



</script>





</html>