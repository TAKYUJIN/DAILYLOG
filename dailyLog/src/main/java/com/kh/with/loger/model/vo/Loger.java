package com.kh.with.loger.model.vo;

import java.sql.Date;

public class Loger {
	private int chNo;		//채널번호
	private int userNo;		//회원번호
	private String chNm;		//채널명
	private int vNo;		//동영상번호
	private String calApply;//정산신청
	private Date chDT;		//채널생성일자
	private String chInfo;	//채널정보
	private String accNm;	//예금주
	private String bankNm;	//은행명
	private String account; //계좌번호
	private int subNum;		//구독자수
	
	public Loger() {}

	public Loger(int chNo, int userNo, String chNm, int vNo, String calApply, Date chDT, String chInfo, String accNm,
			String bankNm, String account, int subNum) {
		super();
		this.chNo = chNo;
		this.userNo = userNo;
		this.chNm = chNm;
		this.vNo = vNo;
		this.calApply = calApply;
		this.chDT = chDT;
		this.chInfo = chInfo;
		this.accNm = accNm;
		this.bankNm = bankNm;
		this.account = account;
		this.subNum = subNum;
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

	public String getAccNm() {
		return accNm;
	}

	public void setAccNm(String accNm) {
		this.accNm = accNm;
	}

	public String getBankNm() {
		return bankNm;
	}

	public void setBankNm(String bankNm) {
		this.bankNm = bankNm;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public int getSubNum() {
		return subNum;
	}

	public void setSubNum(int subNum) {
		this.subNum = subNum;
	}

	@Override
	public String toString() {
		return "Loger [chNo=" + chNo + ", userNo=" + userNo + ", chNm=" + chNm + ", vNo=" + vNo + ", calApply="
				+ calApply + ", chDT=" + chDT + ", chInfo=" + chInfo + ", accNm=" + accNm + ", bankNm=" + bankNm
				+ ", account=" + account + ", subNum=" + subNum + "]";
	}

	
	

}