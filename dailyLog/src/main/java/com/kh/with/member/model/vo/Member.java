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
	private String birth;
	private int age;
	private String adultYN;
	private String chYN;
	private Date enrollDT;
	private Date leaveDT;
	private int remainPT;
	private String status;
	private Date mon;	//입력한 날짜
	private Date day;	//오늘 날짜
	private String accNm;	//예금주
	private String bankNm;	//은행명
	private String account;	//계좌번호
	private int chNo;
	
	public Member() {}

	public Member(int userNo, String userNm, String userId, String userPwd, String nickname, String phone,
			String gender, String birth, int age, String adultYN, String chYN, Date enrollDT, Date leaveDT,
			int remainPT, String status, Date mon, Date day, String accNm, String bankNm, String account, int chNo) {
		super();
		this.userNo = userNo;
		this.userNm = userNm;
		this.userId = userId;
		this.userPwd = userPwd;
		this.nickname = nickname;
		this.phone = phone;
		this.gender = gender;
		this.birth = birth;
		this.age = age;
		this.adultYN = adultYN;
		this.chYN = chYN;
		this.enrollDT = enrollDT;
		this.leaveDT = leaveDT;
		this.remainPT = remainPT;
		this.status = status;
		this.mon = mon;
		this.day = day;
		this.accNm = accNm;
		this.bankNm = bankNm;
		this.account = account;
		this.chNo = chNo;
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

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
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

	public int getChNo() {
		return chNo;
	}

	public void setChNo(int chNo) {
		this.chNo = chNo;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userNm=" + userNm + ", userId=" + userId + ", userPwd=" + userPwd
				+ ", nickname=" + nickname + ", phone=" + phone + ", gender=" + gender + ", birth=" + birth + ", age="
				+ age + ", adultYN=" + adultYN + ", chYN=" + chYN + ", enrollDT=" + enrollDT + ", leaveDT=" + leaveDT
				+ ", remainPT=" + remainPT + ", status=" + status + ", mon=" + mon + ", day=" + day + ", accNm=" + accNm
				+ ", bankNm=" + bankNm + ", account=" + account + ", chNo=" + chNo + "]";
	}

	
	
}
