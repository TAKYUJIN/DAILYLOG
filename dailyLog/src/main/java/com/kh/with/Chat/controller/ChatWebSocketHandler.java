package com.kh.with.Chat.controller;

import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonWriter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.kh.with.member.model.vo.Member;
import com.kh.with.websocket.controller.ChatUtil;
import com.kh.with.websocket.model.service.FriendChatService;
import com.kh.with.websocket.model.vo.Chat;
import com.kh.with.websocket.model.vo.ChatMember;
public class ChatWebSocketHandler  extends TextWebSocketHandler {

/*	@Inject
	private ChatDao dao;

	private List<WebSocketSession> connectedUsers;

	public ChatWebSocketHandler() {
	      connectedUsers = new ArrayList<WebSocketSession>();
	   }

	private Map<String, WebSocketSession> users = new ConcurrentHashMap<String, WebSocketSession>();

	@Override

	public void afterConnectionEstablished(

			WebSocketSession session) throws Exception {

		log(session.getId() + " 연결 됨!!");

		users.put(session.getId(), session);
		connectedUsers.add(session);
	}

	@Override

	public void afterConnectionClosed(

			WebSocketSession session, CloseStatus status) throws Exception {

		log(session.getId() + " 연결 종료됨");
		connectedUsers.remove(session);
		users.remove(session.getId());

	}


	@Override
	   protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {


		System.out.println(message.getPayload());

		  Map<String, Object> map = null;
 
	      Text Text = com.kh.with.Chat.model.vo.Text.convertMessage(message.getPayload());

	      System.out.println("1 : " + Text.toString());


	      chatRoom roomVO  = new chatRoom();
	      roomVO.setClass_id(Text.getClass_Id()); //클래스
	      roomVO.setFriId(Text.getFriId()); //튜터
	      roomVO.setUserId(Text.getUserId()); //유저

	      chatRoom croom =null;
	      if(!Text.getUserId().equals(Text.getFriId())) {
	    	  System.out.println("a");



	    	  if(dao.isRoom(roomVO) == null ) {
	    		  System.out.println("b");
	    		  dao.createRoom(roomVO);
	    		  System.out.println("d");
	    		  croom = dao.isRoom(roomVO);

	    	  }else {
	    		  System.out.println("C");
	    		  croom = dao.isRoom(roomVO);
	    	  }
	      }else {

    		  croom = dao.isRoom(roomVO);
    	  }

	      Text.setChatroom_id(croom.getChatroom_id());
	      if(croom.getUserId().equals(Text.getText_sender())) {

	    	  Text.setText_receiver(roomVO.getFriId());
	      }else {
	    	  Text.setText_receiver(roomVO.getUserId());
	      }




	      for (WebSocketSession websocketSession : connectedUsers) {
	         map = websocketSession.getAttributes();
	         Member login = (Member) map.get("login");

	         //받는사람
	         if (login.getUserId().equals(Text.getText_sender())) {

	            Gson gson = new Gson();
	            String msgJson = gson.toJson(Text);
	            websocketSession.sendMessage(new TextMessage(msgJson));
	         }


	      }
	   }

	@Override

	public void handleTransportError(

			WebSocketSession session, Throwable exception) throws Exception {

		log(session.getId() + " 익셉션 발생: " + exception.getMessage());

	}

	private void log(String logmsg) {

		System.out.println(new Date() + " : " + logmsg);

	}
 
	
	*/
	 

		@Autowired
		FriendChatService friendchatservice;
		private static final Logger logger =LoggerFactory.getLogger(ChatWebSocketHandler.class);
		
		private List<WebSocketSession>sessionlist =new ArrayList<>(); //메세지를 날려주기위한웹소켓 전용 
		private Map<WebSocketSession,String> mapList =new HashMap<>(); //실제 세션의 아이디 정보,소켓정보 
		private Map<WebSocketSession,String> roomList =new HashMap<>(); //실제 세션의 아이디 정보,room정보 
		private List<String>userList =new ArrayList<>();//접속자 명단을 개개인 뱔로 뿌려주기 위해 선언한 리스트
		
		@Override
	    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
	    	
	    	logger.info("채팅방 연결 성공 ! / Run Time: " + new Date());
	    	

	    	
	    	//1. 들어온 사람의 실제 로그인 아이디 정보를 가져온다.
	    	Map<String, Object> map = session.getAttributes();
	    	Member mem = (Member)map.get("login"); 
	    	String userId = mem.getUserId();
	    	
