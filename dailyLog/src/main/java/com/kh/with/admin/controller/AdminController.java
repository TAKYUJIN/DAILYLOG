package com.kh.with.admin.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.admin.model.service.AdminService;
import com.kh.with.admin.model.vo.Board;
import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.member.model.vo.Member;

@Controller
public class AdminController {

	@Autowired
	private AdminService as;

	//관리자 정산 페이지 이동
	@RequestMapping(value="adminCalculate.ad")
	public String selectAdminCalculate() {
		return "admin/adminCalculate";
	}

	//관리자 채널 페이지 이동
	@RequestMapping(value="channelManage.ad")
	public String adminChannelView() {
		return "admin/channelManage";
	}

	//관리자 채널 페이지 이동
	@RequestMapping(value="channelDetail.ad")
	public String adminChannelDetail() {
		return "admin/channelDetail";
	}

	//관리자 공지사항 리스트 메소드 
	@RequestMapping(value="adminNoticeList.ad")
	public String adminNoticeList(HttpSession session, HttpServletRequest request, Model model) {
		
		int userNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();

		Board board = new Board();
		board.setUserNo(userNo);

		ArrayList<Board> adminNoticeList = as.adminNoticeList(board);


		model.addAttribute("adminNoticeList", adminNoticeList);

		return "admin/adminNoticeList";
	}

	
	//관리자 공지사항 작성 이동
	@RequestMapping(value="adminNoticeWrite.ad")
	public String adminNoticeWrite() {
		return "admin/adminNoticeWrite";

	}
	
	//관리자 공지사항 작성 insert
	@RequestMapping(value="noticeWriteAdmin.ad")
	public ModelAndView noticeWriteAdmin(HttpSession session, HttpServletRequest request, Model model) {
		int userNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();
		String bTitle = request.getParameter("bTitle"); 
		String bcontent = request.getParameter("bcontent"); 
		
		Board board = new Board();
		board.setUserNo(userNo);
		board.setbTitle(bTitle);
		board.setBcontent(bcontent);
	
		System.out.println("공지사항작성::::" + board);
		
		int result = as.noticeWriteAdmin(board);
		
	
		
		if(result > 0 ) {

			return  new ModelAndView("redirect:/adminNoticeList.ad");

		}else {
			model.addAttribute("msg", "공지사항 등록 실패");
			return  new ModelAndView("common/errorPage");
		}
		
		
	}
	
	//관리자 공지사항 수정 메소드 
	@RequestMapping(value="adminNoticeRevise.ad")
	public String adminNoticeRevise(HttpSession session, HttpServletRequest request, Model model) {
	
		
		
		
		
		
		
		
		return "admin/adminNoticeRevise";

	}


	//관리자 채팅 대기 페이지
	@RequestMapping(value="adminChatting.ad")
	public String adminChatting() {
		return "admin/adminChatting";
	}

	//관리자 채팅 완료 페이지
	@RequestMapping(value="adminChattingComplete.ad")
	public String adminChattingComplete() {

		return "admin/adminChattingComplete";

	}


}
