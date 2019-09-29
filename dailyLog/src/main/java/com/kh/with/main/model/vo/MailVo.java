package com.kh.with.main.model.vo;

public class MailVo {
//	private int userNo;
	//private int frino;
	private String userId;
	private String friId;
	private String status_yn;
	private String nickname;
	private String fileNm;
	public MailVo() {}
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
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getFileNm() {
		return fileNm;
	}
	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}
	public MailVo(String userId, String friId, String status_yn, String nickname, String fileNm) {
		super();
		this.userId = userId;
		this.friId = friId;
		this.status_yn = status_yn;
		this.nickname = nickname;
		this.fileNm = fileNm;
	}
	@Override
	public String toString() {
		return "MailVo [userId=" + userId + ", friId=" + friId + ", status_yn=" + status_yn + ", nickname=" + nickname
				+ ", fileNm=" + fileNm + "]";
	}
	 
}
