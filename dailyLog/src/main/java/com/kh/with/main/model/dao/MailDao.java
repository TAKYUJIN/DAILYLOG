package com.kh.with.main.model.dao;

public interface MailDao {

   void GetKey(String user_id, String key);
   int alter_userKEY(String user_id, String key);
}