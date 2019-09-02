package com.kh.with.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	//북마크페이지로 이동
	@RequestMapping(value="bookmark.mb")
	public String selectBookmark() {
		return "main/bookmark";
	}

	//구독페이지로 이동
	@RequestMapping(value="subscribe.mb")

	public String subscribeList() {
		
		return "subscribe/subscribeList";
	}
}
