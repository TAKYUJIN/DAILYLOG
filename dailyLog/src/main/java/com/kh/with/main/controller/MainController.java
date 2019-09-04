package com.kh.with.main.controller;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.with.main.model.vo.MailVo;
 
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


	//home 클릭시 페이지로 이동
	@RequestMapping(value="home.mb")
	public String showhome() {
		return "main/main";
	}

	@RequestMapping(value = "friends.mb")
	public String showfriends() {
		return "friends/friendslist";
	}


	//메일 보내기
	  
	 
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
	
	
	
	
	/*
	 * @RequestMapping(value = "mailSending.mb",method=RequestMethod.POST) public
	 * String mailSending(MailVo MailVo,Model model,HttpServletRequest request) {
	 * 
	 * String setfrom = "heejung9655@gmail.com"; String FriId =
	 * request.getParameter("FriId"); // 받는 사람 이메일 String title =
	 * request.getParameter("title"); // 제목 String content =
	 * request.getParameter("content"); // 내용
	 */ 
	
	
		/*
		 * mailSender.userReg_service(FriId);
		 */
	
	
	
	/*
	 * mailSender.mailSendWithUserKey(MailVo.getFriId(),request); try { MimeMessage
	 * message = mailSender.createMimeMessage(); MimeMessageHelper messageHelper =
	 * new MimeMessageHelper(message,true, "UTF-8");
	 * 
	 * messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
	 * messageHelper.setTo(FriId); // 받는사람 이메일 messageHelper.setSubject(title); //
	 * 메일제목은 생략이 가능하다 messageHelper.setText(content); // 메일 내용
	 * 
	 * mailSender.send(message); } catch (Exception e) { System.out.println(e); }
	 * 
	 * return "redirect:/"; }
	 * 
	 * @RequestMapping(value = "", method = RequestMethod.GET) public String
	 * key_alterConfirm(@RequestParam("FriId") String
	 * FriId, @RequestParam("user_key") String key) {
	 * 
	 * mailSender.alter_userKey_service(FriId, key); // mailsender의 경우 @Autowired
	 * 
	 * return "main/main"; }
	 */

	
	//home 클릭시 페이지로 이동
	@RequestMapping(value="loger.mb")
	public String showLoger() {
		return "loger/logerHomeChannel";
	}

}
