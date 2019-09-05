package com.kh.with.video.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

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
	public int regSub(SqlSessionTemplate sqlSession, Member m, int price) {

		return sqlSession.update("Member.regSub", m);
	}
	
	// 업로드할 동영상 정보 insert메소드
	@Override
	public int insertVideoInfo(SqlSessionTemplate sqlSession, Model model) {
		
		System.out.println("디에이오까지왔어??:" + model);
		
	
		return sqlSession.insert("Video.insertVideoInfo", model);
		
		
	}
	



	



}
