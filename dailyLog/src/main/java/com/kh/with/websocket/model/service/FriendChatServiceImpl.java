package com.kh.with.websocket.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.with.Chat.model.dao.ChatDao;
import com.kh.with.websocket.model.vo.Chat;
import com.kh.with.websocket.model.vo.ChatMember;

@Service
 public class FriendChatServiceImpl implements FriendChatService {
	@Autowired
	ChatDao ChatDao;

	@Override
	public int  checkRoom(String name) throws Exception {
		return ChatDao.checkRoom(name);
	}

	@Override
	public void createChatRoom(Chat dto) throws Exception {
		ChatDao.createChatRoom(dto);
	}

	@Override
	public List<Chat> getRoomList() throws Exception {
		return ChatDao.getRoomList();
	}

	@Override
	public void addRoomMember(ChatMember mem) throws Exception {
		ChatDao.addRoomMember(mem);
	}

	@Override
	public ChatMember getRoomMember(ChatMember mem) throws Exception {
		return ChatDao.getRoomMember(mem);
	}

	@Override
	public List<ChatMember> sameRoomList(ChatMember mem) throws Exception {
		return ChatDao.sameRoomList(mem);
	}

	@Override
	public void updateRoomMember(ChatMember  mem) throws Exception {
		ChatDao.updateRoomMember(mem);
	}

	@Override
	public void deleteRoomMember(ChatMember  mem) throws Exception {
		ChatDao.deleteRoomMember(mem);
	}

	@Override
	public void updateChatCountInc(Chat dto) throws Exception {
		ChatDao.updateChatCountInc(dto);
	}

	@Override
	public void updateChatCountDec(Chat dto) throws Exception {
		ChatDao.updateChatCountDec(dto);
	}

	@Override
	public void deleteChat() throws Exception {
		ChatDao.deleteChat();
	}

	@Override
	public List<Chat > searchRoomList(String name) throws Exception {
		return ChatDao.searchRoomList(name);
	}

}
