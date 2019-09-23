package com.kh.with.video.model.dao;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.loger.model.vo.Loger;
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
	
	
	List<Attachment> videoimagelist(SqlSessionTemplate sqlSession,Member m);
	List<Attachment> videopop(SqlSessionTemplate sqlSession,Member m);
	List<Attachment> videonew(SqlSessionTemplate sqlSession,Member m);
	List<Attachment> videobook(SqlSessionTemplate sqlSession,Member m);
	List<Attachment> videosub(SqlSessionTemplate sqlSession,Member m);
	//썸네일  insert 메소드
	int insertAttachment(SqlSessionTemplate sqlSession, Attachment attachment);
	
	List<Video> selectVideoInfo(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	List<Loger> selectLogerInfo(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	int selectRegStatus(SqlSessionTemplate sqlSession, int userNo, int chNo);
	
	int insertReg(SqlSessionTemplate sqlSession, Map<String, Integer> map);

	int insertOnce(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	//좋아요
	int insertLike(SqlSessionTemplate sqlSession, Map<String, Integer> map);	
	int deleteLike(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	//싫어요
	int insertHate(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int deleteHate(SqlSessionTemplate sqlSession, Map<String, Integer> map);

	//북마크
	int insertBookmark(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int deleteBookmark(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	//신고
	int report(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int block(SqlSessionTemplate sqlSession, Map<String, Object> map);
	List<Attachment> videolike(SqlSessionTemplate sqlSession,Member m);
	List<Attachment> videoimagelist(SqlSessionTemplate sqlSession);
	 
	int selectAge(SqlSessionTemplate sqlSession, int loginUser);
	
	//동영상번호 셀렉
	
	Video selectvNo(SqlSessionTemplate sqlSession, int getUserNo);
	List<Attachment> videotak(SqlSessionTemplate sqlSession);
	List<Attachment> videokim1(SqlSessionTemplate sqlSession);
	List<Attachment> videokim2(SqlSessionTemplate sqlSession);
	List<Attachment> videopark(SqlSessionTemplate sqlSession);
	List<Attachment> videoji(SqlSessionTemplate sqlSession);
	List<Attachment> videojeong(SqlSessionTemplate sqlSession);
	List<Video> videopop1(SqlSessionTemplate sqlSession);
	List<Video> videonew1(SqlSessionTemplate sqlSession);
	
	

}
