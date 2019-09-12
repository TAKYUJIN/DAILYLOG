package com.kh.with.report.model.vo;

public class Report implements java.io.Serializable {
	private int reno; //신고번호
	private int userNo;//회원번호
	private String retarget;//신고대상자
	private String redt;//신고날짜
	private String rewhy;//신고사유
	private String rety;//신고구분
	private int vno;//동영상번호
	private int repno;//댓글번호
	private int chno;//채널번호
	
	
	
	
	public Report() { }
	
	
	public Report(int reno, int userNo, String retarget, String redt, String rewhy, String rety, int vno, int repno,
			int chno) {
		super();
		this.reno = reno;
		this.userNo = userNo;
		this.retarget = retarget;
		this.redt = redt;
		this.rewhy = rewhy;
		this.rety = rety;
		this.vno = vno;
		this.repno = repno;
		this.chno = chno;
	}


	public int getReno() {
		return reno;
	}
	public void setReno(int reno) {
		this.reno = reno;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getRetarget() {
		return retarget;
	}
	public void setRetarget(String retarget) {
		this.retarget = retarget;
	}
	public String getRedt() {
		return redt;
	}
	public void setRedt(String redt) {
		this.redt = redt;
	}
	public String getRewhy() {
		return rewhy;
	}
	public void setRewhy(String rewhy) {
		this.rewhy = rewhy;
	}
	public String getRety() {
		return rety;
	}
	public void setRety(String rety) {
		this.rety = rety;
	}
	public int getVno() {
		return vno;
	}
	public void setVno(int vno) {
		this.vno = vno;
	}
	public int getRepno() {
		return repno;
	}
	public void setRepno(int repno) {
		this.repno = repno;
	}
	public int getChno() {
		return chno;
	}
	public void setChno(int chno) {
		this.chno = chno;
	}


	@Override
	public String toString() {
		return "Report [reno=" + reno + ", userNo=" + userNo + ", retarget=" + retarget + ", redt=" + redt + ", rewhy="
				+ rewhy + ", rety=" + rety + ", vno=" + vno + ", repno=" + repno + ", chno=" + chno + "]";
	}
	
	
}
