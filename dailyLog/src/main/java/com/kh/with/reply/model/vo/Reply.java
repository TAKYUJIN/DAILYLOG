package com.kh.with.reply.model.vo;

import java.sql.Date;

public class Reply implements java.io.Serializable{
	private int repNo;		//댓글번호
	private int userNo;		//회원번호
	private int vNo;		//동영상번호
	private Date repDt;		//작성날짜
	private String repCt;	//댓글내용
	private String repTy;	//댓글구분
	private int parentNo;
	private String chNm;	//회원닉네
	private String userFile;		//동영상썸네일 
	private String thumbnail;		//회원프로필 
	private int count;			//영상 조회수 
	private String vtitle;		//영상 제목 
	
	
	public Reply() {}


	public Reply(int repNo, int userNo, int vNo, Date repDt, String repCt, String repTy, int parentNo, String chNm,
			String userFile, String thumbnail, int count, String vtitle) {
		super();
		this.repNo = repNo;
		this.userNo = userNo;
		this.vNo = vNo;
		this.repDt = repDt;
		this.repCt = repCt;
		this.repTy = repTy;
		this.parentNo = parentNo;
		this.chNm = chNm;
		this.userFile = userFile;
		this.thumbnail = thumbnail;
		this.count = count;
		this.vtitle = vtitle;
	}


	public int getRepNo() {
		return repNo;
	}


	public void setRepNo(int repNo) {
		this.repNo = repNo;
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


	public Date getRepDt() {
		return repDt;
	}


	public void setRepDt(Date repDt) {
		this.repDt = repDt;
	}


	public String getRepCt() {
		return repCt;
	}


	public void setRepCt(String repCt) {
		this.repCt = repCt;
	}


	public String getRepTy() {
		return repTy;
	}


	public void setRepTy(String repTy) {
		this.repTy = repTy;
	}


	public int getParentNo() {
		return parentNo;
	}


	public void setParentNo(int parentNo) {
		this.parentNo = parentNo;
	}


	public String getChNm() {
		return chNm;
	}


	public void setChNm(String chNm) {
		this.chNm = chNm;
	}


	public String getUserFile() {
		return userFile;
	}


	public void setUserFile(String userFile) {
		this.userFile = userFile;
	}


	public String getThumbnail() {
		return thumbnail;
	}


	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}


	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}


	public String getVtitle() {
		return vtitle;
	}


	public void setVtitle(String vtitle) {
		this.vtitle = vtitle;
	}


	@Override
	public String toString() {
		return "Reply [repNo=" + repNo + ", userNo=" + userNo + ", vNo=" + vNo + ", repDt=" + repDt + ", repCt=" + repCt
				+ ", repTy=" + repTy + ", parentNo=" + parentNo + ", chNm=" + chNm + ", userFile=" + userFile
				+ ", thumbnail=" + thumbnail + ", count=" + count + ", vtitle=" + vtitle + "]";
	}

	
	

}