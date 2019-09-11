package com.kh.with.notice.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.member.model.vo.Member;
import com.kh.with.notice.model.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService ns;

	
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
		
		
	//footer -> 채팅 1:1 문의로 이동
	@RequestMapping(value="noticeChattingQuestion.no")
	public String showNoticeChattingQuestion() {
		return "notice/noticeChattingQuestion";
	}
	
	//고객센터 나의 문의 내역로 이동
	@RequestMapping(value="selectNoticeQuestion.no")
	public String showSelectNoticeQuestion() {
		
		return "notice/selectNoticeQuestion";
	}

}
