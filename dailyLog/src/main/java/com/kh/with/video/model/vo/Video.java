package com.kh.with.video.model.vo;

import java.sql.Date;

public class Video implements java.io.Serializable {
	private int vNo; //동영상번호
	private int userNo; //회원번호
	private String vTitle; //동영상제목
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
	private String fileNm; // 파일명 
 	private String openTy; //공개여부
	private int nNo;
	private String afileNm;
	
	public Video () {}

	public Video(int vNo, int userNo, String vTitle, int count, String chNm, String tag, String vblYn, Date uploadDt,
			Date modifyDt, String adultAut, String adYn, String adInfo, String location, String info, String fileNm,
			String openTy, int nNo, String afileNm) {
		super();
		this.vNo = vNo;
		this.userNo = userNo;
		this.vTitle = vTitle;
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
		this.fileNm = fileNm;
		this.openTy = openTy;
		this.nNo = nNo;
		this.afileNm = afileNm;
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

	public String getvTitle() {
		return vTitle;
	}

	public void setvTitle(String vTitle) {
		this.vTitle = vTitle;
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

	public String getFileNm() {
		return fileNm;
	}

	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}

	public String getOpenTy() {
		return openTy;
	}

	public void setOpenTy(String openTy) {
		this.openTy = openTy;
	}

	public int getnNo() {
		return nNo;
	}

	public void setnNo(int nNo) {
		this.nNo = nNo;
	}

	public String getAfileNm() {
		return afileNm;
	}

	public void setAfileNm(String afileNm) {
		this.afileNm = afileNm;
	}

	@Override
	public String toString() {
		return "Video [vNo=" + vNo + ", userNo=" + userNo + ", vTitle=" + vTitle + ", count=" + count + ", chNm=" + chNm
				+ ", tag=" + tag + ", vblYn=" + vblYn + ", uploadDt=" + uploadDt + ", modifyDt=" + modifyDt
				+ ", adultAut=" + adultAut + ", adYn=" + adYn + ", adInfo=" + adInfo + ", location=" + location
				+ ", info=" + info + ", fileNm=" + fileNm + ", openTy=" + openTy + ", nNo=" + nNo + ", afileNm="
				+ afileNm + "]";
	}

	
	
}