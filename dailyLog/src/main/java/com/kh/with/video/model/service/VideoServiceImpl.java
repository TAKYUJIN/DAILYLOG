package com.kh.with.video.model.service;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.with.loger.model.vo.Loger;
import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.dao.VideoDao;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Video;

@Service
public class VideoServiceImpl implements VideoService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private VideoDao vd;
	
	//동영상 페이지 포인트 조회
	@Override
	public int selectPoint(int userNo) {
		System.out.println("selectPoint Service in!");

		return vd.selectPoint(sqlSession, userNo);
	}

	//정기후원
	@Override
	public int regSub(Map<String, Integer> map) {


		return vd.regSub(sqlSession, map);
	}
	@Override
	public int onceSub(Map<String, Integer> map) {
		
		return vd.onceSub(sqlSession, map);
	}

	@Override
	public String upload(MultipartFile file) {
		// TODO Auto-generated method stub
		return null;
	}

	// 업로드할동영상 정보 insert메소드
	@Override
	public int insertVideoInfo(Video video ) {
		
		return vd.insertVideoInfo(sqlSession,video);
	}

	@Override
	public List<Attachment> videoimagelist(Member m){
		System.out.println("videoServiceimpl");
		
		return vd.videoimagelist(m);
	}
	
	@Override
	public List<Attachment> videopop(Member m) {
		// TODO Auto-generated method stub
		return vd.videopop(m);
	}

	@Override
	public List<Attachment> videonew(Member m) {
		// TODO Auto-generated method stub
		return vd.videonew(m);
	}

	@Override
	public List<Attachment> videobook(Member m) {
		// TODO Auto-generated method stub
		return vd.videobook(m);
	}

	@Override
	public List<Attachment> videosub(Member m) {
		// TODO Auto-generated method stub
		return vd.videosub(m);
	}
	
	@Override
	public List<Attachment> videolike(Member m) {
		// TODO Auto-generated method stub
		return vd.videolike(m);
	}
	

	//썸네일 insert 메소드
	@Override
	public int insertAttachment(Attachment attachment) {
		
		return vd.insertAttachment(sqlSession,attachment);
	}

	@Override
	public List<Video> selectVideoInfo(Map<String, Integer> map) {
		
		return vd.selectVideoInfo(sqlSession, map);
	}
	@Override
	public List<Loger> selectLogerInfo(Map<String, Integer> map) {
		
		return vd.selectLogerInfo(sqlSession, map);
	}
	
	@Override
	public int selectRegStatus(int userNo, int chNo) {
		
		return vd.selectRegStatus(sqlSession, userNo, chNo);
	}


	@Override
	public int insertReg(Map<String, Integer> map) {
		
		return vd.insertReg(sqlSession, map);
	}
	@Override
	public int insertOnce(Map<String, Integer> map) {
		
		return vd.insertOnce(sqlSession, map);
	}

	@Override
	public int insertLike(Map<String, Integer> map) {
		
		return vd.insertLike(sqlSession, map);
	}

	@Override
	public int deleteLike(Map<String, Integer> map) {
		
		return vd.deleteLike(sqlSession, map);
	}
	
	@Override
	public int insertHate(Map<String, Integer> map) {
		
		return vd.insertHate(sqlSession, map);
	}
	
	@Override
	public int deleteHate(Map<String, Integer> map) {
		
		return vd.deleteHate(sqlSession, map);
	}
	@Override
	public int insertBookmark(Map<String, Integer> map) {
		
		return vd.insertBookmark(sqlSession, map);
	}
	
	@Override
	public int deleteBookmark(Map<String, Integer> map) {
		
		return vd.deleteBookmark(sqlSession, map);
	}
	
	@Override
	public int report(Map<String, Object> map) {
		
		return vd.report(sqlSession, map);
	}
	@Override
	public int block(Map<String, Object> map) {
		
		return vd.block(sqlSession, map);
	}

	@Override
	public List<Attachment> videoimagelist() {
		// TODO Auto-generated method stub
		return vd.videoimagelist(sqlSession);
	}

	@Override
	public List<Attachment> videopop() {
		// TODO Auto-generated method stub
		return vd.videopop(sqlSession);
	}

	@Override
	public List<Attachment> videonew() {
		// TODO Auto-generated method stub
		return vd.videonew(sqlSession);
	}

	

	public int selectAge(int loginUser) {
		
		return vd.selectAge(sqlSession, loginUser);
	}



	
}



