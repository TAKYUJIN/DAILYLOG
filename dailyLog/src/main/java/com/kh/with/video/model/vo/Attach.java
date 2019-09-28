package com.kh.with.video.model.vo;

public class Attach implements java.io.Serializable{
	private String fileNm;
	private String chNm;
	
	public Attach() {}

	public Attach(String fileNm, String chNm) {
		super();
		this.fileNm = fileNm;
		this.chNm = chNm;
	}

	public String getFileNm() {
		return fileNm;
	}

	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}

	public String getChNm() {
		return chNm;
	}

	public void setChNm(String chNm) {
		this.chNm = chNm;
	}

	@Override
	public String toString() {
		return "Attach [fileNm=" + fileNm + ", chNm=" + chNm + "]";
	}
	
	
}
