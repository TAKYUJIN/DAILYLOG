package com.kh.with.report.model.vo;

public class Report2 implements java.io.Serializable {
	private int reno; //신고번호
	private int userNo;//회원번호
	private String userNm;//회원 이름
	private String userId; //회원 아이디
	private int retarget;//신고대상자
	private String redt;//신고날짜
	private String rewhy;//신고사유
	private String rety;//신고구분
	private int vNo;//동영상번호
	private int repno;//댓글번호
	private String chNm;//채널명
	private int recount; //신고 횟수
	private int ccount;//경고 횟수
	private String vTitle;//동영상 제목
	private String vcount;//동영상 조횟수
	private String filepath ;//썸네일
	private int status;//status
	
	public Report2() { }

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

	public String getUserNm() {
		return userNm;
	}

	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getRetarget() {
		return retarget;
	}

	public void setRetarget(int retarget) {
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

	public int getvNo() {
		return vNo;
	}

	public void setvNo(int vNo) {
		this.vNo = vNo;
	}

	public int getRepno() {
		return repno;
	}

	public void setRepno(int repno) {
		this.repno = repno;
	}

	public String getChNm() {
		return chNm;
	}

	public void setChNm(String chNm) {
		this.chNm = chNm;
	}

	public int getRecount() {
		return recount;
	}

	public void setRecount(int recount) {
		this.recount = recount;
	}

	public int getCcount() {
		return ccount;
	}

	public void setCcount(int ccount) {
		this.ccount = ccount;
	}

	public String getvTitle() {
		return vTitle;
	}

	public void setvTitle(String vTitle) {
		this.vTitle = vTitle;
	}

	public String getVcount() {
		return vcount;
	}

	public void setVcount(String vcount) {
		this.vcount = vcount;
	}

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Report2(int reno, int userNo, String userNm, String userId, int retarget, String redt, String rewhy,
			String rety, int vNo, int repno, String chNm, int recount, int ccount, String vTitle, String vcount,
			String filepath, int status) {
		super();
		this.reno = reno;
		this.userNo = userNo;
		this.userNm = userNm;
		this.userId = userId;
		this.retarget = retarget;
		this.redt = redt;
		this.rewhy = rewhy;
		this.rety = rety;
		this.vNo = vNo;
		this.repno = repno;
		this.chNm = chNm;
		this.recount = recount;
		this.ccount = ccount;
		this.vTitle = vTitle;
		this.vcount = vcount;
		this.filepath = filepath;
		this.status = status;
	}

	@Override
	public String toString() {
		return "Report2 [reno=" + reno + ", userNo=" + userNo + ", userNm=" + userNm + ", userId=" + userId
				+ ", retarget=" + retarget + ", redt=" + redt + ", rewhy=" + rewhy + ", rety=" + rety + ", vNo=" + vNo
				+ ", repno=" + repno + ", chNm=" + chNm + ", recount=" + recount + ", ccount=" + ccount + ", vTitle="
				+ vTitle + ", vcount=" + vcount + ", filepath=" + filepath + ", status=" + status + "]";
	}
 
	 
}
