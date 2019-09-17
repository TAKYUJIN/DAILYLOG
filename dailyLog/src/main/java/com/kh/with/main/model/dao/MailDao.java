
  package com.kh.with.main.model.dao;
  
  import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.kh.with.main.model.vo.MailVo;
  
  @Repository 
  public interface MailDao {
	//친구메일 보내기~  
  int regUser(MailVo mailVo) throws SQLException;
  int GetKey(String friId, String status_yn); //int alter_userKEY(String friId,
  int alter_userKEY(String friId, String status_yn);
  int friendemail(MailVo mailVo);
  
  //친구 리스트 
  public List<MailVo> FriendsList(MailVo mailVo);
  
  
  
  }
 