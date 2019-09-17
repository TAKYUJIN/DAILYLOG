package com.kh.with.loger.model.vo;

import java.sql.Date;

public class Loger implements java.io.Serializable{
	private int chNo;		//채널번호
	private int userNo;		//회원번호
	private String chNm;		//채널명
	private int vNo;		//동영상번호
	private Date chDT;		//채널생성일자
	private String chInfo;	//채널정보
	private String accNm;	//예금주
	private String bankNm;	//은행명
	private String account; //계좌번호
	private int subNum;		//구독자수
	private int status;
	
	public Loger() {}

	public Loger(int chNo, int userNo, String chNm, int vNo, Date chDT, String chInfo, String accNm, String bankNm,
			String account, int subNum, int status) {
		super();
		this.chNo = chNo;
		this.userNo = userNo;
		this.chNm = chNm;
		this.vNo = vNo;
		this.chDT = chDT;
		this.chInfo = chInfo;
		this.accNm = accNm;
		this.bankNm = bankNm;
		this.account = account;
		this.subNum = subNum;
		this.status = status;
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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Loger [chNo=" + chNo + ", userNo=" + userNo + ", chNm=" + chNm + ", vNo=" + vNo + ", chDT=" + chDT
				+ ", chInfo=" + chInfo + ", accNm=" + accNm + ", bankNm=" + bankNm + ", account=" + account
				+ ", subNum=" + subNum + ", status=" + status + "]";
	}

	

	

}