package com.kh.with.main.controller;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@Autowired
	private JavaMailSender mailSender;

	// 북마크페이지로 이동
	@RequestMapping(value = "bookmark.mb")
	public String selectBookmark() {
		return "main/bookmark";
	}

	// 구독페이지로 이동
	@RequestMapping(value = "subscribe.mb")

	public String subscribeList() {

		return "subscribe/subscribeList";
	}

	// 영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value = "video.mb")

	public String showVideoView() {

		return "video/videoMain";
	}

	// home 클릭시 페이지로 이동
	@RequestMapping(value = "home.mb")
	public String showhome() {
		return "main/main";
	}

	@RequestMapping(value = "friends.mb")
	public String showfriends() {
		return "friends/friendslist";
	}

	//메일 보내기
	  @RequestMapping(value="mailSending.mb") 
	  public String mailSending(HttpServletRequest request) {
		   String setfrom="";
		   String tomail =request.getParameter("tomail");
		   String title =request.getParameter("title");
		   String content =request.getParameter("content");
		   
		try {
			MimeMessage message =mailSender.createMimeMessage();
			MimeMessageHelper messageHelper;
			messageHelper = new MimeMessageHelper(message,true,"UTF-8");
			   messageHelper.setFrom(setfrom);
			   messageHelper.setTo(tomail);
			   messageHelper.setSubject(title);
			   messageHelper.setText(content);
			   mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
			/*
			 * e.printStackTrace();
			 */		}
		    
	  return "friends/addfriends"; }
	 

}
