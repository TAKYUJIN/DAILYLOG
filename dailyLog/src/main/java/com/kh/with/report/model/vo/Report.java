
  package com.kh.with.report.model.vo;
  
  public class Report implements java.io.Serializable 
  { private int reno;  //신고번호 private 
  int userNo;//회원번호 
  private String retarget;//신고대상자 
  private  String redt;//신고날짜
  private String rewhy;//신고사유 
  private String rety;//신고구분
  private int vNo;//동영상번호 
  private int repno;//댓글번호
  private String chNm;//채널명
  private int recount; //신고 횟수
  private int ccount;//경고 횟수 
  private String  vTitle;//동영상 제목 
  private String vcount;//동영상 조횟수 
  private String fileNm ;//썸네일
  private String uploadDt;
  public Report() { }
public Report(int reno, int userNo, String retarget, String redt, String rewhy, String rety, int vNo, int repno,
		String chNm, int recount, int ccount, String vTitle, String vcount, String fileNm, String uploadDt) {
	super();
	this.reno = reno;
	this.userNo = userNo;
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
	this.fileNm = fileNm;
	this.uploadDt = uploadDt;
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
public String getFileNm() {
	return fileNm;
}
public void setFileNm(String fileNm) {
	this.fileNm = fileNm;
}
public String getUploadDt() {
	return uploadDt;
}
public void setUploadDt(String uploadDt) {
	this.uploadDt = uploadDt;
}
@Override
public String toString() {
	return "Report [reno=" + reno + ", userNo=" + userNo + ", retarget=" + retarget + ", redt=" + redt + ", rewhy="
			+ rewhy + ", rety=" + rety + ", vNo=" + vNo + ", repno=" + repno + ", chNm=" + chNm + ", recount=" + recount
			+ ", ccount=" + ccount + ", vTitle=" + vTitle + ", vcount=" + vcount + ", fileNm=" + fileNm + ", uploadDt="
			+ uploadDt + "]";
}
 
  
	 
}
