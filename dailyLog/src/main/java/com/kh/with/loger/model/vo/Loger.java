package com.kh.with.loger.model.vo;

import java.sql.Date;

public class Loger {
	private int chNo;		//채널번호
	private int userNo;		//회원번호
	private int chNm;		//채널명
	private int vNo;		//동영상번호
	private String calApply;//정산신청
	private Date chDT;		//채널생성일자
	private String chInfo;	//채널정보
	
	public Loger() {}

	public Loger(int chNo, int userNo, int chNm, int vNo, String calApply, Date chDT, String chInfo) {
		super();
		this.chNo = chNo;
		this.userNo = userNo;
		this.chNm = chNm;
		this.vNo = vNo;
		this.calApply = calApply;
		this.chDT = chDT;
		this.chInfo = chInfo;
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

	public int getChNm() {
		return chNm;
	}

	public void setChNm(int chNm) {
		this.chNm = chNm;
	}

	public int getvNo() {
		return vNo;
	}

	public void setvNo(int vNo) {
		this.vNo = vNo;
	}

	public String getCalApply() {
		return calApply;
	}

	public void setCalApply(String calApply) {
		this.calApply = calApply;
	}

	public Date getChDT() {
		return chDT;
	}

	public void setChDT(Date chDT) {
		this.chDT = chDT;
	}

	public String getChInfo() {
		return chInfo;
	}

	public void setChInfo(String chInfo) {
		this.chInfo = chInfo;
	}

	@Override
	public String toString() {
		return "Loger [chNo=" + chNo + ", userNo=" + userNo + ", chNm=" + chNm + ", vNo=" + vNo + ", calApply="
				+ calApply + ", chDT=" + chDT + ", chInfo=" + chInfo + "]";
	}
	
	
	
}
