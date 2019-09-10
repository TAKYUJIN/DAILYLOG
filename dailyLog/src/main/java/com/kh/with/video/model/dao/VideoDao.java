package com.kh.with.video.model.dao;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;



import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Video;

public interface VideoDao {
	
	//동영상 페이지 포인트 조회
	int selectPoint(SqlSessionTemplate sqlSession, Member m);
	//정기후원
	int regSub(SqlSessionTemplate sqlSession, Member m);
	

	//동영상 업로드정보 insert 메소드
	int insertVideoInfo(SqlSessionTemplate sqlSession, Video video);
	

	// 업로드할 동영상 정보 insert메소드
	//int insertVideoInfo(SqlSessionTemplate sqlSession, Model model);
	
	
	List<Video> videoimagelist();
	
	//썸네일  insert 메소드
	int insertAttachment(SqlSessionTemplate sqlSession, Attachment attachment);
	
	List<Video> selectVideoInfo(SqlSessionTemplate sqlSession, int userNo);




	

}
