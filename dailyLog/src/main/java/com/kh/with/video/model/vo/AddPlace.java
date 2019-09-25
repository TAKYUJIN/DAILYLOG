package com.kh.with.video.model.vo;

public class AddPlace implements java.io.Serializable{
	private int apNo;		//장소번
	private int vNo;		//비디오번
	private int userNo;		//회원번
	private String apXY;	//좌
	private String apNm;	//장소
	private String apAd;	//주
	
	public AddPlace() {}
	
	public AddPlace(int apNo, int vNo, int userNo, String apXY, String apNm, String apAd) {
		super();
		this.apNo = apNo;
		this.vNo = vNo;
		this.userNo = userNo;
		this.apXY = apXY;
		this.apNm = apNm; 
		this.apAd = apAd;
	}
	
	public int getapNo() {
		return apNo;
	}
	
	public void setapNo(int apNo) {
		this.apNo = apNo;
	}
	
	public int getvNo() {
		return vNo;
	}
	
	public void setvNo(int vNo) {
		this.vNo = vNo;
	}
	
	public int getuserNo() {
		return userNo;
	}
	
	public void setuserNo(int userNo) {
		this.userNo = userNo;
	}
	
	public String getapXY() {
		return apXY;
	}
	
	public void setapXY(String apXY) {
		this.apXY = apXY;
	}
	
	public String getapNm() {
		return apNm;
	}
	
	public void setapNm(String apNm) {
		this.apNm = apNm;
	}
	
	public String getapAd() {
		return apAd;
	}
	
	public void setapAd(String apAd) {
		this.apAd = apAd;
	}
	
	@Override
	public String toString() {
		return "AddPlace [apNo=" + apNo + ", vNo=" + vNo + ", userNo=" + userNo + ", apXY= " 
						+ apXY + ", apNm=" + apNm + ", apAd= " + apAd + "]";
	}
}
