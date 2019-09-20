package com.kh.with.video.model.vo;
 

public class Attachment {
	private int userNo ; //회원번호
	private int amNo; //첨부파일번호
	private int vNo; //동영상번호
	private String fileNm; //파일경로
	private String amDt; //업로드날짜
	private String amTY; //파일구분

	
	
	public Attachment() {}



	public Attachment(int userNo, int amNo, int vNo, String fileNm, String amDt, String amTY) {
		super();
		this.userNo = userNo;
		this.amNo = amNo;
		this.vNo = vNo;
		this.fileNm = fileNm;
		this.amDt = amDt;
		this.amTY = amTY;
	}



	public int getUserNo() {
		return userNo;
	}



	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}



	public int getAmNo() {
		return amNo;
	}



	public void setAmNo(int amNo) {
		this.amNo = amNo;
	}



	public int getvNo() {
		return vNo;
	}



	public void setvNo(int vNo) {
		this.vNo = vNo;
	}



	public String getFileNm() {
		return fileNm;
	}



	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}



	public String getAmDt() {
		return amDt;
	}



	public void setAmDt(String amDt) {
		this.amDt = amDt;
	}



	public String getAmTY() {
		return amTY;
	}



	public void setAmTY(String amTY) {
		this.amTY = amTY;
	}



	@Override
	public String toString() {
		return "Attachment [userNo=" + userNo + ", amNo=" + amNo + ", vNo=" + vNo + ", fileNm=" + fileNm + ", amDt="
				+ amDt + ", amTY=" + amTY + "]";
	}



}

