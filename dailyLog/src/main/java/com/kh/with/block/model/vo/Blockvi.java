package com.kh.with.block.model.vo;

public class Blockvi implements java.io.Serializable{
	private int userNo;
	private int vNo;
 
	public Blockvi() {
	}
	public Blockvi(int userNo, int vNo) {
		super();
		this.userNo = userNo;
		this.vNo = vNo;
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
	@Override
	public String toString() {
		return "Blockvi [userNo=" + userNo + ", vNo=" + vNo + "]";
	}
	 
 
	 
	
}
