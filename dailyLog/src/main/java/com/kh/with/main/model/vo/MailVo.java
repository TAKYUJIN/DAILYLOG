package com.kh.with.main.model.vo;

public class MailVo {
//	private int userNo;
	//private int frino;
	private String userId;
	private String friId;
	private String status_yn;
	
	public MailVo() {}

	public MailVo(String userId, String friId, String status_yn) {
		super();
		this.userId = userId;
		this.friId = friId;
		this.status_yn = status_yn;
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

	public String getStatus_yn() {
		return status_yn;
	}

	public void setStatus_yn(String status_yn) {
		this.status_yn = status_yn;
	}

	@Override
	public String toString() {
		return "MailVo [userId=" + userId + ", friId=" + friId + ", status_yn=" + status_yn + "]";
	}

	 
 
	 
}
