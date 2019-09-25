package com.kh.with.main.model.vo;

public class VideoLike {
	private int likeNo;
	private int userNo;
	private int vNo;
	private int chNo;
	private String vTY;
	private String vTitle;
	private String uploadDT;
	private String fileNm; // 썸네일 파일경로
	private String vfileNm; // 동영상 파일경로
	private int nNo;
	private int repNo;
	
	public VideoLike() {}

	public VideoLike(int likeNo, int userNo, int vNo, int chNo, String vTY, String vTitle, String uploadDT,
			String fileNm, String vfileNm, int nNo, int repNo) {
		super();
		this.likeNo = likeNo;
		this.userNo = userNo;
		this.vNo = vNo;
		this.chNo = chNo;
		this.vTY = vTY;
		this.vTitle = vTitle;
		this.uploadDT = uploadDT;
		this.fileNm = fileNm;
		this.vfileNm = vfileNm;
		this.nNo = nNo;
		this.repNo = repNo;
	}

	public int getLikeNo() {
		return likeNo;
	}

	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getvNo() {
		return vNo;
	}

	public void setvNo(int vNo) {
		this.vNo = vNo;
	}

	public int getChNo() {
		return chNo;
	}

	public void setChNo(int chNo) {
		this.chNo = chNo;
	}

	public String getvTY() {
		return vTY;
	}

	public void setvTY(String vTY) {
		this.vTY = vTY;
	}

	public String getvTitle() {
		return vTitle;
	}

	public void setvTitle(String vTitle) {
		this.vTitle = vTitle;
	}

	public String getUploadDT() {
		return uploadDT;
	}

	public void setUploadDT(String uploadDT) {
		this.uploadDT = uploadDT;
	}

	public String getFileNm() {
		return fileNm;
	}

	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}

	public String getVfileNm() {
		return vfileNm;
	}

	public void setVfileNm(String vfileNm) {
		this.vfileNm = vfileNm;
	}

	public int getnNo() {
		return nNo;
	}

	public void setnNo(int nNo) {
		this.nNo = nNo;
	}

	public int getRepNo() {
		return repNo;
	}

	public void setRepNo(int repNo) {
		this.repNo = repNo;
	}

	@Override
	public String toString() {
		return "VideoLike [likeNo=" + likeNo + ", userNo=" + userNo + ", vNo=" + vNo + ", chNo=" + chNo + ", vTY=" + vTY
				+ ", vTitle=" + vTitle + ", uploadDT=" + uploadDT + ", fileNm=" + fileNm + ", vfileNm=" + vfileNm
				+ ", nNo=" + nNo + ", repNo=" + repNo + "]";
	}

}
