package com.kh.with.loger.controller;

import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.loger.model.service.LogerService;
import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.member.model.vo.Member;

@Controller
public class LogerController {
	@Autowired
	private LogerService ls;

	//로거 동영상 페이지로 이동
	@RequestMapping(value="logerVideo.lo")
	public String selectLogerVideo() {
		return "loger/searchLogerVideo";
	}

	//로거 동영상 수정 페이지로 이동

	@RequestMapping(value="updateLogerVideo.lo")
	public String updateLogerVideo() {
		return "loger/updateLogerVideo";
	}

	//로거 -> 분석
	@RequestMapping(value="analysis.lo")
	public String analysisView() {
		return "loger/analysis";
	}


	//로거 분석 -> 수익
	@RequestMapping(value="anal_cal.lo")
	public String calView() {
		return "loger/anal_cal";
	}

	//로거 정산 페이지로 이동
	@RequestMapping(value="logerCalculate.lo")
	public String selectLogerCalculate(Calculate c, Support s, Model model, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		//로거 정산내역 조회
		ArrayList<Calculate> cList = ls.selectLogerCalculate(c, m);
		//로거 후원내역 조회
		ArrayList<Support> sList = ls.selectLogerSupport(s, m);
		//로거 마지막 계좌 조회
		ArrayList<Calculate> aList = ls.logerLastAccount(c, m);

		model.addAttribute("sList", sList);
		model.addAttribute("cList", cList);
		model.addAttribute("aList", aList);
		model.addAttribute("s", s);
		model.addAttribute("c", c);

		return "loger/logerCalculate";
	}

	//계좌 api로 연결
	@RequestMapping(value="accountApi.lo")
	public String selectLogerAccount() {	

		return "loger/accountApi";
	} 

	//계좌인증 후 후원 내역으로 연결 계좌 내역 저장
	@RequestMapping(value="logerCalculateApply.lo")
	public ModelAndView logerCalculateApply(@RequestBody ArrayList<Object> account,Support s, ModelAndView mv, HttpSession session) {	
		Member m = (Member) session.getAttribute("loginUser");
		ArrayList<Support> sList = ls.selectLogerSupport(s, m);
		System.out.println(account.toString());

		mv.addObject("sList", sList);
		mv.addObject("s", s);

		return mv;
	} 
	//후원 내역 기간 선택 테스트용
	@RequestMapping(value="lotest.lo")
	public String selectLogerCalculate() {
		return "loger/selectLogerCalculate";
	}

	
	//로거 기간별 후원 내역 조회
	@RequestMapping("/datepic.lo")
	 public String datepic(HttpSession session, HttpServletRequest request, @RequestParam(value="monthDate", required=false) Date mon, 
			 @RequestParam(value="todayDate", required=false) Date day, Support s, Model model){
		Member m = (Member) session.getAttribute("loginUser");
		System.out.println(m);
		m.setMon(mon);
		m.setDay(day);
		
		ArrayList<Support> dateList = ls.selectLogerSupportDate(s, m);
		model.addAttribute("dateList", dateList);
		model.addAttribute("s", s);
		
		
		
	  return "loger/selectLogerCalculate";
	 }
	

	//로거스튜디오 이동
	@RequestMapping(value="newHomeChannel.lo")
	public String newHomeChannel() {
		return "loger/newHomeChannel";
	}

	//로거스튜디오내 동영상으로 이동
	@RequestMapping(value="logerHomeAllVideo.lo")
	public String logerHomeAllVideo() {
		return "loger/logerHomeAllVideo";
	}
	//로거스튜디오내 정보로 이동
	@RequestMapping(value="logerHomeInfo.lo")
	public String logerHomeInfo() {
		return "loger/logerHomeInfo";

	}

	//로거스튜디오 - 채널설정으로 이동
	@RequestMapping(value="logerChannelSet.lo")
	public String logerChannelSet() {
		return "loger/logerChannelSet";
	}


	//로거채널개설
	@RequestMapping(value="createChannel.lo")
	public String insertcreateChannel(@ModelAttribute Member m, Model model,HttpServletRequest request, HttpSession session) {

		int userNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();
		String chNm = request.getParameter("chNm");
		String chInfo = request.getParameter("chInfo");


		System.out.println("로거정보가 들어왔나요::::" + userNo + chNm + chInfo);


		Loger loger = new Loger();
		loger.setUserNo(userNo);
		loger.setChNm(chNm);
		loger.setChInfo(chInfo);

		int result = ls.insertcreateChannel(loger);

		if(result > 0 ) {
			return "redirect:index.jsp";
		}else {
			model.addAttribute("msg", "채널개설 실패");
			return "common/errorPage";
		}	

	}

}


















