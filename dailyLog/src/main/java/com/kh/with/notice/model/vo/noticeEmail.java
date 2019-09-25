package com.kh.with.notice.model.vo;

public class noticeEmail implements java.io.Serializable{
	private int notice_No;
	private String userId;
	private String tomail;
	private String title;
	private String content;
	
	public noticeEmail(){}

	public noticeEmail(int notice_No, String userId, String tomail, String title, String content) {
		super();
		this.notice_No = notice_No;
		this.userId = userId;
		this.tomail = tomail;
		this.title = title;
		this.content = content;
	}

	public int getNotice_No() {
		return notice_No;
	}

	public void setNotice_No(int notice_No) {
		this.notice_No = notice_No;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getTomail() {
		return tomail;
	}

	public void setTomail(String tomail) {
		this.tomail = tomail;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "noticeEmail [notice_No=" + notice_No + ", userId=" + userId + ", tomail=" + tomail + ", title=" + title
				+ ", content=" + content + "]";
	}
 
	
}
