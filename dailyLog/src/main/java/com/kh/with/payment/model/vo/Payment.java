package com.kh.with.payment.model.vo;

import java.sql.Date;

public class Payment {
	private int payNo; //결제번호
	private int userNo;	//회원번호
	private int chNo;	//채널번호
	private Date payDate;	//결제날짜
	private int payPrice;	//결제금액
	private String vKey;	//빌링키
	private String orgNo;	//영수증고유값
	private int supPrice;	//포인트 이용금액
	private int calPrice;	//포인트 남은금액
	
	public Payment() {}



	public Payment(int payNo, int userNo, int chNo, Date payDate, int payPrice, String vKey, String orgNo, int supPrice,
			int calPrice) {
		super();
		this.payNo = payNo;
		this.userNo = userNo;
		this.chNo = chNo;
		this.payDate = payDate;
		this.payPrice = payPrice;
		this.vKey = vKey;
		this.orgNo = orgNo;
		this.supPrice = supPrice;
		this.calPrice = calPrice;
	}



	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
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

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public String getvKey() {
		return vKey;
	}

	public void setvKey(String vKey) {
		this.vKey = vKey;
	}

	public String getOrgNo() {
		return orgNo;
	}

	public void setOrgNo(String orgNo) {
		this.orgNo = orgNo;
	}
	


	public int getSupPrice() {
		return supPrice;
	}



	public void setSupPrice(int supPrice) {
		this.supPrice = supPrice;
	}



	public int getCalPrice() {
		return calPrice;
	}


	public void setCalPrice(int calPrice) {
		this.calPrice = calPrice;
	}



	@Override
	public String toString() {
		return "Payment [payNo=" + payNo + ", userNo=" + userNo + ", chNo=" + chNo + ", payDate=" + payDate
				+ ", payPrice=" + payPrice + ", vKey=" + vKey + ", orgNo=" + orgNo + ", supPrice=" + supPrice
				+ ", calPrice=" + calPrice + "]";
	}


	

}
