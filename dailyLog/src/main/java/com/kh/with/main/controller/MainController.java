package com.kh.with.main.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.main.model.service.BoardService;
import com.kh.with.main.model.service.MailSendService;
import com.kh.with.main.model.service.regService;
import com.kh.with.main.model.vo.MailVo;
import com.kh.with.member.model.vo.Member;

@Controller
public class MainController {

	/*
	 * @Autowired private JavaMailSender Sender;
	 */
	
	
	
	@Autowired
	private regService reg_service;
	@Autowired
	private MailSendService mailSender;
	 
	@Inject
	 BoardService service;
	// 북마크페이지로 이동
	@RequestMapping(value="bookmark.mb")
	public String selectBookmark() {
		return "main/bookmark";
	}

	// 구독페이지로 이동
	@RequestMapping(value="subscribe.mb")

	public String subscribeList() {

		return "subscribe/subscribeList";
	}

	// 영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value="video.mb")

	public String showVideoView() {

		return "video/videoMain";
	}

	// home 클릭시 페이지로 이동
	//@RequestMapping(value="home.mb")
	//public String showhome() {
	//	return "main/main";
	//}

	 

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
	  
	 
	  @RequestMapping(value = "/main", method = RequestMethod.GET) 
	  public String key_alterConfirm(@RequestParam(value="userId", required=false) String userId, @RequestParam(value="status_yn", required=false) String status_yn) {
	  System.out.println("key_alterConfirm");
	  mailSender.alter_userKey_service(userId, status_yn); // mailsender의 경우 @Autowired
	  
	  return "friends/emailConfirm"; 
	  }

	  @RequestMapping(value = "List.mb", method = RequestMethod.GET) 
	  public ModelAndView videoimagelist(ModelAndView mav) throws Exception{
		  mav.setViewName("/friends/friendslist");
		 // List<MailVo> list=service.FriendList();
			mav.addObject("list", service.FriendList()); 
			System.out.println("mav"+mav);

			return mav;
	  }

	  
	/*
	 * @RequestMapping(value="FriendList.mb",method=RequestMethod.POST)
	 * 
	 * @ResponseBody
	 * 
	 * public HashMap<String, Object> FriendList(Model model) throws Exception{
	 * HashMap<String,Object> map=new HashMap<String, Object>();
	 * List<MailVo>list=service.FriendList(); map.put("list", list);
	 * System.out.println(list); System.out.println(map);
	 * 
	 * 
	 * return map;
	 * 
	 * }
	 */
	  
	  
	/*
	 * @RequestMapping(value="FriendList.mb",method=RequestMethod.POST)
	 * 
	 * @ResponseBody public void FriendList(Model model, HttpServletResponse
	 * response) throws Exception{
	 * 
	 * List<MailVo> list=service.FriendList();
	 * 
	 * model.addAttribute("m", list);
	 * 
	 * String list1= list.toString(); System.out.println("list1"+list1);
	 * response.getWriter().print(list1); }
	 */
	  
	  
	  @RequestMapping(value="FriendList.mb")
	 
	  public void FriendList(Model model, HttpServletResponse response) throws Exception{
		  List<MailVo>list=service.FriendList();
		  String list1= list.toString(); 
		//  System.out.println("list"+list);
		  System.out.println("list"+list1);
		  response.getWriter().print(list1);
		   
	  }
		  
	 	  
		  
		  // return list;
	 	//	  	
	//  }
		/*
		 * int index=0;
		 * 
		 * List<MailVo> list=service.FriendList();
		 * System.out.println("controller service:"+service);
		 * System.out.println("list1:"+list); model.addAttribute("list", list);
		 * 
		 * HashMap<String,Object>map=new HashMap<String, Object>(); map.put("list",
		 * list);
		 * 
		 * System.out.println("list3:"+list);
		 * 
		 * 
		 * model.addAttribute("m", list);
		 * 
		 * return map;
		 */
	  
 
	
	  
	// home 클릭시 페이지로 이동
	@RequestMapping(value = "loger.mb")
	public String showLoger() {
		return "loger/logerHomeChannel";
	}

	
	//알림이요...
//	@RequestMapping(value="notification1.mb")
//	public String showNotification(Model model,HttpSession session) {
//		Member m = (Member) session.getAttribute("loginUser");
//		model.addAttribute("m", m);
//		
//		return "main/notification";
//	}
//	
//	@RequestMapping(value="notification.mb")
//	@ResponseBody
//	public HashMap<String, Object> showNotification(HttpSession session, Member m) {
//		m = (Member) session.getAttribute("loginUser");
//		System.out.println(m);
//		
//		HashMap<String, Object> map = new HashMap<String, Object>();
//		map.put("m", m);
//		
//		return map;
//	}
	
}
