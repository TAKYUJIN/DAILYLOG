package com.kh.with.websocket.model.vo;

import java.sql.Date;

public class ChatMember implements java.io.Serializable{
	private int userNo;
	private String userNm;
	private String userId;
	private String nickname;
	private String gender;
	private String birth;
	private int age;
	private String Room;
	
	
	public ChatMember() {}


	public ChatMember(int userNo, String userNm, String userId, String nickname, String gender, String birth, int age) {
		super();
		this.userNo = userNo;
		this.userNm = userNm;
		this.userId = userId;
		this.nickname = nickname;
		this.gender = gender;
		this.birth = birth;
		this.age = age;
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


	public String getNickname() {
		return nickname;
	}


	public void setNickname(String nickname) {
		this.nickname = nickname;
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


	@Override
	public String toString() {
		return "ChatMember [userNo=" + userNo + ", userNm=" + userNm + ", userId=" + userId + ", nickname=" + nickname
				+ ", gender=" + gender + ", birth=" + birth + ", age=" + age + "]";
	}
	
	
	
	
	
}
