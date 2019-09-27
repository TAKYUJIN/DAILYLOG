package com.kh.with.admin.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.admin.model.service.AdminService;
import com.kh.with.admin.model.vo.Board;
import com.kh.with.admin.model.vo.Calculate;
import com.kh.with.admin.model.vo.ChannelBoard;
import com.kh.with.admin.model.vo.UserBoard;
import com.kh.with.block.model.vo.Blockch;
import com.kh.with.block.model.vo.Blockrep;
import com.kh.with.block.model.vo.Blockvi;
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
			
	
			for(int i = 0; i < userlist.size(); i++) {
			if(userlist.get(i).getChYn().equals("Y")) {
				userlist.get(i).setChYn("로거");
			}else if(userlist.get(i).getChYn().equals("N")) {
				userlist.get(i).setChYn("회원");
			}
			
			if(userlist.get(i).getStatus().equals("0")) {
				userlist.get(i).setStatus("N");
			}else if(userlist.get(i).getStatus().equals("1")) {
				userlist.get(i).setStatus("Y");
			}
			
			 if(userlist.get(i).getChNm().equals(null)) {
				 userlist.get(i).setChNm("-");
			 }
			}
			
					
			model.addAttribute("userlist", userlist);
			model.addAttribute("UserBoard", user);
			
			System.out.println("list ;;;;"+userlist);
			
			
			
			return "admin/adminUserlist";
		}
		
		//관리자  회원상세보기
		@RequestMapping(value="adminUserDetail.ad")
		public String selectDetail(UserBoard user1, Blockch ch, Blockrep rep, Blockvi vi, Model model) {
			ArrayList<UserBoard> userList =as.selectDetail(user1);
			
			ArrayList<Blockch> ch1 = as.selectDetail1(ch);
			
			ArrayList<Blockrep> rep1 = as.selectDetail2(rep);
			
			ArrayList<Blockvi> vi1 = as.selectDetail3(vi);
			
			model.addAttribute("userlist", userList);
			model.addAttribute("ch1", ch1);
			model.addAttribute("rep1", rep1);
			model.addAttribute("vi1", vi1);
			model.addAttribute("UserBoard", user1);
			model.addAttribute("Blockch", ch);
			model.addAttribute("Blockrep", rep);
			model.addAttribute("Blockvi", vi);
			
			System.out.println("list ;;;;"+userList);
			System.out.println("list ;;;;"+ch1);
			System.out.println("list ;;;;"+rep1);
			System.out.println("list ;;;;"+vi1);
			
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
	public String adminChannelView(ChannelBoard ch, Model model, HttpSession session) {
		  
		List<ChannelBoard> channelInfo = as.channelInfo();
		
		model.addAttribute("chInfo", channelInfo);
		model.addAttribute("ch", ch);
		
		System.out.println("chInfo : " + channelInfo);
		
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
	public String videoreportdetail(@ModelAttribute Report2 report, Model model,
			HttpSession session, HttpServletRequest request) {
		int reno = Integer.parseInt(request.getParameter("reno"));
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
	@RequestMapping(value = "chreportdetail.ad", method = RequestMethod.GET)
	public String chreportdetail(@ModelAttribute Report2 report, Model model,
			HttpSession session, HttpServletRequest request) {
		int reno = Integer.parseInt(request.getParameter("reno"));
		List<Report> chreportdetail = rs.chreportdetail(reno);

		model.addAttribute("chreportdetail", chreportdetail);
		System.out.println("model" + model);
		return "admin/chreportdetail";
	}
	@RequestMapping(value = "repreportdetail.ad", method = RequestMethod.GET)
	public String repreportdetail(@ModelAttribute Report2 report, Model model,
			HttpSession session, HttpServletRequest request) {
		int reno = Integer.parseInt(request.getParameter("reno"));
		List<Report> repreportdetail = rs.repreportdetail(reno);

		model.addAttribute("repreportdetail", repreportdetail);
		System.out.println("model" + model);
		System.out.println("repreportdetail" + repreportdetail);
		return "admin/repreportdetail";
	}
	
	
	
	
	// 관리자 동영상 신고 상세내역 ->신고처리
	//@RequestParam(value="reno",defaultValue="false") String r,
	
	@RequestMapping(value = "repreportdetail2.ad")
	public String repreportdetail2(HttpSession session, HttpServletRequest request) {
		System.out.println("controller start");
		Enumeration e = request.getParameterNames();
		
		while(e.hasMoreElements()) {
			System.out.println(e.nextElement());
		}
		
		int recount = Integer.parseInt(request.getParameter("recount"));
		int reno = Integer.parseInt(request.getParameter("reno"));
		Report2 report = new Report2();
		report.setReno(reno);
		report.setRecount(recount);
		int result = rs.videoreportupdate(report);
		if (result > 0) {
			//
			
		//	return "redirect:/videoreportdetail.ad?reno=${v.reno}";
			return "redirect:/repreportdetail.ad?reno="+reno;
			
		} else {
			return "redirect:/videoreportdetail.ad";
		}
	}

	@RequestMapping(value = "videoreportdetail2.ad")
	public String videoreportdetail2(HttpSession session, HttpServletRequest request) {
		System.out.println("controller start");
		Enumeration e = request.getParameterNames();
		
		while(e.hasMoreElements()) {
			System.out.println(e.nextElement());
		}
		
		int recount = Integer.parseInt(request.getParameter("recount"));
		int reno = Integer.parseInt(request.getParameter("reno"));
		Report2 report = new Report2();
		report.setReno(reno);
		report.setRecount(recount);
		int result = rs.videoreportupdate(report);
		if (result > 0) {
			//
			
		//	return "redirect:/videoreportdetail.ad?reno=${v.reno}";
			return "redirect:/videoreportdetail.ad?reno="+reno;
			
		} else {
			return "redirect:/videoreportdetail.ad";
		}
	}
	//채널 차단
	@RequestMapping(value = "chreportdetail2.ad")
	public String chreportdetail2(HttpSession session, HttpServletRequest request) {
		System.out.println("controller start");
		Enumeration e = request.getParameterNames();
		
		while(e.hasMoreElements()) {
			System.out.println(e.nextElement());
		}
		
		int recount = Integer.parseInt(request.getParameter("recount"));
		int reno = Integer.parseInt(request.getParameter("reno"));
		Report2 report = new Report2();
		report.setReno(reno);
		report.setRecount(recount);
		int result = rs.videoreportupdate(report);
		if (result > 0) {
			//
			
		//	return "redirect:/videoreportdetail.ad?reno=${v.reno}";
			return "redirect:/chreportdetail.ad?reno="+reno;
			
		} else {
			return "redirect:/videoreportdetail.ad";
		}
	}
	
	
	// 관리자 메인 페이지 이동 통계
	@RequestMapping(value = "adminStatisticsChart.ad")
	public String adminStatisticsChart(Model model) {
		int mMonth = as.monthMemberListCount();
		int mWeek = as.weekMemberListCount();
		int mDay = as.dayMemberListCount();
		int rMonth = as.monthRevenueListCount();
		int rWeek = as.weekRevenueListCount();
		int rDay = as.dayRevenueListCount();

		System.out.println(rDay);
		
		int rrMonth = (int) (rMonth * 0.0001);
		int rrWeek = (int) (rWeek * 0.0001);
		int rrDay = (int) (rDay * 0.0001);
		
		System.out.println(rrMonth);
		
		
		model.addAttribute("mMonth", mMonth);
		model.addAttribute("mWeek", mWeek);
		model.addAttribute("mDay", mDay);
		model.addAttribute("rrMonth", rrMonth);
		model.addAttribute("rrWeek", rrWeek);
		model.addAttribute("rrDay", rrDay);
		
		return "admin/adminStatisticsChart";
	}
	
	// 관리자 통계 페이지 이동
	@RequestMapping(value = "adminStatistics.ad")
	public String adminStatistics() {

		return "admin/adminStatistics";
	}


	
	
}
