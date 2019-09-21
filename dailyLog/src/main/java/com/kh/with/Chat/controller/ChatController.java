package com.kh.with.Chat.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.with.Chat.model.service.ChatService;
import com.kh.with.member.model.vo.Member;
import com.sun.javafx.logging.Logger;

@Controller
@SessionAttributes("loginUser") 
public class ChatController {
	/*private static final Logger logger=(Logger) LoggerFactory.getLogger(ChatController.class);
	
	@Autowired
	ChatService chatservice;
	
	@RequestMapping(value="chat.do",method= {RequestMethod.GET,RequestMethod.POST})
	public String chat (Model model,HttpServletRequest request) {
		
		((org.slf4j.Logger) logger).info("chat.do Run!!!  /Run Time:"+new Date());
		
		Member login =(Member)request.getSession().getAttribute("login");
		
		if(login ==null) {
			return "redirect:/login";
		}
		
		
		
		return null;
		
		
	}*/
	
	
	
	
	
	
	//친구 채팅
	@RequestMapping(value="FriendChat.mb",method=RequestMethod.GET)
	public String frichat(HttpSession session,Model model) {
		Member m = (Member) session.getAttribute("loginUser");
		
		model.addAttribute("m"+m);
		System.out.println("m333"+m);
System.out.println("model11"+model);
		return "friends/frichat";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
