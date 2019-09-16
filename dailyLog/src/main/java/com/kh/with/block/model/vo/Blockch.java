package com.kh.with.block.model.vo;

public class Blockch {
	private String chNm;
	private int userNo;
	 

	public Blockch() {
	}

	public Blockch(String chNm, int userNo ) {
		super();
		this.chNm = chNm;
		this.userNo = userNo;
	}

	public String getChNm() {
		return chNm;
	}

	public void setChNm(String chNm) {
		this.chNm = chNm;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	@Override
	public String toString() {
		return "Blockch [chNm=" + chNm + ", userNo=" + userNo    + "]";
	}

 
	

}
