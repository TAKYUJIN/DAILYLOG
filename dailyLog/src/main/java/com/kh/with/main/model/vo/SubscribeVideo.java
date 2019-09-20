package com.kh.with.main.model.vo;

import java.sql.Date;

public class SubscribeVideo {
	private int userNo;
	private int vNo;
	private String vTitle;
	private int count;
	private String fileNm;
	private String chNm;
	private Date  uploadDt; 
	
	
	
	public SubscribeVideo() {}



	public SubscribeVideo(int userNo, int vNo, String vTitle, int count, String fileNm, String chNm, Date uploadDt) {
		super();
		this.userNo = userNo;
		this.vNo = vNo;
		this.vTitle = vTitle;
		this.count = count;
		this.fileNm = fileNm;
		this.chNm = chNm;
		this.uploadDt = uploadDt;
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



	@Override
	public String toString() {
		return "SubscribeVideo [userNo=" + userNo + ", vNo=" + vNo + ", vTitle=" + vTitle + ", count=" + count
				+ ", fileNm=" + fileNm + ", chNm=" + chNm + ", uploadDt=" + uploadDt + "]";
	}



	
	
}
