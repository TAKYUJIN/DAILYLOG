package com.kh.with.main.model.vo;

public class Subscribe {
	private int subNo;
	private int chNo;
	private int userNo;
	private String chNm;
	
	public Subscribe() {}

	public Subscribe(int subNo, int chNo, int userNo, String chNm) {
		super();
		this.subNo = subNo;
		this.chNo = chNo;
		this.userNo = userNo;
		this.chNm = chNm;
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

	public String getChNm() {
		return chNm;
	}

	public void setChNm(String chNm) {
		this.chNm = chNm;
	}

	@Override
	public String toString() {
		return "Subscribe [subNo=" + subNo + ", chNo=" + chNo + ", userNo=" + userNo + ", chNm=" + chNm + "]";
	}
}
