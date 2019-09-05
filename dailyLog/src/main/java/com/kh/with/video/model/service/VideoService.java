package com.kh.with.video.model.service;

import com.kh.with.member.model.vo.Member;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

public interface VideoService {
	
	//동영상 페이지 포인트 조회
	int selectPoint(Member m);
	
	//동영상 업로드 메소드
	String upload(MultipartFile file);
	
	//정기후원
	int regSub(Member m);

	// 업로드할 동영상 정보 insert메소드
	int insertVideoInfo(Model model);



}

