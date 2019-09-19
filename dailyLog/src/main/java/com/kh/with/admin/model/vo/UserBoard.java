package com.kh.with.admin.model.vo;

import java.sql.Date;

public class UserBoard {

	private int userNo;
	private String userId;
	private String phone;
	private String chYn;
	private int chNo;
	private String chNm;
	private Date enrollDate;
	private String status;
	private String reTy;
	private int reCount;
	private int cCount;
	
	
	public UserBoard() {}


	public UserBoard(int userNo, String userId, String phone, String chYn, int chNo, String chNm, Date enrollDate,
			String status, String reTy, int reCount, int cCount) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.phone = phone;
		this.chYn = chYn;
		this.chNo = chNo;
		this.chNm = chNm;
		this.enrollDate = enrollDate;
		this.status = status;
		this.reTy = reTy;
		this.reCount = reCount;
		this.cCount = cCount;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int usetNo) {
		this.userNo = usetNo;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getChYn() {
		return chYn;
	}


	public void setChYn(String chYn) {
		this.chYn = chYn;
	}


	public int getChNo() {
		return chNo;
	}


	public void setChNo(int chNo) {
		this.chNo = chNo;
	}


	public String getChNm() {
		return chNm;
	}


	public void setChNm(String chNm) {
		this.chNm = chNm;
	}


	public Date getEnrollDate() {
		return enrollDate;
	}


	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getReTy() {
		return reTy;
	}


	public void setReTy(String reTy) {
		this.reTy = reTy;
	}


	public int getReCount() {
		return reCount;
	}


	public void setReCount(int reCount) {
		this.reCount = reCount;
	}


	public int getcCount() {
		return cCount;
	}


	public void setcCount(int cCount) {
		this.cCount = cCount;
	}


	@Override
	public String toString() {
		return "UserBoard [userNo=" + userNo + ", userId=" + userId + ", phone=" + phone + ", chYn=" + chYn + ", chNo="
				+ chNo + ", chNm=" + chNm + ", enrollDate=" + enrollDate + ", status=" + status + ", reTy=" + reTy
				+ ", reCount=" + reCount + ", cCount=" + cCount + "]";
	}
	
	

	
	
	
}
