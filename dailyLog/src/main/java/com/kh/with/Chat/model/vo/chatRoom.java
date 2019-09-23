package com.kh.with.Chat.model.vo;

public class chatRoom {
	private String chatroom_id;
	private String userId;
	private String friId;
	private int class_id;
	public chatRoom() {
	}
	public String getChatroom_id() {
		return chatroom_id;
	}
	public void setChatroom_id(String chatroom_id) {
		this.chatroom_id = chatroom_id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getFriId() {
		return friId;
	}
	public void setFriId(String friId) {
		this.friId = friId;
	}
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
	public chatRoom(String chatroom_id, String userId, String friId, int class_id) {
		super();
		this.chatroom_id = chatroom_id;
		this.userId = userId;
		this.friId = friId;
		this.class_id = class_id;
	}
	@Override
	public String toString() {
		return "chatRoom [chatroom_id=" + chatroom_id + ", userId=" + userId + ", friId=" + friId + ", class_id="
				+ class_id + "]";
	}
	
	
	
	
	
	
	
	
}
