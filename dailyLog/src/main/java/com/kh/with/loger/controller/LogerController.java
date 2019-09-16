package com.kh.with.loger.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.loger.model.service.LogerService;
import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Loger2;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;

@Controller
public class LogerController {
	@Autowired
	private LogerService ls;

	// 로거 동영상 페이지로 이동
	@RequestMapping(value = "logerVideo.lo")
	public String selectLogerVideo() {
		return "loger/searchLogerVideo";
	}

	// 로거 동영상 수정 페이지로 이동

	@RequestMapping(value = "updateLogerVideo.lo")
	public String updateLogerVideo() {
		return "loger/updateLogerVideo";
	}

	// 로거 -> 분석
	@RequestMapping(value = "analysis.lo")
	public String analysisView() {
		return "loger/analysis";
	}

	// 로거 분석 -> 수익
	@RequestMapping(value = "anal_cal.lo")
	public String calView() {
		return "loger/anal_cal";
	}

	// 로거 정산 페이지로 이동
	@RequestMapping(value = "logerCalculate.lo")
	public String selectLogerCalculate(Calculate c, Support s, Model model, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		// 로거 정산내역 조회
		ArrayList<Calculate> cList = ls.selectLogerCalculate(c, m);
		// 로거 후원내역 조회
		ArrayList<Support> sList = ls.selectLogerSupport(s, m);
		// 로거 마지막 계좌 조회
		ArrayList<Calculate> aList = ls.logerLastAccount(c, m);

		model.addAttribute("sList", sList);
		model.addAttribute("cList", cList);
		model.addAttribute("aList", aList);
		model.addAttribute("s", s);
		model.addAttribute("c", c);

		return "loger/logerCalculate";
	}

	// 계좌 api로 연결
	@RequestMapping(value = "accountApi.lo")
	public String selectLogerAccount() {

		return "loger/accountApi";
	}

	// 계좌인증 후 후원 내역으로 연결 계좌 내역 저장
	@RequestMapping(value = "logerLastAccount.lo")
	public String logerCalculateApply(@RequestParam(value = "account", required = false) String account,
			@RequestParam(value = "accountNm", required = false) String accNm,
			@RequestParam(value = "bankcode", required = false) String bankNm, Support s, Model model,
			HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		System.out.println("오닝?");
		m.setAccount(account);
		m.setAccNm(accNm);

		if (bankNm.equals("020")) {
			m.setBankNm("우리은행");
		} else if (bankNm.equals("003")) {
			m.setBankNm("기업은행");
		} else if (bankNm.equals("004")) {
			m.setBankNm("국민은행");
		} else if (bankNm.equals("011")) {
			m.setBankNm("농협중앙회");
		} else if (bankNm.equals("081")) {
			m.setBankNm("하나은행");
		} else if (bankNm.equals("088")) {
			m.setBankNm("신한은행");
		}

		System.out.println(m.getAccount());
		System.out.println(m.getAccNm());
		System.out.println(m.getBankNm());

		int result = ls.updateLogerAccount(m);

		return "/loger/selectSupport.lo";
	}

	// 후원 내역 기간 선택 테스트용
	@RequestMapping(value = "selectSupport.lo")
	public String selectLogerCalculate() {

		return "loger/selectLogerCalculate";
	}

	// 로거 기간별 후원 내역 조회
	@RequestMapping(value="datepic.lo", produces="application/text; charset=UTF-8")
	public ModelAndView datepic(HttpSession session, HttpServletRequest request,
			@RequestParam(value = "monthDate", required = false) Date mon,
			@RequestParam(value = "todayDate", required = false) Date day, Support s, ModelAndView mv,
			HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
		Member m = (Member) session.getAttribute("loginUser");

		m.setMon(mon);
		m.setDay(day);

		ArrayList<Support> dateList = ls.selectLogerSupportDate(s, m);

		mv.addObject("dateList", dateList);
		mv.setViewName("jsonView");


		return mv;
	}

	// 후원 내역 기간 선택 후 정산 신청
	@RequestMapping(value="logerCalculateApply.lo")
	public String selectLogerCalculateApply(HttpSession session, HttpServletRequest request,
			@RequestParam(value = "monthDate", required = false) Date mon,
			@RequestParam(value = "todayDate", required = false) Date day, Support s, Model model,
			HttpServletResponse response) {
		
		response.setContentType("text/html;charset=UTF-8");
		Member m = (Member) session.getAttribute("loginUser");
		m.setMon(mon);
		m.setDay(day);
		
		System.out.println(mon);
		System.out.println(day);
		
		ArrayList<Support> pList = ls.selectLogetSupportPrice(s, m);
		model.addAttribute("pList", pList);
		
		System.out.println("pList    " + pList.size());
		
		int sum = 0;
		for(int i =0; i < pList.size(); i++){
			
		sum += pList.get(i).getSupPrice();
		
		}
		
		System.out.println("가격가격    " + sum);
		
//		 ArrayList<Integer> price = null;
//		
//		
//		for(int i = 0; i < pList.size(); i++) {
//			price = pList[i].supPrice;
//		}
		
//		int[] price = new int[pList.size()];
//	    for (int i=0; i < price.length; i++)
//	    {
//	        price[i] = pList[i].supPrice();
//	    }
//		
//		System.out.println(price);
		
		

		return "loger/logerCalculate";
	}

