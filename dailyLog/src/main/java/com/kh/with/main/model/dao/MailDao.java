
  package com.kh.with.main.model.dao;
  
  import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.kh.with.main.model.vo.MailVo;
  
  @Repository 
  public interface MailDao {
  void GetKey(String friId, String status_yn); //int alter_userKEY(String friId,
  int alter_userKEY(String friId, String status_yn);
  int regUser(MailVo mailVo) throws SQLException;;
  
  
  
  }
 