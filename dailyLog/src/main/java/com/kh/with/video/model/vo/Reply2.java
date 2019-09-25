package com.kh.with.video.model.vo;

import java.sql.Date;

public class Reply2 implements java.io.Serializable{
	private int repNo;		//댓글번호
	private int userNo;		//회원번호
	private int vNo;		//동영상번호
	private Date repDt;		//작성날짜
	private String repCt;	//댓글내용
	private String repTy;	//댓글구분
	private String fileNm;
	private String nickName;
	private int parentNo;
	
	public Reply2() {}

	public Reply2(int repNo, int userNo, int vNo, Date repDt, String repCt, String repTy, String fileNm,
			String nickName, int parentNo) {
		super();
		this.repNo = repNo;
		this.userNo = userNo;
		this.vNo = vNo;
		this.repDt = repDt;
		this.repCt = repCt;
		this.repTy = repTy;
		this.fileNm = fileNm;
		this.nickName = nickName;
		this.parentNo = parentNo;
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

	public String getFileNm() {
		return fileNm;
	}

	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public int getParentNo() {
		return parentNo;
	}

	public void setParentNo(int parentNo) {
		this.parentNo = parentNo;
	}

	@Override
	public String toString() {
		return "Reply2 [repNo=" + repNo + ", userNo=" + userNo + ", vNo=" + vNo + ", repDt=" + repDt + ", repCt="
				+ repCt + ", repTy=" + repTy + ", fileNm=" + fileNm + ", nickName=" + nickName + ", parentNo="
				+ parentNo + "]";
	}

}
