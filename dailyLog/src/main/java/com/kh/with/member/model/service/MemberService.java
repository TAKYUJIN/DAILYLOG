package com.kh.with.member.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

public interface MemberService {


	//로그인 정보 확인용 메소드
	Member loginMember(Member m) throws LoginException;

	int insertMember(Member m);
	

	
	//아이디 중복 체크 
	int idCheck(String userId);

	//닉네임 중복 체크
	int nickCheck(String nickname);
	
	//mypage 들어가기
	ArrayList<Member> selectMyPage(Member m);
	
	//mypage 수정
	int update_myPage(Member m) throws LoginException;
  
	//mypage 탈퇴
	int delete_myPage(Member m) throws Exception;

	void mailSendWithUserKey(String userId, String userNm, HttpServletRequest request);

	int alter_userKey_service(String userId, String key);

	

	

	

	

	



}
