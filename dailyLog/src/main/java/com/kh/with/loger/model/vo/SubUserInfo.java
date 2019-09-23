package com.kh.with.loger.model.vo;

public class SubUserInfo implements java.io.Serializable {
	private int chNo; //로거의 채널번호  
	private String nickname; //로거의 닉네임 
	private String chNm; // 로거의 채널명
	private int userNo; //로거의 유저번호

	
	
	public SubUserInfo() {}


	public SubUserInfo(int chNo, String nickname, String chNm, int userNo, int loginUserNo) {
		super();
		this.chNo = chNo;
		this.nickname = nickname;
		this.chNm = chNm;
		this.userNo = userNo;
	
	}


	public int getChNo() {
		return chNo;
	}


	public void setChNo(int chNo) {
		this.chNo = chNo;
	}


	public String getNickname() {
		return nickname;
	}


	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	public String getChNm() {
		return chNm;
	}


	public void setChNm(String chNm) {
		this.chNm = chNm;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}





	@Override
	public String toString() {
		return "SubUserInfo [chNo=" + chNo + ", nickname=" + nickname + ", chNm=" + chNm + ", userNo=" + userNo
				+ ", loginUserNo="  + "]";
	}


}


