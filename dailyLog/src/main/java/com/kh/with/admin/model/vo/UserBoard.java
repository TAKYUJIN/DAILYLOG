package com.kh.with.admin.model.vo;

import java.sql.Date;

public class UserBoard {

	private int userNo;
	private String userId;
	private String userNm;
	private String phone;
	private String chYn;
	private int chNo;
	private String chNm;
	private Date enrollDate;
	private String status;
	private String reTy;
	private int userReCount;
	private int userCCount;
	private int chReCount;
	private int chCCount;
	
	public UserBoard() {}

	public UserBoard(int userNo, String userId, String userNm, String phone, String chYn, int chNo, String chNm,
			Date enrollDate, String status, String reTy, int userReCount, int userCCount, int chReCount, int chCCount) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userNm = userNm;
		this.phone = phone;
		this.chYn = chYn;
		this.chNo = chNo;
		this.chNm = chNm;
		this.enrollDate = enrollDate;
		this.status = status;
		this.reTy = reTy;
		this.userReCount = userReCount;
		this.userCCount = userCCount;
		this.chReCount = chReCount;
		this.chCCount = chCCount;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
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

	public int getUserReCount() {
		return userReCount;
	}

	public void setUserReCount(int userReCount) {
		this.userReCount = userReCount;
	}

	public int getUserCCount() {
		return userCCount;
	}

	public void setUserCCount(int userCCount) {
		this.userCCount = userCCount;
	}

	public int getChReCount() {
		return chReCount;
	}

	public void setChReCount(int chReCount) {
		this.chReCount = chReCount;
	}

	public int getChCCount() {
		return chCCount;
	}

	public void setChCCount(int chCCount) {
		this.chCCount = chCCount;
	}

	@Override
	public String toString() {
		return "UserBoard [userNo=" + userNo + ", userId=" + userId + ", userNm=" + userNm + ", phone=" + phone
				+ ", chYn=" + chYn + ", chNo=" + chNo + ", chNm=" + chNm + ", enrollDate=" + enrollDate + ", status="
				+ status + ", reTy=" + reTy + ", userReCount=" + userReCount + ", userCCount=" + userCCount
				+ ", chReCount=" + chReCount + ", chCCount=" + chCCount + "]";
	}


	

	
}
