package com.kh.with.video.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.with.member.model.service.MemberService;
import com.kh.with.video.model.service.VideoService;

@Controller
public class VideoController {

	@Autowired
	private MemberService ms;

	@Autowired
	private VideoService videoService; 

	//영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value="video.vd")
	public String showVideoView() {

		return "video/videoMain";
	}

	//영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value="regular.vd")
	public String regularView() {

		return "video/videoMain";
	}

	//영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value="once.vd")
	public String onceView() {

		return "video/videoMain";
	}
	//영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value="imgCheck.vd")
	public String imgCheck() {


		//ms.imgCheck();

		return "video/videoMain";
	}	

	//동영상 업로드 페이지 이동
	@RequestMapping(value="videoUpload.vd")
	public String  videoUpload() {

		return "video/videoUpload";
	}

	//동영상업로드
	@RequestMapping( "/upload" )
	public String upload(
			Model model,
			@RequestParam("file1") MultipartFile file) {

		String url = videoService.upload(file);
		model.addAttribute("url", url);
		return "result";
	}
}


















