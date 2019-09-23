package com.kh.with.Chat.model.vo;

import java.util.Date;

import com.google.gson.Gson;

public class Text {
 
	private String text_no;//message_id
	private String text_sender;
	private String text_receiver;
	private String text_content;
	private Date text_sendTime;
	private Date text_readTime;
	private String  chatroom_id; // CHATROOM_chatroom_id;
	private String  userId;
	private String friId;
	private int  class_Id;//CLASS_class_id
	private String userId_profileImagePath;
	private String friId_profileImagePath;
	private String userNm;
	private String friNm;
	private String class_name;
	private int room_Id; //class_id;
	private String tutor_name;
	private String tuti_id;
	private int unReadCount;
	
	public Text() {}

	public String getText_no() {
		return text_no;
	}

	public void setText_no(String text_no) {
		this.text_no = text_no;
	}

	public String getText_sender() {
		return text_sender;
	}

	public void setText_sender(String text_sender) {
		this.text_sender = text_sender;
	}

	public String getText_receiver() {
		return text_receiver;
	}

	public void setText_receiver(String text_receiver) {
		this.text_receiver = text_receiver;
	}

	public String getText_content() {
		return text_content;
	}

	public void setText_content(String text_content) {
		this.text_content = text_content;
	}

	public Date getText_sendTime() {
		return text_sendTime;
	}

	public void setText_sendTime(Date text_sendTime) {
		this.text_sendTime = text_sendTime;
	}

	public Date getText_readTime() {
		return text_readTime;
	}

	public void setText_readTime(Date text_readTime) {
		this.text_readTime = text_readTime;
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

	public int getClass_Id() {
		return class_Id;
	}

	public void setClass_Id(int class_Id) {
		this.class_Id = class_Id;
	}

	public String getUserId_profileImagePath() {
		return userId_profileImagePath;
	}

	public void setUserId_profileImagePath(String userId_profileImagePath) {
		this.userId_profileImagePath = userId_profileImagePath;
	}

	public String getFriId_profileImagePath() {
		return friId_profileImagePath;
	}

	public void setFriId_profileImagePath(String friId_profileImagePath) {
		this.friId_profileImagePath = friId_profileImagePath;
	}

	public String getUserNm() {
		return userNm;
	}

	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}

	public String getFriNm() {
		return friNm;
	}

	public void setFriNm(String friNm) {
		this.friNm = friNm;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}

	public int getRoom_Id() {
		return room_Id;
	}

	public void setRoom_Id(int room_Id) {
		this.room_Id = room_Id;
	}

	public String getTutor_name() {
		return tutor_name;
	}

	public void setTutor_name(String tutor_name) {
		this.tutor_name = tutor_name;
	}

	public String getTuti_id() {
		return tuti_id;
	}

	public void setTuti_id(String tuti_id) {
		this.tuti_id = tuti_id;
	}

	public int getUnReadCount() {
		return unReadCount;
	}

	public void setUnReadCount(int unReadCount) {
		this.unReadCount = unReadCount;
	}

	public Text(String text_no, String text_sender, String text_receiver, String text_content, Date text_sendTime,
			Date text_readTime, String chatroom_id, String userId, String friId, int class_Id,
			String userId_profileImagePath, String friId_profileImagePath, String userNm, String friNm,
			String class_name, int room_Id, String tutor_name, String tuti_id, int unReadCount) {
		super();
		this.text_no = text_no;
		this.text_sender = text_sender;
		this.text_receiver = text_receiver;
		this.text_content = text_content;
		this.text_sendTime = text_sendTime;
		this.text_readTime = text_readTime;
		this.chatroom_id = chatroom_id;
		this.userId = userId;
		this.friId = friId;
		this.class_Id = class_Id;
		this.userId_profileImagePath = userId_profileImagePath;
		this.friId_profileImagePath = friId_profileImagePath;
		this.userNm = userNm;
		this.friNm = friNm;
		this.class_name = class_name;
		this.room_Id = room_Id;
		this.tutor_name = tutor_name;
		this.tuti_id = tuti_id;
		this.unReadCount = unReadCount;
	}

	@Override
	public String toString() {
		return "Text [text_no=" + text_no + ", text_sender=" + text_sender + ", text_receiver=" + text_receiver
				+ ", text_content=" + text_content + ", text_sendTime=" + text_sendTime + ", text_readTime="
				+ text_readTime + ", chatroom_id=" + chatroom_id + ", userId=" + userId + ", friId=" + friId
				+ ", class_Id=" + class_Id + ", userId_profileImagePath=" + userId_profileImagePath
				+ ", friId_profileImagePath=" + friId_profileImagePath + ", userNm=" + userNm + ", friNm=" + friNm
				+ ", class_name=" + class_name + ", room_Id=" + room_Id + ", tutor_name=" + tutor_name + ", tuti_id="
				+ tuti_id + ", unReadCount=" + unReadCount + "]";
	}

	public static Text convertMessage(String source) {
		Text message = new Text();
		Gson gson = new Gson();
		message = gson.fromJson(source,  Text.class);
		return message;
	}
 
	
	
	
	
	
	
	
	
	
	
	
	
}