	// 로거스튜디오 이동(로거스튜디오 ,프로필사진, 채널명, 구독자수)
	@RequestMapping(value = "newHomeChannel.lo")
		public ModelAndView  newHomeChannel(ModelAndView mv,HttpSession session, 
				HttpServletRequest request, Model model){
			
			int userNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();
	
			System.out.println("loger:::" + userNo);
			
			Loger2 result = ls.newHomeChannel(userNo);
			
			System.out.println("상세내역이 보여지나요?" + result);
			
			mv.addObject("result", result); 
			
			mv.setViewName("loger/newHomeChannel"); 


			return mv; 

		
		
		
		
		
		/* return "loger/newHomeChannel"; */
	}

	// 로거스튜디오내 동영상으로 이동
	@RequestMapping(value = "logerHomeAllVideo.lo")
	public String logerHomeAllVideo() {
		return "loger/logerHomeAllVideo";
	}

	// 로거스튜디오내 정보로 이동
	@RequestMapping(value = "logerHomeInfo.lo")
	public String logerHomeInfo() {
		return "loger/logerHomeInfo";

	}

	// 로거스튜디오 - 채널설정으로 이동
	@RequestMapping(value = "logerChannelSet.lo")
	public String logerChannelSet() {
		return "loger/logerChannelSet";
	}

	// 로거채널개설
	@RequestMapping(value = "createChannel.lo")
	public String insertcreateChannel(@ModelAttribute Member m, Model model, HttpServletRequest request,
			HttpSession session) {

		int userNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();
		String chNm = request.getParameter("chNm");
		String chInfo = request.getParameter("chInfo");

		System.out.println("로거정보가 들어왔나요::::" + userNo + chNm + chInfo);

		Loger loger = new Loger();
		loger.setUserNo(userNo);
		loger.setChNm(chNm);
		loger.setChInfo(chInfo);

		int result = ls.insertcreateChannel(loger);

		if (result > 0) {
			return "redirect:index.jsp";
		} else {
			model.addAttribute("msg", "채널개설 실패");
			return "common/errorPage";
		}
	}

 

	/*
	 * //로거스튜디오 메인 select (프로필,채널명, 구독자)
	 * 
	 * @RequestMapping(value="logerChMain") public String logerChMain(HttpSession
	 * session, HttpServletRequest request, Model model){
	 * 
	 * int userNo = ((Member)
	 * request.getSession().getAttribute("loginUser")).getUserNo();
	 * 
	 * Loger loger = new Loger();
	 * 
	 * loger.setUserNo(userNo);
	 * 
	 * System.out.println("loger:::" + loger);
	 * 
	 * ArrayList<Loger> logerChMain = ls.logerChMain(loger);
	 * 
	 * System.out.println("결과값이 담겼나요?" + logerChMain);
	 * 
	 * return null;
	 * 
	 * 
	 * }
	 */
	//로거 신고내역
	@RequestMapping(value="logerdeclarationlist.lo")
	public String declarationlist(Report report,Model model,HttpSession session)
	{
		Member m = (Member) session.getAttribute("loginUser");
		
		// ArrayList<Report> reportcount =ls.reportcount(report,m);
	 ArrayList<Report> reportlist =ls.reportlist(report,m);
		 model.addAttribute("reportlist", reportlist);
		// model.addAttribute("reportcount", reportcount);
		// System.out.println("reportcount"+reportcount);
		return "loger/declarationlist";
		
	}
	 //채널 정지
	@RequestMapping(value="cstop.lo", method = RequestMethod.GET )
	public String cstop(@ModelAttribute Loger r,Model model,HttpServletRequest request,
			@RequestParam(name="userNo", required=false)int userNo,HttpSession session) {
	
		userNo=Integer.parseInt(request.getParameter("userNo"));
		r.setUserNo(userNo);
		ls.cstop(r);
		
		return "redirect:/cblacklist.ad";
		
	}		
		
		
		
		
		
		
		
		
		
}
