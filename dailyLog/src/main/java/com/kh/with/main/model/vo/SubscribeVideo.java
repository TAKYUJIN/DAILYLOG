package com.kh.with.main.model.vo;

public class SubscribeVideo {
	private int chNo;
	private String vTitle;
	private int count;
	private String filepath;
	
	public SubscribeVideo() {}

	public SubscribeVideo(int chNo, String vTitle, int count, String filepath) {
		super();
		this.chNo = chNo;
		this.vTitle = vTitle;
		this.count = count;
		this.filepath = filepath;
	}

	public int getChNo() {
		return chNo;
	}

	public void setChNo(int chNo) {
		this.chNo = chNo;
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

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	@Override
	public String toString() {
		return "SubscribeVideo [chNo=" + chNo + ", vTitle=" + vTitle + ", count=" + count + ", filepath=" + filepath
				+ "]";
	}
	
	
	
	
}
