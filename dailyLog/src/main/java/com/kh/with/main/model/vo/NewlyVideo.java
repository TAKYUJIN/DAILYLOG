package com.kh.with.main.model.vo;

import java.sql.Date;

public class NewlyVideo {
	private int vNo;
	private int userNo;
	private Date newlyDt;
	private String fileNm;
	private String vTitle;
	
	
	public NewlyVideo() {}


	public NewlyVideo(int vNo, int userNo, Date newlyDt, String fileNm, String vTitle) {
		super();
		this.vNo = vNo;
		this.userNo = userNo;
		this.newlyDt = newlyDt;
		this.fileNm = fileNm;
		this.vTitle = vTitle;
	}


	public int getvNo() {
		return vNo;
	}


	public void setvNo(int vNo) {
		this.vNo = vNo;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public Date getNewlyDt() {
		return newlyDt;
	}


	public void setNewlyDt(Date newlyDt) {
		this.newlyDt = newlyDt;
	}

	

	public String getFileNm() {
		return fileNm;
	}


	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}


	public String getvTitle() {
		return vTitle;
	}


	public void setvTitle(String vTitle) {
		this.vTitle = vTitle;
	}


	@Override
	public String toString() {
		return "NewlyVideo [vNo=" + vNo + ", userNo=" + userNo + ", newlyDt=" + newlyDt + "]";
	}
	
	

}
