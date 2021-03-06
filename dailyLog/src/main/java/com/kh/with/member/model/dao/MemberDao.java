package com.kh.with.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

public interface MemberDao {

	Member loginMember(SqlSessionTemplate sqlSession, Member m) throws LoginException;

	int insertMember(SqlSessionTemplate sqlSession, Member m);

	String selectEncPassword(SqlSessionTemplate sqlSession, Member m);

	Member selectMember(SqlSessionTemplate sqlSession, Member m);

	

	int idCheck(String userId);

	int nickCheck(String nickname);
	
	//mypage
	ArrayList<Member> selectMyPage(SqlSessionTemplate sqlSession, Member m);
	
	int update_myPage(SqlSessionTemplate sqlSession, Member m);

	int delete_myPage(SqlSessionTemplate sqlSession, Member m);
	
	int delete_myPage_file(SqlSessionTemplate sqlSession, HashMap map); // 마이페이지 사진 삭제
	
	int insert_myPage_file(SqlSessionTemplate sqlSession, HashMap map); // 마이페이지 사진 추가



	//int alter_userKEY(String userId, String status);

	//int GetJoinKey(String userId, String key);

	int GetKey(Member m);

	int ustop(SqlSessionTemplate sqlSession, Member m);

	int alter_userKey(String userId, String status);

	int phoneCheck(String phone);

	int resetKey(String key, String email);

	String showId(String phone);





}
