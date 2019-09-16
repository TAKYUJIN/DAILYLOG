package com.kh.with.block.model.vo;

public class Blockrep {
	private int repno;
	private int userNo;
	
	public Blockrep() {
	}

	public int getRepno() {
		return repno;
	}

	public void setRepno(int repno) {
		this.repno = repno;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public Blockrep(int repno, int userNo) {
		super();
		this.repno = repno;
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "Blockrep [repno=" + repno + ", userNo=" + userNo + "]";
	}

 

    
	

}
