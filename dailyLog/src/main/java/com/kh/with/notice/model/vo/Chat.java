package com.kh.with.notice.model.vo;


public class Chat implements java.io.Serializable {
	private int chatNo;
	private int userNo;
	private String chatDt;
	private String status;
	
	public Chat() {}

	public Chat(int chatNo, int userNo, String chatDt, String status) {
		super();
		this.chatNo = chatNo;
		this.userNo = userNo;
		this.chatDt = chatDt;
		this.status = status;
	}

	public int getChatNo() {
		return chatNo;
	}

	public void setChatNo(int chatNo) {
		this.chatNo = chatNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getChatDt() {
		return chatDt;
	}

	public void setChatDt(String chatDt) {
		this.chatDt = chatDt;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Chat [chatNo=" + chatNo + ", userNo=" + userNo + ", chatDt=" + chatDt + ", status=" + status + "]";
	}
	
	
}