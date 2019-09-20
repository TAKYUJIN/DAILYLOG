package com.kh.with.admin.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.admin.model.service.AdminService;
import com.kh.with.admin.model.vo.Board;
import com.kh.with.admin.model.vo.Calculate;
import com.kh.with.admin.model.vo.UserBoard;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.service.ReportService;
import com.kh.with.report.model.vo.Report;
import com.kh.with.report.model.vo.Report2;

@Controller
@SessionAttributes("loginUser")

public class AdminController {

	@Autowired
	private AdminService as;
	@Autowired
	private ReportService rs;
	//관리자 회원관리 페이지
		@RequestMapping(value="adminUser.ad")
		public String selectAdminUser(UserBoard user , Model model 
				) {
			ArrayList<UserBoard>  userlist = as.selectAdminUser(user);
			
			model.addAttribute("userlist", userlist);
			model.addAttribute("UserBoard", user);
			
			System.out.println("list ;;;;"+userlist);
			
			
			
			return "admin/adminUserlist";
		}
		
		//관리자  회원상세보기
		@RequestMapping(value="adminUserDetail.ad")
		public String selectDetail(UserBoard user, Model model) {
			ArrayList<UserBoard> user1 =as.selectDetail(user);
			
			model.addAttribute("user1", user1);
			model.addAttribute("UserBoard", user);
			
			System.out.println("list ;;;;"+user1);
			
			return "admin/UserDetail";
		}

	// 관리자 정산 페이지 이동
	@RequestMapping(value = "adminCalculate.ad")
	public String selectAdminCalculate(Calculate c, Model model) {

		ArrayList<Calculate> cList = as.selectAdminCalculate();

		model.addAttribute("cList", cList);
		model.addAttribute("c", c);

		return "admin/adminCalculate";
	}

	// 관리자 정산 대기 -> 완료
	@RequestMapping(value = "calculateApply.ad")
	public String updateCalculateApply(Calculate c, Model model, HttpServletRequest request) {

		String aaa = request.getParameter("chk_list");
		String[] calNo = aaa.split(",");

		for (int i = 0; i < calNo.length; i++) {
			int cal = Integer.parseInt(calNo[i].toString());
			System.out.println(cal);
			int result = as.updateCalculateApply(cal);
		}

		return "forward:/adminCalculate.ad";
	}
	
	//관리자 정산페이지 정산유무 검색
		@RequestMapping(value="searchCalculate.ad")
		public String searchCalculate(Calculate c, Model model, HttpServletRequest request) {
			
			String userNm = request.getParameter("userNm");
			String selectCal[] = request.getParameterValues("calTY");
			String select = selectCal[0];
			
			System.out.println(select);
			
			ArrayList<Calculate> cList = null;
			
			if(!select.equals("")) {
				if(!userNm.equals("")) {
					if(select.equals("wait")) {
						cList = as.searchWaitAll(userNm);					
					}else if(select.equals("success")) {
						cList = as.searchSuccessAll(userNm);
					}
				}else if(userNm.equals("")) {
					if(select.equals("wait")) {
						cList = as.searchWait();
					}else if(select.equals("success")) {
						cList = as.searchSuccess();
					}				
				}
			}else if(select.equals("")) {
				if(!userNm.equals("")) {
					cList = as.searchUserNm(userNm);
				}
			}
			model.addAttribute("cList", cList);

			
			return "admin/adminCalculate";
		}
	/*
	 * Report2 report = new Report2(); List<Object> ublacklist =
	 * as.ublacklist(report);
	 * 
	 * System.out.println("ublacklist" + ublacklist);
	 * 
	 * model.addAttribute("ublacklist", ublacklist);
	 */
		
