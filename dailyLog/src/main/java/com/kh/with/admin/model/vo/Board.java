package com.kh.with.admin.model.vo;

import java.sql.Date;

public class Board implements java.io.Serializable {
	private int bNo;
	private String bTitle;
	private int userNo;
	private String bcontent;
	private int bcount;
	private Date createDt;
	private Date modifyDt;
	private int bstatus;
	
	public Board() {}

	public Board(int bNo, String bTitle, int userNo, String bcontent, int bcount, Date createDt, Date modifyDt,
			int bstatus) {
		super();
		this.bNo = bNo;
		this.bTitle = bTitle;
		this.userNo = userNo;
		this.bcontent = bcontent;
		this.bcount = bcount;
		this.createDt = createDt;
		this.modifyDt = modifyDt;
		this.bstatus = bstatus;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public int getBcount() {
		return bcount;
	}

	public void setBcount(int bcount) {
		this.bcount = bcount;
	}

	public Date getCreateDt() {
		return createDt;
	}

	public void setCreateDt(Date createDt) {
		this.createDt = createDt;
	}

	public Date getModifyDt() {
		return modifyDt;
	}

	public void setModifyDt(Date modifyDt) {
		this.modifyDt = modifyDt;
	}

	public int getBstatus() {
		return bstatus;
	}

	public void setBstatus(int bstatus) {
		this.bstatus = bstatus;
	}

	@Override
	public String toString() {
		return "Board [bNo=" + bNo + ", bTitle=" + bTitle + ", userNo=" + userNo + ", bcontent=" + bcontent
				+ ", bcount=" + bcount + ", createDt=" + createDt + ", modifyDt=" + modifyDt + ", bstatus=" + bstatus
				+ "]";
	}

	

}
