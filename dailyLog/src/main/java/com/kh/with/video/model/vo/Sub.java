package com.kh.with.video.model.vo;

public class Sub implements java.io.Serializable{
	private int subNo;
	private int chNo;
	private int userNo;
	
	public Sub() {}

	public Sub(int subNo, int chNo, int userNo) {
		super();
		this.subNo = subNo;
		this.chNo = chNo;
		this.userNo = userNo;
	}

	public int getSubNo() {
		return subNo;
	}

	public void setSubNo(int subNo) {
		this.subNo = subNo;
	}

	public int getChNo() {
		return chNo;
	}

	public void setChNo(int chNo) {
		this.chNo = chNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "Sub [subNo=" + subNo + ", chNo=" + chNo + ", userNo=" + userNo + "]";
	}
	
	
	
}
