package com.kh.with.notice.model.vo;

public class ChatContent implements java.io.Serializable{
	private int ccNo;
	private int chatNo;
	private int userNo;
	private String ccDt;
	private String ccCt;
	
	public ChatContent() {}

	public ChatContent(int ccNo, int chatNo, int userNo, String ccDt, String ccCt) {
		super();
		this.ccNo = ccNo;
		this.chatNo = chatNo;
		this.userNo = userNo;
		this.ccDt = ccDt;
		this.ccCt = ccCt;
	}

	public int getCcNo() {
		return ccNo;
	}

	public void setCcNo(int ccNo) {
		this.ccNo = ccNo;
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

	public String getCcDt() {
		return ccDt;
	}

	public void setCcDt(String ccDt) {
		this.ccDt = ccDt;
	}

	public String getCcCt() {
		return ccCt;
	}

	public void setCcCt(String ccCt) {
		this.ccCt = ccCt;
	}

	@Override
	public String toString() {
		return "ChatContent [ccNo=" + ccNo + ", chatNo=" + chatNo + ", userNo=" + userNo + ", ccDt=" + ccDt + ", ccCt="
				+ ccCt + "]";
	}

	
	
}