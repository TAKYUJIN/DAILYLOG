package com.kh.with.block.model.vo;

public class Blockch implements java.io.Serializable{
	private int userno;
	private int chno;
	public Blockch() {
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public int getChno() {
		return chno;
	}
	public void setChno(int chno) {
		this.chno = chno;
	}
	public Blockch(int userno, int chno) {
		super();
		this.userno = userno;
		this.chno = chno;
	}
	@Override
	public String toString() {
		return "Blockch [userno=" + userno + ", chno=" + chno + "]";
	}
	
	
	
}
