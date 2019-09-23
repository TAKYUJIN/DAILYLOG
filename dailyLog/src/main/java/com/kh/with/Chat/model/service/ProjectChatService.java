package com.kh.with.Chat.model.service;

import java.util.List;

import com.kh.with.websocket.model.vo.Chat;
import com.kh.with.websocket.model.vo.ChatMember;

public interface ProjectChatService {
public Chat checkRoom(String name) throws Exception;
	
	public void createChatRoom(Chat dto) throws Exception;
	
	public List<Chat> getRoomList() throws Exception;
	
	public void addRoomMember(ChatMember mem) throws Exception;
	
	public ChatMember getRoomMember(ChatMember mem) throws Exception;
	
	public List<ChatMember> sameRoomList(ChatMember mem) throws Exception;
	
	public void updateRoomMember(ChatMember mem) throws Exception;
	
	public void deleteRoomMember(ChatMember mem) throws Exception;
	
	public void updateChatCountInc(Chat dto) throws Exception;
	
	public void updateChatCountDec(Chat dto) throws Exception;
	
	public void deleteChat() throws Exception;
	
	public List<Chat> searchRoomList(String name) throws Exception;

}
