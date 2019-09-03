package com.kh.with.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.kh.with.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	SqlSession sqlSession = null;
	
	
	@Override
	public int check_id(String userId) throws Exception{
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.check_id", userId);
	}
	
	@Transactional
	public int join_member(Member m) throws Exception{
		return sqlSession.insert("member.join_member", m);
	}


	/*
	 * //마이페이지
	 * 
	 * @Override public int update_myPage(SqlSessionTemplate sqlSession, Member m) {
	 * // TODO Auto-generated method stub return
	 * sqlSession.update("m.update_myPage", m); }
	 */

	



}
