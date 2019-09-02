package com.kh.with.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

public interface MemberDao {


	int check_id(String userId) throws Exception;

	int join_member(Member m) throws Exception;
	
	int update_myPage(SqlSessionTemplate sqlSession, Member m);


}
