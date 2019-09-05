package com.kh.with.video.model.vo;

import java.sql.Date;

public class Video implements java.io.Serializable {
	private int vNo; //동영상번호
	private int userNo; //회원번호
	private String vTitile; //동영상제목
	private int count; //조회수
	private String chNm; //채널명
	private String tag; //태그
	private String vblYn; //동영상차단여부
	private Date uploadDt; //업로드날짜
	private Date modifyDt; //수정날짜
	private String adultAut; //시청등급
	private String adYn; //광고여부
	private String adInfo; //광고정보
	private String location; //위치
	private String info; //추가장소정보
	private String filepath; // 파일경로
	private String openTy; //공개여부
	
	public Video () {}

	public Video(int vNo, int userNo, String vTitile, int count, String chNm, String tag, String vblYn, Date uploadDt,
			Date modifyDt, String adultAut, String adYn, String adInfo, String location, String info, String filepath,
			String openTy) {
		super();
		this.vNo = vNo;
		this.userNo = userNo;
		this.vTitile = vTitile;
		this.count = count;
		this.chNm = chNm;
		this.tag = tag;
		this.vblYn = vblYn;
		this.uploadDt = uploadDt;
		this.modifyDt = modifyDt;
		this.adultAut = adultAut;
		this.adYn = adYn;
		this.adInfo = adInfo;
		this.location = location;
		this.info = info;
		this.filepath = filepath;
		this.openTy = openTy;
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

	public String getvTitile() {
		return vTitile;
	}

	public void setvTitile(String vTitile) {
		this.vTitile = vTitile;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getChNm() {
		return chNm;
	}

	public void setChNm(String chNm) {
		this.chNm = chNm;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getVblYn() {
		return vblYn;
	}

	public void setVblYn(String vblYn) {
		this.vblYn = vblYn;
	}

	public Date getUploadDt() {
		return uploadDt;
	}

	public void setUploadDt(Date uploadDt) {
		this.uploadDt = uploadDt;
	}

	public Date getModifyDt() {
		return modifyDt;
	}

	public void setModifyDt(Date modifyDt) {
		this.modifyDt = modifyDt;
	}

	public String getAdultAut() {
		return adultAut;
	}

	public void setAdultAut(String adultAut) {
		this.adultAut = adultAut;
	}

	public String getAdYn() {
		return adYn;
	}

	public void setAdYn(String adYn) {
		this.adYn = adYn;
	}

	public String getAdInfo() {
		return adInfo;
	}

	public void setAdInfo(String adInfo) {
		this.adInfo = adInfo;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public String getOpenTy() {
		return openTy;
	}

	public void setOpenTy(String openTy) {
		this.openTy = openTy;
	}

	@Override
	public String toString() {
		return "Video [vNo=" + vNo + ", userNo=" + userNo + ", vTitile=" + vTitile + ", count=" + count + ", chNm="
				+ chNm + ", tag=" + tag + ", vblYn=" + vblYn + ", uploadDt=" + uploadDt + ", modifyDt=" + modifyDt
				+ ", adultAut=" + adultAut + ", adYn=" + adYn + ", adInfo=" + adInfo + ", location=" + location
				+ ", info=" + info + ", filepath=" + filepath + ", openTy=" + openTy + "]";
	}

	

}