	    	//2. 들어온 아이디로 어느 방에 있는 지 확인한다.
	    	ChatMember userRoom = friendchatservice.getRoomMember(new ChatMember (0, userId, "",""));
	    	
	    	//3. 들어온 아이디로 찾은 방이름을 웹소켓 세션에 추가
	    	roomList.put(session, userRoom.getRoom());
	    	System.out.println(userId+"님이 "+userRoom.getRoom()+" 방에 들어왔습니다.");
	    		
	    	//4. 이전 방 정보 DB에서 수정하기
	    	//System.out.println("변경 전 :"+userRoom.getPriroom()); //변경전
	    	String priroom = userRoom.getRoom();
	    	friendchatservice.updateRoomMember(new ChatMember(0, userId, "", priroom));
	    	//System.out.println("변경 후 :"+userRoom.getRoom()); //변경전
	     	
	    	//4. mapList(해당세션의 실제아이디 값을 저장하기위해 map으로 저장)
	    	mapList.put(session,userId); //세션:key, 유저아이디:value
	    	
	    	//5. map을 사용하지않아도 될경우를 위해서 session값도 넣도록함
	    	sessionlist.add(session); //세션의 값 넣기(session : id=0~ , url:/ 주소/ echo.do)
	    	
	    	logger.info("세션추가:"+session.getId()+"접속자아이디:"+mem.getUserId()+" 현재채팅접속자:"+sessionlist.size()+"명");
	    	
	    	//6. 입장 시 해당 방 인원 수를 증가시킨다.
	    	friendchatservice.updateChatCountInc(new Chat(0, userRoom.getRoom(), "", 0, 0, ""));
	    	
	    	
	    	//7. 모든유저들에게 서로다른 메시지를 전달하기위해 전체적으로 for문을 돌리도록한다.
	    	for(int i=0; i<sessionlist.size(); i++) { 
	    		
	    		//8. 해당 i번째 사람(sessionList.get(i) 의 방이름정보를 가져온다.
	    		// 웹소켓세션아이디가 저장된 sessionList를 이용해서 방정보를 가져옴
	    		String roomName = roomList.get(sessionlist.get(i));
	    		
	    		//9. 접속자가 속한 방에만 접속했음을 알린다.
	    		if(userRoom.getRoom().equals(roomList.get(sessionlist.get(i)))) {
	    			sessionlist.get(i).sendMessage(new TextMessage(JsonDataOpen(userId)));
	    		}
	    		
	    		//11. 같은 방에 있는사람에게만 접속자 리스트를 날려주도록한다.
	    		userList = informUser(mapList, roomName); //현재 while문에서 사용중인 roomName값으로 리스트를 가져온다(아래method확인)
	    		System.out.println("현재방에 참석중인사람수:"+userList.size());
	    		ChatUtil chatUtil = new ChatUtil(); //f.project.util소속 클래스 선언
	    		String userListMessage = chatUtil.split(userList); // 받아온 list에 대해서 문자열로 바인딩해서 날려줌
	    		sessionlist.get(i).sendMessage(new TextMessage(JsonUser(userListMessage)));
	    		
	    		//12. 방리스트를 모든 사람들에게 보내줌
	    		String roomNames = getRoomName();
	    		sessionlist.get(i).sendMessage(new TextMessage(JsonRoom(roomNames)));
	    		
	    		
	    	}
	    	
