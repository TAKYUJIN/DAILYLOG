package com.kh.with.loger.model.vo;

public class AddVideo {
	private int aNo;		//상세정보번호 
	private int vNo;		//비디오번
	private int userNo;		//회원번
	private String addCt;	//상세정보내
	private String uploadDt;	//작성
	private String modifyDt;	//수정일 
	private int apNo;		//장소번
	private String apXY;	//좌
	private String apNm;	//장소
	private String apAd;	//주
	
	public AddVideo() {}

	public AddVideo(int aNo, int vNo, int userNo, String addCt, String uploadDt, String modifyDt, int apNo, String apXY,
			String apNm, String apAd) {
		super();
		this.aNo = aNo;
		this.vNo = vNo;
		this.userNo = userNo;
		this.addCt = addCt;
		this.uploadDt = uploadDt;
		this.modifyDt = modifyDt;
		this.apNo = apNo;
		this.apXY = apXY;
		this.apNm = apNm;
		this.apAd = apAd;
	}

	public int getaNo() {
		return aNo;
	}

	public void setaNo(int aNo) {
		this.aNo = aNo;
	}

	public int getvNo() {
		return vNo;
	}

	public void setvNo(int vNo) {
		this.vNo = vNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getAddCt() {
		return addCt;
	}

	public void setAddCt(String addCt) {
		this.addCt = addCt;
	}

	public String getUploadDt() {
		return uploadDt;
	}

	public void setUploadDt(String uploadDt) {
		this.uploadDt = uploadDt;
	}

	public String getModifyDt() {
		return modifyDt;
	}

	public void setModifyDt(String modifyDt) {
		this.modifyDt = modifyDt;
	}

	public int getApNo() {
		return apNo;
	}

	public void setApNo(int apNo) {
		this.apNo = apNo;
	}

	public String getApXY() {
		return apXY;
	}

	public void setApXY(String apXY) {
		this.apXY = apXY;
	}

	public String getApNm() {
		return apNm;
	}

	public void setApNm(String apNm) {
		this.apNm = apNm;
	}

	public String getApAd() {
		return apAd;
	}

	public void setApAd(String apAd) {
		this.apAd = apAd;
	}

	@Override
	public String toString() {
		return "addVideo [aNo=" + aNo + ", vNo=" + vNo + ", userNo=" + userNo + ", addCt=" + addCt + ", uploadDt="
				+ uploadDt + ", modifyDt=" + modifyDt + ", apNo=" + apNo + ", apXY=" + apXY + ", apNm=" + apNm
				+ ", apAd=" + apAd + "]";
	}
	
	
	
}
