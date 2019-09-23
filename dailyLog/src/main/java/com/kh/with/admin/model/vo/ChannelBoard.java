package com.kh.with.admin.model.vo;

public class ChannelBoard implements java.io.Serializable{
	private String userId;
	private int userNo;
	private String chNm;
	private String amTY;
	private String fileNm;
	private int price;
	private int reCount;
	private int cCount;
    
	public ChannelBoard() {}

	public ChannelBoard(String userId, int userNo, String chNm, String amTY, String fileNm, int price, int reCount,
			int cCount) {
		super();
		this.userId = userId;
		this.userNo = userNo;
		this.chNm = chNm;
		this.amTY = amTY;
		this.fileNm = fileNm;
		this.price = price;
		this.reCount = reCount;
		this.cCount = cCount;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getChNm() {
		return chNm;
	}

	public void setChNm(String chNm) {
		this.chNm = chNm;
	}

	public String getAmTY() {
		return amTY;
	}

	public void setAmTY(String amTY) {
		this.amTY = amTY;
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
		return "ChannelBoard [userId=" + userId + ", userNo=" + userNo + ", chNm=" + chNm + ", amTY=" + amTY
				+ ", fileNm=" + fileNm + ", price=" + price + ", reCount=" + reCount + ", cCount=" + cCount + "]";
	}

}
