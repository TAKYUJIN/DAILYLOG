package com.kh.with.main.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.with.main.model.service.BoardService;
import com.kh.with.main.model.service.MailSendService;
import com.kh.with.main.model.service.regService;
import com.kh.with.main.model.vo.MailVo;

@Controller
@RequestMapping("/board/*")
public class MainController {
	/*
	 * @Autowired private JavaMailSender Sender;
	 */
	
	@Autowired
	private regService reg_service;
	@Autowired
	private MailSendService mailSender;
	 @Inject
	    private BoardService service;
	
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

	// 메일 보내기

	/*
	 * @RequestMapping(value = "mailSending.mb") public String
	 * mailSending(HttpServletRequest request) {
	 * 
	 * String setfrom = "heejung9655@gmail.com"; String tomail =
	 * request.getParameter("tomail"); // 받는 사람 이메일 String title =
	 * request.getParameter("title"); // 제목 String content =
	 * request.getParameter("content"); // 내용
	 * 
	 * try { MimeMessage message = mailSender.createMimeMessage(); MimeMessageHelper
	 * messageHelper = new MimeMessageHelper(message,true, "UTF-8");
	 * 
	 * messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
	 * messageHelper.setTo(tomail); // 받는사람 이메일 messageHelper.setSubject(title); //
	 * 메일제목은 생략이 가능하다 messageHelper.setText(content); // 메일 내용
	 * 
	 * mailSender.send(message); } catch (Exception e) { System.out.println(e); }
	 * 
	 * return "main/main"; }
	 */

	
	  @RequestMapping(value = "mailSending.mb",method=RequestMethod.POST)
	  public String mailSending(MailVo MailVo,Model model,HttpServletRequest request) {
		  String userId = request.getParameter("userId");
		 System.out.println("userId"+userId); 
		 System.out.println("controller1");
	  System.out.println("MailVo"+ MailVo);
	  
	  reg_service.userReg_service(MailVo);
	  System.out.println("controller2");
	  
	  mailSender.mailSendWithUserKey(MailVo.getFriId(),MailVo.getUserId(), request);
	  System.out.println("friId:"+MailVo.getFriId());
	  
	  return "redirect:/"; }
	  
	 
	  @RequestMapping(value = "home.mb", method = RequestMethod.GET) 
	  public String key_alterConfirm(@RequestParam(value="userId", required=false) String userId, @RequestParam(value="status_yn", required=false) String status_yn) {
	  System.out.println("key_alterConfirm");
	  mailSender.alter_userKey_service(userId, status_yn); // mailsender의 경우 @Autowired
	  
	  return "friends/emailConfirm"; 
	  }

	  
	/*
	 * @RequestMapping(value="mailSending.mb",method=RequestMethod.GET) pubilc
	 * String FriendsList(Mailvo mailVo,Model model) { List<MailVo> list
	 * =service.FriendsList(mailVo); model.addAttribute("list", list);
	 * 
	 * return "common/mainBar"; }
	 */
	  
	  @RequestMapping(value="FriendsList.mb",method=RequestMethod.GET) 
	   public String FriendsList(MailVo mailVo,Model model){
		System.out.println("friendslist");
		
		  List<MailVo> list=service.FriendsList(mailVo);
		  model.addAttribute("list", list);
		  
		return "common/mainBar";
		  
	  }
	// home 클릭시 페이지로 이동
	@RequestMapping(value = "loger.mb")
	public String showLoger() {
		return "loger/logerHomeChannel";
	}

	
	@RequestMapping(value="notification.mb")
	public String showNotification() {
		
		return "main/test";
	}
}
