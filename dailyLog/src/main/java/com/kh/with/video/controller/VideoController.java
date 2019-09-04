package com.kh.with.video.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.with.member.model.service.MemberService;

@Controller
public class VideoController {
	
	@Autowired
	private MemberService ms;
	
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
	
}
