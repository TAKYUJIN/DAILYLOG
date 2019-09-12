package com.kh.with.video.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Video;

public interface VideoService {
	
 
	//동영상 페이지 포인트 조회
	int selectPoint(int userNo);
	
	//동영상 업로드 메소드
	String upload(MultipartFile file);
	
	//정기후원
	int regSub(Map<String, Integer> map);

	
	// 업로드할동영상 정보 insert메소드
	int insertVideoInfo(Video video);



	//메인 썸네일 출력
	List<Attachment> videoimagelist( );

	
	//썸네일 insert
	int insertAttachment(Attachment attachment);
	
	//비디오값 불러오기
	List<Object> selectVideoInfo(int userNo, int vNo);

	//정기후원 상태 조회
	int selectRegStatus(int userNo, int chNo);


	List<Map<String, Object>> selectLogerInfo(int userNo, int vNo);

	int insertReg(Map<String, Integer> map);

	


}

