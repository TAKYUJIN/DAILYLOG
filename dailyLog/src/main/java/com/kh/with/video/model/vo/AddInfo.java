package com.kh.with.video.model.vo;

import java.sql.Date;

public class AddInfo implements java.io.Serializable{
	private int aNo;		//상세정보번호 
	private int vNo;		//비디오번
	private int userNo;		//회원번
	private String addCt;	//상세정보내
	private Date uploadDt;	//작성
	private Date modifyDt;	//수정일 
	
	public AddInfo() {}

	public AddInfo(int aNo, int vNo, int userNo, String addCt, Date uploadDt, Date modifyDt) {
		super();
		this.aNo = aNo;
		this.vNo = vNo;
		this.userNo = userNo;
		this.addCt = addCt;
		this.uploadDt = uploadDt;
		this.modifyDt = modifyDt;
	}

	public int getaNo() {
		return aNo;
	}

	public void setaNo(int aNo) {
		this.aNo = aNo;
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

	public String getAddCt() {
		return addCt;
	}

	public void setAddCt(String addCt) {
		this.addCt = addCt;
	}

	public Date getUploadDt() {
		return uploadDt;
	}

	public void setUploadDt(Date uploadDt) {
		this.uploadDt = uploadDt;
	}

	public Date getModifyDt() {
		return modifyDt;
	}

	public void setModifyDt(Date modifyDt) {
		this.modifyDt = modifyDt;
	}

	@Override
	public String toString() {
		return "AddInfo [aNo=" + aNo + ", vNo=" + vNo + ", userNo=" + userNo + ", addCt=" + addCt + ", uploadDt="
				+ uploadDt + ", modifyDt=" + modifyDt + "]";
	}
	
	
	
}