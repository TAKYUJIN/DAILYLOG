package com.kh.with.loger.model.vo;

import java.sql.Date;

public class Support {
	private int nNo;		//게시판번호
	private int supNo;		//후원번호
	private int userNo;		//회원번호
	private int chNo;		//채널번호
	private Date supDT;		//후원날짜
	private int supPrice;	//후원금액
	private String supTY;	//후원종류
	
	
	
	public Support() {}

	public Support(int nNo, int supNo, int userNo, int chNo, Date supDT, int supPrice, String supTY) {
		super();
		this.nNo = nNo;
		this.supNo = supNo;
		this.userNo = userNo;
		this.chNo = chNo;
		this.supDT = supDT;
		this.supPrice = supPrice;
		this.supTY = supTY;
	}

	public int getnNo() {
		return nNo;
	}

	public void setnNo(int nNo) {
		this.nNo = nNo;
	}

	public int getSupNo() {
		return supNo;
	}

	public void setSupNo(int supNo) {
		this.supNo = supNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getChNo() {
		return chNo;
	}

	public void setChNo(int chNo) {
		this.chNo = chNo;
	}

	public Date getSupDT() {
		return supDT;
	}

	public void setSupDT(Date supDT) {
		this.supDT = supDT;
	}

	public int getSupPrice() {
		return supPrice;
	}

	public void setSupPrice(int supPrice) {
		this.supPrice = supPrice;
	}

	public String getSupTY() {
		return supTY;
	}

	public void setSupTY(String supTY) {
		this.supTY = supTY;
	}

	@Override
	public String toString() {
		return "Support [nNo=" + nNo + ", supNo=" + supNo + ", userNo=" + userNo + ", chNo=" + chNo + ", supDT=" + supDT
				+ ", supPrice=" + supPrice + ", supTY=" + supTY + "]";
	}
	
	
}
