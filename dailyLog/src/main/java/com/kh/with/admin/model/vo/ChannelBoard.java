package com.kh.with.admin.model.vo;

public class ChannelBoard implements java.io.Serializable{
	private String chNm;
	private String userId;
	private String fileNm;
	private int price;
	private int reCount;
	private int cCount;
	
	public ChannelBoard() {}

	public ChannelBoard(String chNm, String userId, String fileNm, int price, int reCount, int cCount) {
		super();
		this.chNm = chNm;
		this.userId = userId;
		this.fileNm = fileNm;
		this.price = price;
		this.reCount = reCount;
		this.cCount = cCount;
	}

	public String getChNm() {
		return chNm;
	}

	public void setChNm(String chNm) {
		this.chNm = chNm;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getFileNm() {
		return fileNm;
	}

	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getReCount() {
		return reCount;
	}

	public void setReCount(int reCount) {
		this.reCount = reCount;
	}

	public int getcCount() {
		return cCount;
	}

	public void setcCount(int cCount) {
		this.cCount = cCount;
	}

	@Override
	public String toString() {
		return "ChannelBoard [chNm=" + chNm + ", userId=" + userId + ", fileNm=" + fileNm + ", price=" + price
				+ ", reCount=" + reCount + ", cCount=" + cCount + "]";
	}

}
