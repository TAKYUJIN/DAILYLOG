package com.kh.with.loger.model.vo;

import java.sql.Date;

public class Support implements java.io.Serializable{
   private int nNo;      //게시판번호
   private String nickname;
   private int supNo;      //후원번호
   private int userNo;      //회원번호
   private int chNo;      //채널번호
   private String supSTDT;   //후원신텅날짜
   private int supPrice;   //후원금액
   private String supTY;   //후원종류
   private String regEDT;   //정기후원완료날짜
   private int regStatus;   //정기후원상태
   private int calStatus;   //정산유무
   
   public Support() {}

   public Support(int nNo, String nickname, int supNo, int userNo, int chNo, String supSTDT, int supPrice,
         String supTY, String regEDT, int regStatus, int calStatus) {
      super();
      this.nNo = nNo;
      this.nickname = nickname;
      this.supNo = supNo;
      this.userNo = userNo;
      this.chNo = chNo;
      this.supSTDT = supSTDT;
      this.supPrice = supPrice;
      this.supTY = supTY;
      this.regEDT = regEDT;
      this.regStatus = regStatus;
      this.calStatus = calStatus;
   }

   public int getnNo() {
      return nNo;
   }

   public void setnNo(int nNo) {
      this.nNo = nNo;
   }

   public String getNickname() {
      return nickname;
   }

   public void setNickname(String nickname) {
      this.nickname = nickname;
   }

   public int getSupNo() {
      return supNo;
   }

   public void setSupNo(int supNo) {
      this.supNo = supNo;
   }

   public int getUserNo() {
      return userNo;
   }

   public void setUserNo(int userNo) {
      this.userNo = userNo;
   }

   public int getChNo() {
      return chNo;
   }

   public void setChNo(int chNo) {
      this.chNo = chNo;
   }

   public String getSupSTDT() {
      return supSTDT;
   }

   public void setSupSTDT(String supSTDT) {
      this.supSTDT = supSTDT;
   }

   public int getSupPrice() {
      return supPrice;
   }

   public void setSupPrice(int supPrice) {
      this.supPrice = supPrice;
   }

   public String getSupTY() {
      return supTY;
   }

   public void setSupTY(String supTY) {
      this.supTY = supTY;
   }

   public String getRegEDT() {
      return regEDT;
   }

   public void setRegEDT(String regEDT) {
      this.regEDT = regEDT;
   }

   public int getRegStatus() {
      return regStatus;
   }

   public void setRegStatus(int regStatus) {
      this.regStatus = regStatus;
   }

   public int getCalStatus() {
      return calStatus;
   }

   public void setCalStatus(int calStatus) {
      this.calStatus = calStatus;
   }

   @Override
   public String toString() {
      return "Support [nNo=" + nNo + ", nickname=" + nickname + ", supNo=" + supNo + ", userNo=" + userNo + ", chNo="
            + chNo + ", supSTDT=" + supSTDT + ", supPrice=" + supPrice + ", supTY=" + supTY + ", regEDT=" + regEDT
            + ", regStatus=" + regStatus + ", calStatus=" + calStatus + "]";
   }

   
   
   
}