package com.kh.with.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	@RequestMapping(value="pVideo.no")
	public String showMemberJoinView() {

		return "notice/pVideo";
	}

	
}
