package com.kh.with.Chat.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.with.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser") 
public class ChatController {

	//친구 채팅
	@RequestMapping(value="FriendChat.mb",method=RequestMethod.GET)
	public String frichat(HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		
		
		return "friends/frichat";
	}
}
