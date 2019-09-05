package com.kh.with.video.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.ui.Model;


import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.vo.Video;

public interface VideoDao {
	
	//동영상 페이지 포인트 조회
	int selectPoint(SqlSessionTemplate sqlSession, Member m);
	//정기후원
	int regSub(SqlSessionTemplate sqlSession, Member m);
	
	// 업로드할 동영상 정보 insert메소드
	int insertVideoInfo(SqlSessionTemplate sqlSession, Model model);
	
	
	List<Video> videoimagelist();




}