	// 관리자 채널 페이지 이동
	@RequestMapping(value = "channelManage.ad")
	public String adminChannelView(Model model, HttpSession session) {
		  
//		List<Object> channelInfo = as.channelInfo();
		List<Object> calInfo = as.calInfo();
		List<Object> reportInfo = as.reportInfo();
		
	//	model.addAttribute("channelInfo", channelInfo);
		model.addAttribute("calInfo", calInfo);
		model.addAttribute("reportInfo", reportInfo);
		
		//System.out.println("channelInfo : " + channelInfo);
		System.out.println("calInfo : " + calInfo);
		System.out.println("reportInfo : " + reportInfo);
		
		
		return "admin/channelManage";
	}

	// 관리자 채널 페이지 이동
	@RequestMapping(value = "channelDetail.ad")
	public String adminChannelDetail() {
		return "admin/channelDetail";
	}

	// 관리자 공지사항 리스트 메소드
	@RequestMapping(value = "adminNoticeList.ad")
	public String adminNoticeList(HttpSession session, HttpServletRequest request, Model model) {

		int userNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();

		Board board = new Board();
		board.setUserNo(userNo);

		ArrayList<Board> adminNoticeList = as.adminNoticeList(board);

		model.addAttribute("adminNoticeList", adminNoticeList);

		return "admin/adminNoticeList";
	}

	// 관리자 공지사항 작성 이동
	@RequestMapping(value = "adminNoticeWrite.ad")
	public String adminNoticeWrite() {
		return "admin/adminNoticeWrite";

	}

	// 관리자 공지사항 작성 insert
	@RequestMapping(value = "noticeWriteAdmin.ad")
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

