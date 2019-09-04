package com.kh.with.video.model.service;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.dao.VideoDao;

@Service
public class VideoServiceImpl implements VideoService{
	
  @Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private VideoDao vd;
  
  //동영상 페이지 포인트 조회
	@Override
	public int selectPoint(Member m) {
		
		int point = vd.selectPoint(sqlSession, m);
		
		System.out.println("point : " + point);
		
		return point;
	}
	

	}

