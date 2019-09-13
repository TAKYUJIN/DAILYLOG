package com.kh.with.block.model.vo;

public class Blockch implements java.io.Serializable{
	private int userNo;
	private String chNm;
	public Blockch() {
	}
	public Blockch(int userNo, String chNm) {
		super();
		this.userNo = userNo;
		this.chNm = chNm;
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
		return "Blockch [userNo=" + userNo + ", chNm=" + chNm + "]";
	}
 
	 
	
}
