package com.kh.with.admin.model.vo;

import java.sql.Date;

public class Calculate {
	private int calNo;		//정산번호
	private int userNo;
	private int chNo;		//채널번호
	private Date calSTDT;	//정산신청날짜
	private Date calEDT;	//정산완료날짜
	private int calPrice;	//정산금액
	private int calVAT;		//수수료
	private int amountPrice; //실수령액
	private String calTY;	//정산상태 대기, 완료
	private String accNm;	//예금주
	private String bankNm;	//은행명
	private String account;	//계좌번호
	private int nNo;
	private String userId;
	private String userNm;
	
	
	
	public Calculate() {}



	public Calculate(int calNo, int userNo, int chNo, Date calSTDT, Date calEDT, int calPrice, int calVAT,
			int amountPrice, String calTY, String accNm, String bankNm, String account, int nNo, String userId,
			String userNm) {
		super();
		this.calNo = calNo;
		this.userNo = userNo;
		this.chNo = chNo;
		this.calSTDT = calSTDT;
		this.calEDT = calEDT;
		this.calPrice = calPrice;
		this.calVAT = calVAT;
		this.amountPrice = amountPrice;
		this.calTY = calTY;
		this.accNm = accNm;
		this.bankNm = bankNm;
		this.account = account;
		this.nNo = nNo;
		this.userId = userId;
		this.userNm = userNm;
	}



	public int getCalNo() {
		return calNo;
	}



	public void setCalNo(int calNo) {
		this.calNo = calNo;
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



	public Date getCalSTDT() {
		return calSTDT;
	}



	public void setCalSTDT(Date calSTDT) {
		this.calSTDT = calSTDT;
	}



	public Date getCalEDT() {
		return calEDT;
	}



	public void setCalEDT(Date calEDT) {
		this.calEDT = calEDT;
	}



	public int getCalPrice() {
		return calPrice;
	}



	public void setCalPrice(int calPrice) {
		this.calPrice = calPrice;
	}



	public int getCalVAT() {
		return calVAT;
	}



	public void setCalVAT(int calVAT) {
		this.calVAT = calVAT;
	}



	public int getAmountPrice() {
		return amountPrice;
	}



	public void setAmountPrice(int amountPrice) {
		this.amountPrice = amountPrice;
	}



	public String getCalTY() {
		return calTY;
	}



	public void setCalTY(String calTY) {
		this.calTY = calTY;
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



	public int getnNo() {
		return nNo;
	}



	public void setnNo(int nNo) {
		this.nNo = nNo;
	}



	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public String getUserNm() {
		return userNm;
	}



	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}



	@Override
	public String toString() {
		return "Calculate [calNo=" + calNo + ", userNo=" + userNo + ", chNo=" + chNo + ", calSTDT=" + calSTDT
				+ ", calEDT=" + calEDT + ", calPrice=" + calPrice + ", calVAT=" + calVAT + ", amountPrice="
				+ amountPrice + ", calTY=" + calTY + ", accNm=" + accNm + ", bankNm=" + bankNm + ", account=" + account
				+ ", nNo=" + nNo + ", userId=" + userId + ", userNm=" + userNm + "]";
	}


}