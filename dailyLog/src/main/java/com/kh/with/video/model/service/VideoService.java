package com.kh.with.video.model.service;

import org.springframework.web.multipart.MultipartFile;

public interface VideoService {

	//동영상 업로드 메소드
	String upload(MultipartFile file);


	

}
