package com.kh.with.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

public interface MemberDao {

	Member loginMember(SqlSessionTemplate sqlSession, Member m) throws LoginException;

	int insertMember(SqlSessionTemplate sqlSession, Member m);

	String selectEncPassword(SqlSessionTemplate sqlSession, Member m);

	Member selectMember(SqlSessionTemplate sqlSession, Member m);

	
	int update_myPage(SqlSessionTemplate sqlSession, Member m);


	ArrayList<Member> selectMyPage(SqlSessionTemplate sqlSession, Member m);

	int delete_myPage(SqlSessionTemplate sqlSession, Member m);




}
