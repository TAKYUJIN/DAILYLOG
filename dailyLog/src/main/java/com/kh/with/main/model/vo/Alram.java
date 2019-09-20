package com.kh.with.main.model.vo;

public class Alram {
 private int alNo;
 private int userNo;
 private String alDT;
 private String alCT;
 private String alYN;
 private String retarget;
 private int subNo;
 private int re_no;
 private int vNo;
 private int chNo;
 
 public Alram() {}

public Alram(int alNo, int userNo, String alDT, String alCT, String alYN, String retarget, int subNo, int re_no,
		int vNo, int chNo) {
	super();
	this.alNo = alNo;
	this.userNo = userNo;
	this.alDT = alDT;
	this.alCT = alCT;
	this.alYN = alYN;
	this.retarget = retarget;
	this.subNo = subNo;
	this.re_no = re_no;
	this.vNo = vNo;
	this.chNo = chNo;
}

public int getAlNo() {
	return alNo;
}

public void setAlNo(int alNo) {
	this.alNo = alNo;
}

public int getUserNo() {
	return userNo;
}

public void setUserNo(int userNo) {
	this.userNo = userNo;
}

public String getAlDT() {
	return alDT;
}

public void setAlDT(String alDT) {
	this.alDT = alDT;
}

public String getAlCT() {
	return alCT;
}

public void setAlCT(String alCT) {
	this.alCT = alCT;
}

public String getAlYN() {
	return alYN;
}

public void setAlYN(String alYN) {
	this.alYN = alYN;
}

public String getRetarget() {
	return retarget;
}

public void setRetarget(String retarget) {
	this.retarget = retarget;
}

public int getSubNo() {
	return subNo;
}

public void setSubNo(int subNo) {
	this.subNo = subNo;
}

public int getRe_no() {
	return re_no;
}

public void setRe_no(int re_no) {
	this.re_no = re_no;
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

@Override
public String toString() {
	return "Alram [alNo=" + alNo + ", userNo=" + userNo + ", alDT=" + alDT + ", alCT=" + alCT + ", alYN=" + alYN
			+ ", retarget=" + retarget + ", subNo=" + subNo + ", re_no=" + re_no + ", vNo=" + vNo + ", chNo=" + chNo
			+ "]";
}
 
 
 
	
	
	
	
}
