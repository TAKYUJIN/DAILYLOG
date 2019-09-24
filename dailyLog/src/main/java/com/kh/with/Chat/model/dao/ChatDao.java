package com.kh.with.Chat.model.dao;

import java.util.List;


import com.kh.with.Chat.model.vo.Text;
import com.kh.with.Chat.model.vo.chatRoom;
import com.kh.with.websocket.model.vo.Chat;
import com.kh.with.websocket.model.vo.ChatMember;

public interface ChatDao {

	/*
	public void createRoom(chatRoom vo)throws Exception;
	public chatRoom isRoom(chatRoom vo)throws Exception;
	public void insertMessage(Text vo)throws Exception;
	public String getPartner(chatRoom vo)throws Exception;
	public String getProfile(String str)throws Exception;
	public String getName(String str)throws Exception;
	public List<Text> getMessageList(String str)throws Exception;
	public List<chatRoom> getRoomList(String str)throws Exception;
	public List<chatRoom> getRoomList2(String str)throws Exception;
	public Text getRecentMessage(String str)throws Exception;
	//public String isGetMessageList(String str)throws Exception;
	
	public String getTutorId(String str)throws Exception;
	public List<chatRoom> getRoomListTutor(String str)throws Exception;
	public void updateReadTime(int class_no , String userId , String friId)throws Exception;
	public void updateReadTimeTutor(int class_no , String userId , String friId)throws Exception;
	
	public int getUnReadCount(String friId, int class_no, String userId)throws Exception;
	public int getUnReadCountTutor(String friId, int class_no, String userId)throws Exception;
	
	public int getAllCount(String str);
	
	
	*/
	//중복확인
		public int  checkRoom(String name) throws Exception;
	
		//방만들기
		public void createChatRoom(Chat dto) throws Exception;
		
		//방정보리스트
		public List<Chat> getRoomList() throws Exception;
		
		//현재 유저 지정한 방에 입장
		public void addRoomMember(ChatMember mem) throws Exception;
		
		//현재 유저가 어떤방에 있는지 확인
		public ChatMember  getRoomMember(ChatMember mem) throws Exception;
		
		//같은방에 존재하는 사람정보 모두가져오기
		public List<ChatMember> sameRoomList(ChatMember mem) throws Exception;
		
		//유저의 방정보 수정
		public void updateRoomMember(ChatMember mem) throws Exception;
		
		//유저의 방정보 삭제
		public void deleteRoomMember(ChatMember mem) throws Exception;
		
		//remainCount 증가
		public void updateChatCountInc(Chat dto) throws Exception;
		
		//remainCount 감소
		public void updateChatCountDec(Chat dto) throws Exception;
		
		//방삭제
		public void deleteChat() throws Exception;
		
		//방검색
		public List<Chat> searchRoomList(String name) throws Exception;

	
	
	
}
