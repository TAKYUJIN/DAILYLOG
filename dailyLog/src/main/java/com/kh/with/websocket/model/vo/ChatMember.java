package com.kh.with.websocket.model.vo;

import java.sql.Date;

public class ChatMember implements java.io.Serializable{
	/*private int userNo;
	private String userNm;
	private String userId;
	private String nickname;
	private String gender;
	private String birth;
	private int age;
	private String Room;
	
	
	public ChatMember() {}


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


	public String getRoom() {
		return Room;
	}


	public void setRoom(String room) {
		Room = room;
	}


	@Override
	public String toString() {
		return "ChatMember [userNo=" + userNo + ", userNm=" + userNm + ", userId=" + userId + ", nickname=" + nickname
				+ ", gender=" + gender + ", birth=" + birth + ", age=" + age + ", Room=" + Room + "]";
	}


	public ChatMember(int userNo, String userNm, String userId, String nickname, String gender, String birth, int age,
			String room) {
		super();
		this.userNo = userNo;
		this.userNm = userNm;
		this.userId = userId;
		this.nickname = nickname;
		this.gender = gender;
		this.birth = birth;
		this.age = age;
		Room = room;
	}

 */
	private int  No;
	private String Id;
	private String room;
	private String priroom;
	
	public ChatMember() {}
	public int getNo() {
		return No;
	}
	public void setNo(int no) {
		No = no;
	}
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getPriroom() {
		return priroom;
	}
	public void setPriroom(String priroom) {
		this.priroom = priroom;
	}
	public ChatMember(int no, String id, String room, String priroom) {
		super();
		No = no;
		Id = id;
		this.room = room;
		this.priroom = priroom;
	}
	@Override
	public String toString() {
		return "ChatMember [No=" + No + ", Id=" + Id + ", room=" + room + ", priroom=" + priroom + "]";
	}
 
	 
}
