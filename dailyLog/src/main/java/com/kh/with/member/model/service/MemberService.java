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

	ArrayList<Member> selectMyPage(Member m);

	boolean delete_myPage(Member m, HttpServletResponse response) throws Exception;

	
	//Member update_Pwd(Member m, String old_pwd, HttpServletResponse response);



}
