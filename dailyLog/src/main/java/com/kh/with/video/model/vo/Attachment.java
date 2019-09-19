package com.kh.with.video.model.vo;
 

public class Attachment {
	private int userNo ; //회원번호
	private int amNo; //첨부파일번호
	private int vNo; //동영상번호
	private String filepath; //파일경로
	private String amDt; //업로드날짜
	private String enrollNm; //원본이름
	private String modifyNm; //변경이름
	private String amTY; //파일구분
	private String dotimage;
	
	
	public Attachment() {}


	public Attachment(int userNo, int amNo, int vNo, String filepath, String amDt, String enrollNm, String modifyNm,
			String amTY, String dotimage) {
		super();
		this.userNo = userNo;
		this.amNo = amNo;
		this.vNo = vNo;
		this.filepath = filepath;
		this.amDt = amDt;
		this.enrollNm = enrollNm;
		this.modifyNm = modifyNm;
		this.amTY = amTY;
		this.dotimage = dotimage;
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


	public String getFilepath() {
		return filepath;
	}


	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}


	public String getAmDt() {
		return amDt;
	}


	public void setAmDt(String amDt) {
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


	public String getDotimage() {
		return dotimage;
	}


	public void setDotimage(String dotimage) {
		this.dotimage = dotimage;
	}


	@Override
	public String toString() {
		return "Attachment [userNo=" + userNo + ", amNo=" + amNo + ", vNo=" + vNo + ", filepath=" + filepath + ", amDt="
				+ amDt + ", enrollNm=" + enrollNm + ", modifyNm=" + modifyNm + ", amTY=" + amTY + ", dotimage="
				+ dotimage + "]";
	}
	

}

