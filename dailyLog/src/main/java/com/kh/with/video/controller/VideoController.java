package com.kh.with.video.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.service.VideoService;

@Controller
@SessionAttributes("loginUser")
public class VideoController {
	
	@Autowired
	private VideoService vs;
	
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
	
	//동영상 페이지 포인트 조회
	@RequestMapping(value="selectPoint.vd")
	public String selectPoint(HttpSession session, Model model) {
		System.out.println("selectPoint in !");
		
		Member m = (Member) session.getAttribute("loginUser");
		
		int point = vs.selectPoint(m);
		
		model.addAttribute("point", point);
		
		return "video/videoMain";
	}
	
}
