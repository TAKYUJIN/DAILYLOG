package com.kh.with.loger.model.vo;

import java.sql.Date;

public class Loger2 {
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
	private int amNo; //첨부파일번호
	private String fileNm; //파일명
	private String amDt; //업로드날짜
	private String amTY; //파일구분
	

	public Loger2() {}


	public Loger2(int chNo, int userNo, String chNm, int vNo, Date chDT, String chInfo, String accNm, String bankNm,
			String account, int subNum, int status, int amNo, String fileNm, String amDt, String amTY) {
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
		this.amNo = amNo;
		this.fileNm = fileNm;
		this.amDt = amDt;
		this.amTY = amTY;
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


	public int getAmNo() {
		return amNo;
	}


	public void setAmNo(int amNo) {
		this.amNo = amNo;
	}


	public String getFileNm() {
		return fileNm;
	}


	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}


	public String getAmDt() {
		return amDt;
	}


	public void setAmDt(String amDt) {
		this.amDt = amDt;
	}


	public String getAmTY() {
		return amTY;
	}


	public void setAmTY(String amTY) {
		this.amTY = amTY;
	}


	@Override
	public String toString() {
		return "Loger2 [chNo=" + chNo + ", userNo=" + userNo + ", chNm=" + chNm + ", vNo=" + vNo + ", chDT=" + chDT
				+ ", chInfo=" + chInfo + ", accNm=" + accNm + ", bankNm=" + bankNm + ", account=" + account
				+ ", subNum=" + subNum + ", status=" + status + ", amNo=" + amNo + ", fileNm=" + fileNm + ", amDt="
				+ amDt + ", amTY=" + amTY + "]";
	}

	

}