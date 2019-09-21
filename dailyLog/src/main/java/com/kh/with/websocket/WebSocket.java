/*
package com.kh.with.websocket;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.kh.with.member.model.vo.Member;
import com.kh.with.websocket.model.service.FriendChatService;
import com.kh.with.websocket.model.vo.ChatMember;

public class WebSocket extends TextWebSocketHandler{

	@Autowired
	FriendChatService friendchatservice;
	private static final Logger logger =LoggerFactory.getLogger(WebSocket.class);
	
	private List<WebSocketSession>sessionlist =new ArrayList<>(); //메세지를 날려주기위한웹소켓 전용 
	private Map<WebSocketSession,String> mapList =new HashMap<>(); //실제 세션의 아이디 정보,소켓정보 
	private Map<WebSocketSession,String> roomList =new HashMap<>(); //실제 세션의 아이디 정보,room정보 
	private List<String>userList =new ArrayList<>();//접속자 명단을 개개인 뱔로 뿌려주기 위해 선언한 리스트
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) {
		logger.info("채팅방 연결 성공");
		
		//1.실제 로그인 아이디 정보 가져옴
		Map<String,Object> map=session.getAttributes();
		Member m =(Member)map.get("login");
		String nickname = m.getNickname();
		String userId=m.getUserId();
				
		//2.들어온 아이디가 어느 방에 있는지 확인
		ChatMember userRoom =friendchatservice.getRoomMember(new ChatMember(0,nickname,"",""));
		
		//3.들ㅇ어온 아이디로 찾은 방이름을 엡소켓 세션에 추가
		roomList.put(session, userRoom.getRoom());
		
		System.out.println(nickname+"님이"+userRoom.getRoom()+"방에 들어왔습니다.");
		
		
		//4.
		
	 
		
		
		
		
		
	}
	
	
	
}


*/




