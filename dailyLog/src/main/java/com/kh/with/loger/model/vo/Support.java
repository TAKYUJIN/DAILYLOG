package com.kh.with.loger.model.vo;

public class Support {
	private int nNo;		//게시판번호
	private int supNo;		//후원번호
	private int userNo;		//회원번호
	private int chNo;		//채널번호
	private String supDT;		//후원날짜
	private int supPrice;	//후원금액
	private String supTY;	//후원종류
	private String nickname;
	
	
	
	public Support() {}



	public Support(int nNo, int supNo, int userNo, int chNo, String supDT, int supPrice, String supTY,
			String nickname) {
		super();
		this.nNo = nNo;
		this.supNo = supNo;
		this.userNo = userNo;
		this.chNo = chNo;
		this.supDT = supDT;
		this.supPrice = supPrice;
		this.supTY = supTY;
		this.nickname = nickname;
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



	public String getSupDT() {
		return supDT;
	}



	public void setSupDT(String supDT) {
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



	public String getNickname() {
		return nickname;
	}



	public void setNickname(String nickname) {
		this.nickname = nickname;
	}



	@Override
	public String toString() {
		return "Support [nNo=" + nNo + ", supNo=" + supNo + ", userNo=" + userNo + ", chNo=" + chNo + ", supDT=" + supDT
				+ ", supPrice=" + supPrice + ", supTY=" + supTY + ", nickname=" + nickname + "]";
	}


}
