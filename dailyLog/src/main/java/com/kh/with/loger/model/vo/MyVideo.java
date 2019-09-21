package com.kh.with.loger.model.vo;

import java.sql.Date;

public class MyVideo implements java.io.Serializable {
	private int userNo; //유저번호
	private int vNo; //동영상번호
	private String vTitle; //동영상제목
	private int count; //조회수 
	private String fileNm; 
	private String chNm;
	private Date  uploadDt; 
	private String tag;
	
	public MyVideo() {}

	public MyVideo(int userNo, int vNo, String vTitle, int count, String fileNm, String chNm, Date uploadDt,
			String tag) {
		super();
		this.userNo = userNo;
		this.vNo = vNo;
		this.vTitle = vTitle;
		this.count = count;
		this.fileNm = fileNm;
		this.chNm = chNm;
		this.uploadDt = uploadDt;
		this.tag = tag;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getvNo() {
		return vNo;
	}

	public void setvNo(int vNo) {
		this.vNo = vNo;
	}

	public String getvTitle() {
		return vTitle;
	}

	public void setvTitle(String vTitle) {
		this.vTitle = vTitle;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getFileNm() {
		return fileNm;
	}

	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}

	public String getChNm() {
		return chNm;
	}

	public void setChNm(String chNm) {
		this.chNm = chNm;
	}

	public Date getUploadDt() {
		return uploadDt;
	}

	public void setUploadDt(Date uploadDt) {
		this.uploadDt = uploadDt;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	@Override
	public String toString() {
		return "MyVideo [userNo=" + userNo + ", vNo=" + vNo + ", vTitle=" + vTitle + ", count=" + count + ", fileNm="
				+ fileNm + ", chNm=" + chNm + ", uploadDt=" + uploadDt + ", tag=" + tag + "]";
	}

	

}
