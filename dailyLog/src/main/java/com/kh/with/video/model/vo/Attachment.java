package com.kh.with.video.model.vo;

import java.sql.Date;

public class Attachment {
	private int userNo ; //회원번호
	private int amNo; //첨부파일번호
	private String filepath; //파일경로
	private Date amDt; //업로드날짜
	private String enrollNm; //원본이름
	private String modifyNm; //변경이름
	private String amTY; //파일구분
	
	public Attachment() {}

	public Attachment(int userNo, int amNo, String filepath, Date amDt, String enrollNm, String modifyNm, String amTY) {
		super();
		this.userNo = userNo;
		this.amNo = amNo;
		this.filepath = filepath;
		this.amDt = amDt;
		this.enrollNm = enrollNm;
		this.modifyNm = modifyNm;
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

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public Date getAmDt() {
		return amDt;
	}

	public void setAmDt(Date amDt) {
		this.amDt = amDt;
	}

	public String getEnrollNm() {
		return enrollNm;
	}

	public void setEnrollNm(String enrollNm) {
		this.enrollNm = enrollNm;
	}

	public String getModifyNm() {
		return modifyNm;
	}

	public void setModifyNm(String modifyNm) {
		this.modifyNm = modifyNm;
	}

	public String getAmTY() {
		return amTY;
	}

	public void setAmTY(String amTY) {
		this.amTY = amTY;
	}

	@Override
	public String toString() {
		return "Attachment [userNo=" + userNo + ", amNo=" + amNo + ", filepath=" + filepath + ", amDt=" + amDt
				+ ", enrollNm=" + enrollNm + ", modifyNm=" + modifyNm + ", amTY=" + amTY + "]";
	}
	
	
	

}

