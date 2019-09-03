package com.kh.with.loger.model.vo;

import java.sql.Date;

public class Calculate {
	private int nNo;		//게시판번호
	private String nickname; //닉네임
	private int calNo;		//정산번호
	private Date calSTDT;	//정산신청날짜
	private Date calEDT;	//정산완료날짜
	private int calPrice;	//정산금액
	private int calVAT;		//수수료
	private int totalPrice; //총 금액
	private String calTY;	//정산상태 대기, 완료
	private String accNm;	//예금주
	private String bankNm;	//은행명
	private String account;	//계좌번호
	
	public Calculate() {}

	public Calculate(int nNo, String nickname, int calNo, Date calSTDT, Date calEDT, int calPrice, int calVAT,
			int totalPrice, String calTY, String accNm, String bankNm, String account) {
		super();
		this.nNo = nNo;
		this.nickname = nickname;
		this.calNo = calNo;
		this.calSTDT = calSTDT;
		this.calEDT = calEDT;
		this.calPrice = calPrice;
		this.calVAT = calVAT;
		this.totalPrice = totalPrice;
		this.calTY = calTY;
		this.accNm = accNm;
		this.bankNm = bankNm;
		this.account = account;
	}

	public int getnNo() {
		return nNo;
	}

	public void setnNo(int nNo) {
		this.nNo = nNo;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getCalNo() {
		return calNo;
	}

	public void setCalNo(int calNo) {
		this.calNo = calNo;
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

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
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

	@Override
	public String toString() {
		return "Calculate [nNo=" + nNo + ", nickname=" + nickname + ", calNo=" + calNo + ", calSTDT=" + calSTDT
				+ ", calEDT=" + calEDT + ", calPrice=" + calPrice + ", calVAT=" + calVAT + ", totalPrice=" + totalPrice
				+ ", calTY=" + calTY + ", accNm=" + accNm + ", bankNm=" + bankNm + ", account=" + account + "]";
	}
	
	
	
}