		if (result > 0) {

			return new ModelAndView("redirect:/adminNoticeList.ad");

		} else {
			model.addAttribute("msg", "공지사항 등록 실패");
			return new ModelAndView("common/errorPage");
		}

	}

	// 관리자 공지사항 상세내역
	@RequestMapping(value = "adminNoticeRevise.ad")
	public ModelAndView adminNoticeRevise(ModelAndView mv, HttpSession session, HttpServletRequest request) {

		int bNo = Integer.parseInt(request.getParameter("bNo"));

		Board result = as.adminNoticeRevise(bNo);

		mv.addObject("result", result);
		mv.setViewName("admin/adminNoticeRevise"); // 페이지가 바뀌면서 위의 값도 넘겨줌

		return mv;

	}

	// 관리자 공지사항 상세내역 수정
	@RequestMapping(value = "adminNoticeChange.ad")
	public ModelAndView adminNoticeChange(ModelAndView mv, HttpSession session, HttpServletRequest request,
			Model model) {
		String bTitle = request.getParameter("bTitle");
		String bcontent = request.getParameter("bcontent");
		int bNo = Integer.parseInt(request.getParameter("bNo"));

		Board board = new Board();
		board.setbNo(bNo);
		board.setbTitle(bTitle);
		board.setBcontent(bcontent);

		int result = as.adminNoticeChange(board);

		mv.setViewName("admin/adminNoticeWrite");

		return mv;

	}

	// 공지사항 삭제
	@RequestMapping(value = "adminNoticeDelete.ad")
	public ModelAndView adminNoticeDelete(ModelAndView mv, HttpSession session, HttpServletRequest request,
			Model model) {

		int bNo = Integer.parseInt(request.getParameter("bNo"));

		int result = as.adminNoticeDelete(bNo);

		System.out.println("삭제되었나요:" + result);

		mv.setViewName("admin/adminNoticeList");

		return mv;

	}

	// 관리자 채팅 대기 페이지
	@RequestMapping(value = "adminChatting.ad")
	public String adminChatting() {
		return "admin/adminChatting";
	}

	// 관리자 채팅 완료 페이지
	@RequestMapping(value = "adminChattingComplete.ad")
	public String adminChattingComplete() {

		return "admin/adminChattingComplete";

	}

	// 관리자 신고관리
	@RequestMapping(value = "reportmanage.ad")
	public String reportmanage() {
		return "admin/reportmanage";
	}

	// 관리자 신고내역
	@RequestMapping(value = "reportlist.ad")
	public String reportlist(HttpServletRequest request, Model model, HttpSession session) {

		Report report = new Report();
		List<Object> videoreportlist = as.videoreportlist(report);
		System.out.println("videoreportlist" + videoreportlist);
		List<Object> chreportlist = as.chreportlist(report);
		List<Object> repreportlist = as.repreportlist(report);

		model.addAttribute("videoreportlist", videoreportlist);
		model.addAttribute("chreportlist", chreportlist);
		model.addAttribute("repreportlist", repreportlist);
		return "admin/reportlist";
	}

	// 관리자 회원 블랙 리스트
	@RequestMapping(value = "ublacklist.ad")
	public String ublacklist(HttpServletRequest request, Model model, HttpSession session) {
		Report2 report = new Report2();
		List<Object> ublacklist = as.ublacklist(report);

		System.out.println("ublacklist" + ublacklist);

		model.addAttribute("ublacklist", ublacklist);

		return "admin/ublacklist";
	}
	

	// 관리자 채널 블랙 리스트
	@RequestMapping(value = "cblacklist.ad")
	public String cblacklist(HttpServletRequest request, Model model, HttpSession session) {
		Report2 report = new Report2();
		List<Object> cblacklist = as.cblacklist(report);
		List<Object> vblacklist = as.vblacklist(report);
		System.out.println("cblacklist" + cblacklist);
		model.addAttribute("cblacklist", cblacklist);
		model.addAttribute("vblacklist", vblacklist);
		return "admin/cblacklist";
	}

	// 관리자 동영상,채널,댓글 신고 내역
	@RequestMapping(value = "videoreportdetail.ad", method = RequestMethod.GET)
	public String videoreportdetail(@ModelAttribute Report2 report, @RequestParam("reno") int reno, Model model,
			HttpSession session, HttpServletRequest request) {

		List<Report> videoreportdetail = rs.videoreportdetail(reno);
		List<Report> chreportdetail = rs.chreportdetail(reno);
		List<Report> repreportdetail = rs.repreportdetail(reno);

		model.addAttribute("videoreportdetail", videoreportdetail);
		model.addAttribute("chreportdetail", chreportdetail);
		model.addAttribute("repreportdetail", repreportdetail);
		System.out.println("model" + model);
		System.out.println("repreportdetail" + repreportdetail);
		return "admin/videoreportdetail";
	}

	// 관리자 동영상 신고 상세내역 ->신고처리

	@RequestMapping(value = "videoreportdetail2.ad", method = RequestMethod.POST)
	public String videoreportdetail2(Model model, HttpSession session, HttpServletRequest request) {

		int reno = Integer.parseInt(request.getParameter("reno"));
		System.out.println("reno1" + reno);
		/*
		 * int vNo =Integer.parseInt(request.getParameter("vNo")); String vTitle=
		 * request.getParameter("vTitle"); String userNm=request.getParameter("userNm");
		 */
		int recount = Integer.parseInt(request.getParameter("recount"));
		/*
		 * String redt=request.getParameter("redt"); String rewhy
		 * =request.getParameter("rewhy");
		 */

		Report2 report = new Report2();

		report.setReno(reno);
		report.setRecount(recount);
		/*
		 * report.setvNo(vNo); report.setvTitle(vTitle); report.setUserNm(userNm);
		 * report.setRedt(redt); report.setRewhy(rewhy);
		 */
		int result = rs.videoreportupdate(report);

		if (result > 0) {
			return "redirect:/videoreportdetail.ad";
		} else {
			return "redirect:/videoreportdetail.ad";
		}
	}

	/*
	 * @RequestMapping(value="videoreportdetail2.ad",method=RequestMethod.POST)
	 * public String videoreportupdate( @ModelAttribute Report2 report) { int
	 * videoreportupdate =rs.videoreportupdate(report);
	 * 
	 * if(videoreportupdate>0) {
	 * 
	 * return "redirect:/videoreportdetail.ad"; }else { return "common/errorPage";
	 * 
	 * }
	 * 
	 * }
	 */
	
	
}
