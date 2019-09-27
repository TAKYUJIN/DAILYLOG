package com.kh.with.notice.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.member.model.vo.Member;
import com.kh.with.notice.model.service.NoticeService;
import com.kh.with.notice.model.vo.noticeEmail;
import com.kh.with.video.model.service.VideoService;
import com.kh.with.video.model.vo.Attachment;

@Controller
@SessionAttributes("loginUser")
public class NoticeController {

	@Autowired
	private NoticeService ns;
    @Autowired
    private JavaMailSender mailSender;
	
	//메인 -> 이용약관
	@RequestMapping(value="terms.no")
	public String showTermsView() {
		
		return "notice/terms";
	}
	
	//메인 -> 정책
	@RequestMapping(value="policy.no")
	public String showPolicyView() {
		
		return "notice/policy";
	}
	
	//정책 -> 동영상 정책
	@RequestMapping(value="pVideo.no")
	public String showPvideoView() {
		

	
		return "notice/pVideo";
	}

	
	//정책 -> 저작권 정책
	@RequestMapping(value="pCopyright.no")
	public String showPcopyrightView() {
		
		return "notice/pCopyright";
	}
	
	//정책 -> 법적정책
	@RequestMapping(value="pLegal.no")
	public String showPlegelView() {
		
		return "notice/pLegal";
	}
	
	//정책 -> 신고 정책 
	@RequestMapping(value="pReporting.no")
	public String showPreportingView() {
		
		return "notice/pReporting";
	}
	

	//footer -> 자주 찾는 질문으로 이동
	@RequestMapping(value="noticeMain.no")
	public String showNoticeMain() {
		
		return "notice/noticeMain";
	}
	
	//footer -> 공지사항으로 이동
	@RequestMapping(value="noticeList.no")
	public String showNoticeList(HttpSession session, HttpServletRequest request, Model model) {
		
		int userNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();
		Board board = new Board();
		board.setUserNo(userNo);
		
		ArrayList<Board> showNoticeList = ns.showNoticeList(board);
		
		System.out.println("결과값이 담겼나요?" + showNoticeList);
		
		model.addAttribute("showNoticeList", showNoticeList);


		return "notice/noticeList";
	}
		
	
	//공지사항 상세내역 
	@RequestMapping(value="noticeDetail.no")
	
	public ModelAndView  noticeDetail(ModelAndView mv, HttpSession session, HttpServletRequest request) {

		int bNo = Integer.parseInt(request.getParameter("bNo"));
		
		System.out.println("공지사항 상세내역에 들어왔니?" + bNo);
		
		Board result = ns.noticeDetail(bNo);
		
		System.out.println("상세내역이 보여지나요?" + result);
		
		

		mv.addObject("result", result); 
		mv.setViewName("notice/NoticeDetail"); 


		return mv; 

		
	}
	
	
	
	
	//footer -> 이메일 의견 보내기로 이동
//		@RequestMapping(value="noticeEmailQuestion.no")
//		public String showNoticeQuestion() {
//			
//			return "notice/noticeEmailQuestion";
//	}
		
	@Autowired
	private VideoService vs;
	//footer -> 채팅 1:1 문의로 이동
	@RequestMapping(value="noticeChattingQuestion.no")
	public String showNoticeChattingQuestion(HttpSession session, HttpServletRequest request, Model model) {
		Member m = (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();


		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userNo", userNo);
		
		/* ArrayList<Attachment> aList = ns.selectUserImg(userNo); */
		String userImg = ns.selectUserImg(map);
		System.out.println(userImg);
		model.addAttribute("userImg", userImg);
		
		
		return "notice/noticeChattingQuestion";
	}
	@RequestMapping(value="insertChatting.no")
	public String insertChatting() {
		
		return "notice/noticeChattingQuestion";
	}
	
	//고객센터 나의 문의 내역로 이동
	@RequestMapping(value="selectNoticeQuestion.no")
	public String showSelectNoticeQuestion() {
		
		return "notice/selectNoticeQuestion";
	}
	
	@RequestMapping(value="noticeEmail.no")
	public String noticeEmail( ) {
		return "notice/noticeEmail";
	}
	
	
	@RequestMapping(value="noticeEmailsending.no")
	public String noticeEmailsending(HttpServletRequest request,Member m,HttpSession session,noticeEmail ne) {
			String userId=request.getParameter("userId");
			String tomail =request.getParameter("tomail");
		String title =request.getParameter("title");
		String content =request.getParameter("content");
		
		
		
		try {
			MimeMessage message =mailSender.createMimeMessage();
			MimeMessageHelper messageHelper;
			messageHelper = new MimeMessageHelper(message,true,"UTF-8");
			messageHelper.setFrom(userId);
			messageHelper.setTo(tomail);
			messageHelper.setSubject(title);
			messageHelper.setText(content);
			
			mailSender.send(message);
			
		} catch (Exception e) {
				System.out.println(e);
		
		}
		ne.setUserId(userId);
		ne.setTomail(tomail);
		ne.setTitle(title);
		ne.setContent(content);
		
		
	    int list =ns.noticeEmail(ne);
		return "redirect:/noticeEmail.no";
		
		
	}
	

}
