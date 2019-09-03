package com.kh.with.member.model.service;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

public interface MemberService {


	//로그인 정보 확인용 메소드
	Member loginMember(Member m) throws LoginException;

	int insertMember(Member m);


	
//	Member update_myPage(Member m) throws LoginException;
	
	//Member update_Pwd(Member m, String old_pwd, HttpServletResponse response);



}
