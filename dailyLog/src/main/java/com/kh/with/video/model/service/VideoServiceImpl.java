package com.kh.with.video.model.service;


import java.util.ArrayList;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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

	//썸네일 insert 메소드
	@Override
	public int insertAttachment(Attachment attachment) {
		
		return vd.insertAttachment(sqlSession,attachment);
	}

//	@Override
//	public List<Map<String, Object>> selectVideoInfo(int userNo, int vNo) {
//		
//		return vd.selectVideoInfo(sqlSession, userNo, vNo);
//	}
	@Override
	public List<Object> selectVideoInfo(int userNo, int vNo) {
		
		return vd.selectVideoInfo(sqlSession, userNo, vNo);
	}

	@Override
	public int selectRegStatus(int userNo, int chNo) {
		
		return vd.selectRegStatus(sqlSession, userNo, chNo);
	}

	@Override
	public List<Map<String, Object>> selectLogerInfo(int userNo, int vNo) {

		return vd.selectLogerInfo(sqlSession, userNo, vNo);
	}

	@Override
	public int insertReg(Map<String, Integer> map) {
		
		return vd.insertReg(sqlSession, map);
	}






}



