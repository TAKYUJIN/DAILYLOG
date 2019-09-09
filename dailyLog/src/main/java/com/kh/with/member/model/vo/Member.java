package com.kh.with.member.model.vo;

import java.sql.Date;

public class Member implements java.io.Serializable{
	private int userNo;
	private String userNm;
	private String userId;
	private String userPwd;
	private String nickname;
	private String phone;
	private String gender;
	private String adultYN;
	private String chYN;
	private Date enrollDT;
	private Date leaveDT;
	private int remainPT;
	private String status;
	private Date mon;	//입력한 날짜
	private Date day;	//오늘 날짜
	
	public Member() {}

	public Member(int userNo, String userNm, String userId, String userPwd, String nickname, String phone,
			String gender, String adultYN, String chYN, Date enrollDT, Date leaveDT, int remainPT, String status,
			Date mon, Date day) {
		super();
		this.userNo = userNo;
		this.userNm = userNm;
		this.userId = userId;
		this.userPwd = userPwd;
		this.nickname = nickname;
		this.phone = phone;
		this.gender = gender;
		this.adultYN = adultYN;
		this.chYN = chYN;
		this.enrollDT = enrollDT;
		this.leaveDT = leaveDT;
		this.remainPT = remainPT;
		this.status = status;
		this.mon = mon;
		this.day = day;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserNm() {
		return userNm;
	}

	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAdultYN() {
		return adultYN;
	}

	public void setAdultYN(String adultYN) {
		this.adultYN = adultYN;
	}

	public String getChYN() {
		return chYN;
	}

	public void setChYN(String chYN) {
		this.chYN = chYN;
	}

	public Date getEnrollDT() {
		return enrollDT;
	}

	public void setEnrollDT(Date enrollDT) {
		this.enrollDT = enrollDT;
	}

	public Date getLeaveDT() {
		return leaveDT;
	}

	public void setLeaveDT(Date leaveDT) {
		this.leaveDT = leaveDT;
	}

	public int getRemainPT() {
		return remainPT;
	}

	public void setRemainPT(int remainPT) {
		this.remainPT = remainPT;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getMon() {
		return mon;
	}

	public void setMon(Date mon) {
		this.mon = mon;
	}

	public Date getDay() {
		return day;
	}

	public void setDay(Date day) {
		this.day = day;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userNm=" + userNm + ", userId=" + userId + ", userPwd=" + userPwd
				+ ", nickname=" + nickname + ", phone=" + phone + ", gender=" + gender + ", adultYN=" + adultYN
				+ ", chYN=" + chYN + ", enrollDT=" + enrollDT + ", leaveDT=" + leaveDT + ", remainPT=" + remainPT
				+ ", status=" + status + ", mon=" + mon + ", day=" + day + "]";
	}

	
	
}
