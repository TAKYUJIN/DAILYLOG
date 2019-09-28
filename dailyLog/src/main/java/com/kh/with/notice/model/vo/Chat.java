package com.kh.with.notice.model.vo;


public class Chat implements java.io.Serializable {
	private int chatNo;
	private int userNo;
	private String chatDt;
	private String status;
	private String userNm;
	private int nNo;
	private String qTitle = "회원님의 문의글입니다.";
	
	
	public Chat() {}


	public Chat(int chatNo, int userNo, String chatDt, String status, String userNm, int nNo, String qTitle) {
		super();
		this.chatNo = chatNo;
		this.userNo = userNo;
		this.chatDt = chatDt;
		this.status = status;
		this.userNm = userNm;
		this.nNo = nNo;
		this.qTitle = qTitle;
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


	public String getUserNm() {
		return userNm;
	}


	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}


	public int getnNo() {
		return nNo;
	}


	public void setnNo(int nNo) {
		this.nNo = nNo;
	}


	public String getqTitle() {
		return qTitle;
	}


	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}


	@Override
	public String toString() {
		return "Chat [chatNo=" + chatNo + ", userNo=" + userNo + ", chatDt=" + chatDt + ", status=" + status
				+ ", userNm=" + userNm + ", nNo=" + nNo + ", qTitle=" + qTitle + "]";
	}

	
	
}