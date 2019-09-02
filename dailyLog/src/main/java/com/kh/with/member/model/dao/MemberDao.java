package com.kh.with.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

public interface MemberDao {

	Member loginMember(SqlSessionTemplate sqlSession, Member m) throws LoginException;
	
	int update_myPage(SqlSessionTemplate sqlSession, Member m);





}