	    	//13. 없는방에대해서 삭제처리를 한다.
	    	friendchatservice.deleteChat();
	    }
	//통신 연결끊었을때실행
	    @Override
	    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
	  
	    	//1. 현재 접속한 사람의 로그인한 id정보를 가져온다.
	        Map<String, Object> map = session.getAttributes();
	     	Member  mem = (Member)map.get("login");
	     	String userId = mem.getUserId();
	     	
	    	//2. 접속을끊을 때 해당 아이디로 DB에서 어느 방에 존재하는지 확인한다.
	     	ChatMember member = friendchatservice.getRoomMember(new ChatMember(0, userId, "", ""));
	     	  
	    	System.out.println("접속 끊기 이전 방:"+member.getPriroom());
	    	
	    	//3. 해당유저의 roomList, mapList, sessionList를 제거한다( 미리 제거를 해야만 본인 제외한 모든사람들에게 본인의 정보를 날려줄수있기때문)
	    	roomList.remove(session);
	    	mapList.remove(session); //세션:key, 유저아이디:value
	    	sessionlist.remove(session); // 실제 websocket 세션명 	
	    	logger.info("세션삭제:"+session.getId()+",아이디삭제:"+userId+",채팅 남은사람수:"+sessionlist.size());
	    	
	    	
	    	//4. 이전 방에서 인원수를 감소시킨다. (이전방정보로 지우기)
	    	friendchatservice.updateChatCountDec(new Chat(0, member.getPriroom(), "", 0, 0, ""));
	    	
	 	
	    	//4. 본인 제외하고 본인이 있던방의 모든사람들에게 나갔음을 알림
	    	// 이유 : 해당 아이디가 이전의 있던 방에만 데이터를 전달할경우, 해당아이디가 없었던 방의 데이터는 전달이 안되고 아무정보도 들어오지않기때문
	    	for(int i=0; i<sessionlist.size(); i++) {
	    		
	    		//5. 해당 i번째 사람(sessionList.get(i) 의 방이름정보를 가져온다.
	    		String roomName = roomList.get(sessionlist.get(i)); //i번째사람의 방이름이 저장되어있다.

	    		//6. sesionList.get(i).getId() 사람이 속한 방에만 전달하도록 설정한다.
	    		Iterator<WebSocketSession> roomIds = roomList.keySet().iterator(); //현재 존재하는 roomList를 가져온다.
	    		//map이기때문에 iterator를 사용하여 while문을 동작시킨다.
	    		while(roomIds.hasNext()) { 
	        		WebSocketSession roomId = roomIds.next(); //roomId : 실제 세션명
	        		String value = roomList.get(roomId); // value : 방이름
	        		
	        		//7. 같은 방에 있었던사람에게만 ~님이 퇴장했습니다 라고 데이터를 날려주도록한다.
	        		if(member.getPriroom().equals(value)) {
	        			roomId.sendMessage(new TextMessage(JsonDataClose(userId)));
	        		}
	        	
	        	}
	    		//8. 같은 방에 있는사람에게만 접속자 리스트를 날려주도록한다.
	    		userList = informUser(mapList, roomName); //현재 while문에서 사용중인 roomName값으로 리스트를 가져온다(아래method확인)
	    		ChatUtil chatUtil = new ChatUtil(); //f.project.util소속 클래스 선언
	    		String userListMessage = chatUtil.split(userList); // 받아온 list에 대해서 문자열로 바인딩해서 날려줌
	    		sessionlist.get(i).sendMessage(new TextMessage(JsonUser(userListMessage)));
	    		
	    		//9. 방리스트를 모든 사람들에게 보내줌
	    		String roomNames = getRoomName();
	    		sessionlist.get(i).sendMessage(new TextMessage(JsonRoom(roomNames)));
	    	}

	    }
	    //서버가 클라이언트로부터 메시지를 받았을때
	    
	    @Override //WebSocketMessage<?>
	    public void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
	    	
	    	//1. 회원정보 가져오기
	    	Map<String, Object> map = session.getAttributes();
	    	Member  mem = (Member)map.get("login");
	    	String userId = mem.getUserId();
	    	
	    	// 검색어로 들어왔을 경우,
	    	if(message.getPayload().contains("!%/&")) {
	    		//메세지 전달이 아닌 검색리스트 전달
	    		
	    		//문자열 형태 : !%/&
	    		System.out.println(message.getPayload());
	    		
	    		String searchRoom = message.getPayload().replaceAll("!%/&", "");
	    		System.out.println(searchRoom);
	    		
	    		String roomNames="";
	    		if(searchRoom.equals("")) {
	    			roomNames = getRoomName();
	    		}
	    		else {
	    			roomNames = getRoomName(searchRoom);
	    		}
	    		
	    		
	    		for (WebSocketSession webSocketSession : sessionlist) {
	    			//자신한테만 보내도록 함
	    			if(session.getId().equals(webSocketSession.getId())) {
	    				
	    				webSocketSession.sendMessage(new TextMessage(JsonRoom(roomNames)));
	    			}
	    		}
	    		
	    	}
	    	else {
	    	
				//2. 문자열 형태 : 문자 !%/ 대상 !%/ 방이름
				System.out.println(message.getPayload());
				
				//3. 배열선언(split을 이용해서 문자열을 자른다)
				String msgArr[] = new String[3];
				msgArr = message.getPayload().split("!%/"); // %!로 문자를 잘라서 배열에저장
				
				//4. [0]: 유저가 보낸 메시지,  [1]:귓속말 대상자,  [2]:방의 이름
				System.out.println("보낸메시지:"+msgArr[0]+", 귓속말대상자:"+msgArr[1]+", 방의이름:"+msgArr[2]);
				
				//5.귓속말이라면 해당아이디를 가진사람한테만 보내도록한다.
				if(!msgArr[1].equals("")) {
					Iterator<WebSocketSession> sessionIds = mapList.keySet().iterator(); //기존에 저장된 접속자명단을 가져옴
			    	while(sessionIds.hasNext()) {
			    		WebSocketSession sessionId = sessionIds.next();
			    		String value = mapList.get(sessionId);
			    		//while문을 돌면서 귓속말 대상자를 찾는다. 찾게되면 해당사람에게 귓속말로 문자를 보내도록한다.
			    		if(value.equals(msgArr[1])) {
			    			sessionId.sendMessage(new TextMessage(JsonWisper(userId, msgArr[0])));
			    		}
			    	}
				}
				 	
				//6.귓속말로 하지않았을경우 해당 유저와 같은 방에 있는 사람에게만 메세지를 날리도록한다.
				else {
					for (WebSocketSession webSocketSession : sessionlist) {
				   		
						//같은방일때만 보냄
						if(msgArr[2].equals(roomList.get(webSocketSession))) {
							//만약 자신의 세션아이디와 다르다면 메세지를 아래와같이 전달(자기자신한테는 보낼필요가없기때문)
			        		if(!session.getId().equals(webSocketSession.getId())) {
			        			webSocketSession.sendMessage(new TextMessage(JsonData(userId, msgArr[0])));
			        		}   
						}  		
					}
					
				}
				
				logger.info("메세지:"+message);
	    	}
	    }
	//아래의 코드는 기타 유틸부분으로 json타입으로 변환, 방정보를 json message형태로 보내기위해서 합치기 등의 코드이다.
	    //json형태로 메세지 변환(일반 메세지 보낼 때)
	    public String JsonData(String id, Object msg) {
	    	JsonObject jsonObject = Json.createObjectBuilder().add("message", 
	    	"<i class='user icon'></i>"+
	    	"<a href='#none' onclick=\"insertWisper('"+id+"')\"><b>["+id+"]</b></a> : "+msg).build();
	    	StringWriter write = new StringWriter();
	    	
	    	try(JsonWriter jsonWriter = Json.createWriter(write)){
	    		jsonWriter.write(jsonObject);
	    	};
	    	return write.toString();
	    }
	    
	    //json형태로 메세지 변환2( 접속했음을 알릴때)
	    public String JsonDataOpen(String id) {
	    	JsonObject jsonObject = Json.createObjectBuilder().add("message",
	    			"<a href='#none' onclick=\"insertWisper('"+id+"')\">"+"<b>["+ 
	    id+"]</b> 님이 <b style='color:blue'>접속</b>하셨습니다.</a>").build();
	    	StringWriter write = new StringWriter();
	    	
	    	try(JsonWriter jsonWriter = Json.createWriter(write)){
	    		jsonWriter.write(jsonObject);
	    	};
	    	return write.toString();
	    }
	    //json형태로 메세지 변환3( 나갔음을 알릴때)
	    public String JsonDataClose(String id) {
	    	JsonObject jsonObject = Json.createObjectBuilder().add("message","<b>["+ id+"]</b> 님이 <b style='color:red'>퇴장</b>하셨습니다.").build();
	    	StringWriter write = new StringWriter();
	    	
	    	try(JsonWriter jsonWriter = Json.createWriter(write)){
	    		jsonWriter.write(jsonObject);
	    	};
	    	return write.toString();
	    }
	    
	    //json형태로 귓속말
	    public String JsonWisper(String fromId, Object msg) {
	    	JsonObject jsonObject = Json.createObjectBuilder().add("message",
	    	"<a href='#none' onclick=\"insertWisper('"+fromId+"')\">"+
	    	"<i class='user icon'></i>"+
	    	" <b style='color:green'>["+ // 아이디를 클릭하게되면 귓속말아이디 세팅
	    	fromId+"]</b>님의 귓속말</a> : "+msg+"").build();
	    	StringWriter write = new StringWriter();

	    	try(JsonWriter jsonWriter = Json.createWriter(write)){
	    		jsonWriter.write(jsonObject);
	    	};
	    	return write.toString();
	    }
	    
	    //json형태로 유저 정보 날리기
	    public String JsonUser(String id) {
	    	JsonObject jsonObject = Json.createObjectBuilder().add("list", id).build();
	    	StringWriter write = new StringWriter();
	    	
	    	try(JsonWriter jsonWriter = Json.createWriter(write)){
	    		jsonWriter.write(jsonObject);
	    	};
	    	return write.toString();
	    }
	   	
	   	//json형태로 방 정보 날리기
	    public String JsonRoom(String roomNames) {
	    	JsonObject jsonObject = Json.createObjectBuilder().add("room", roomNames).build();
	    	StringWriter write = new StringWriter();
	    	
	    	try(JsonWriter jsonWriter = Json.createWriter(write)){
	    		jsonWriter.write(jsonObject);
	    	};
	    	
	    	return write.toString();
	    }

	    //유저리스트
	    private List<String> informUser(Map<WebSocketSession,String> maplist, String room) throws Exception {
	    	//맵을 이용해서 세션을 통해 아이디값을 value로 가져와서 list에 담기
	    	
	    	//1.담을 리스트 껍데기 선언
	    	List<String> list = new ArrayList<>();
	    	
	    	//2. 존재하는 웹소켓아이디, 로그인아이디 만큼 while문을 돌려준다.
	    	Iterator<WebSocketSession> sessionIds = maplist.keySet().iterator();
			while(sessionIds.hasNext()) {
	    		WebSocketSession sessionId = sessionIds.next();
	    		String value = maplist.get(sessionId); //실제 아이디값
	    		
	    		//3. 해당 번지의 key값에 해당하는 방의 이름정보를 가져옴
	    		String userRoom = roomList.get(sessionId); 
				
				//4. 지금 돌고있는 while문에서 추출한 방이름과 들어온 방의이름이 같을경우 리스트에 저장하도록한다.
				if(userRoom.equals(room)) {
					System.out.println("아이디:"+value +", 방이름:"+userRoom);
					list.add(value);
				}
	    	}
	    	return list;
	    }
	    
	    //DB로부터 존재하는 방정보 String 형태로 가져오기
	    public String getRoomName() throws Exception{
	    	
	    	List<Chat> roomList =  friendchatservice.getRoomList();
	    	
	    	String room = sessionlist.size()+"";
	    	
	    	for(int i=0; i<roomList.size(); i++) {
	    		room += ",";
	    		room += roomList.get(i).getName() +"/";
	    		room += roomList.get(i).getRemaincount()+"/";
	    		room += roomList.get(i).getTotalcount()+"/";
	    		room += roomList.get(i).getContent()+"/";
	    		room += roomList.get(i).getPwd();
	    	}
	    	
	    	//room= room.substring(0, room.length()-1); //뒤의 문자열 자르기
	    	
	    	//logger.info(room);
	    	
	    	return room;
	    	
	    }
	    
	    
	    public String getRoomName(String name) throws Exception{
	    	
	    	List<Chat > roomList =  friendchatservice.searchRoomList(name);
	    	
	    	String room = sessionlist.size()+"";
	    	
	    	//검색했는데 방이 없을 경우
	    	if(roomList.size() <1) {
	    		room += ",방이 존재하지 않습니다./ / / /null";
	    		
	    	}
	    	
	    	//방이 존재할경우
	    	else {
	    		
		    	for(int i=0; i<roomList.size(); i++) {
		    		room += ",";
		    		room += roomList.get(i).getName() +"/";
		    		room += roomList.get(i).getRemaincount()+"/";
		    		room += roomList.get(i).getTotalcount()+"/";
		    		room += roomList.get(i).getContent()+"/";
		    		room += roomList.get(i).getPwd();
	    		}
	    	}
	    	//room= room.substring(0, room.length()-1); //뒤의 문자열 자르기
	    	
	    	logger.info(room);
	    	
	    	return room;
	    	
	    }}
 