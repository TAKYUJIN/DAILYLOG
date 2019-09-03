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
	

	//home 클릭시 페이지로 이동
	@RequestMapping(value="home.mb")
	public String showhome() {
		return "main/main";
	}
	
	@RequestMapping(value="friends.mb")
	public String showfriends() {
		return "friends/addfriends";
	}
	
	//home 클릭시 페이지로 이동
	@RequestMapping(value="loger.mb")
	public String showLoger() {
		return "loger/logerHomeChannel";
	}
}
