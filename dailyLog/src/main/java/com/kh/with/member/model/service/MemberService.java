package com.kh.with.member.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

public interface MemberService {


	//로그인 정보 확인용 메소드
	Member loginMember(Member m) throws LoginException;

	int insertMember(Member m);
	

	int update_myPage(Member m) throws LoginException;
	
	//아이디 중복 체크 
	int idCheck(String userId);

	//닉네임 중복 체크
	int nickCheck(String nickname);
  
  ArrayList<Member> selectMyPage(Member m);
  
  boolean delete_myPage(Member m, HttpServletResponse response) throws Exception;


	

	

	

	
	//Member update_Pwd(Member m, String old_pwd, HttpServletResponse response);



}
