package com.kh.with.video.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.member.model.vo.Member;

@Repository
public class VideoDaoImpl implements VideoDao{
	
	  //동영상 페이지 포인트 조회
	  @Override
	  public int selectPoint(SqlSessionTemplate sqlSession, Member m) {
		  
		  return sqlSession.selectOne("Member.selectPoint", m);
	  }
	  //동영상정기후원
	@Override
	public int regSub(SqlSessionTemplate sqlSession, Member m) {
		
		
		
		return sqlSession.update("Member.regSub", m);
	}
	 


	



}
