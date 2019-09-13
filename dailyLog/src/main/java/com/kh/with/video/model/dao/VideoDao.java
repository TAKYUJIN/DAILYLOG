package com.kh.with.video.model.dao;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;



import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Video;

public interface VideoDao {
	
	//동영상 페이지 포인트 조회
	int selectPoint(SqlSessionTemplate sqlSession, int userNo);
	//정기후원
	int regSub(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int onceSub(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	

	//동영상 업로드정보 insert 메소드
	int insertVideoInfo(SqlSessionTemplate sqlSession, Video video);
	

	// 업로드할 동영상 정보 insert메소드
	//int insertVideoInfo(SqlSessionTemplate sqlSession, Model model);
	
	
	List<Attachment> videoimagelist( );
	
	//썸네일  insert 메소드
	int insertAttachment(SqlSessionTemplate sqlSession, Attachment attachment);
	
	List<Object> selectVideoInfo(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	List<Map<String, Object>> selectLogerInfo(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	int selectRegStatus(SqlSessionTemplate sqlSession, int userNo, int chNo);
	
	int insertReg(SqlSessionTemplate sqlSession, Map<String, Integer> map);

	int insertOnce(SqlSessionTemplate sqlSession, Map<String, Integer> map);



	

}
