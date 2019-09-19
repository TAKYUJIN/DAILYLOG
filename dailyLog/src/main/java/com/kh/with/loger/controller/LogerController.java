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
import com.kh.with.main.model.vo.VideoLike;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;
import com.kh.with.video.model.vo.Video;

@Controller
public class LogerController {
	@Autowired
	private LogerService ls;

	// 로거 동영상 페이지로 이동
	@RequestMapping(value="logerVideo.lo")
	public String selectLogerVideo(Model model, HttpSession session, Video v) {
		Member m = (Member) session.getAttribute("loginUser");

		ArrayList<Video> vList = ls.showLogerVideo(m);

		model.addAttribute("vList", vList);	
		
		
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

		int result = ls.updateLogerAccount(m);

		return "loger/selectLogerCalculate";
	}

	// 후원 내역 기간 선택 테스트용
	@RequestMapping(value="selectSupport.lo")
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
			@RequestParam(value = "todayDate", required = false) Date day, Support s, Calculate c, Model model,
			HttpServletResponse response) {
		
		response.setContentType("text/html;charset=UTF-8");
		Member m = (Member) session.getAttribute("loginUser");
		m.setMon(mon);
		m.setDay(day);
		
		//기간별 후원내역 조회의 총 금액
		ArrayList<Support> pList = ls.selectLogerSupportPrice(s, m);
		
		//loger정보 가져오기
		ArrayList<Loger> loger = ls.selectLogerInfo(m);
		
		int calPrice = 0;
		for(int i =0; i < pList.size(); i++){
			
			calPrice += pList.get(i).getSupPrice();
		
		}
				
		int calVAT = (int) (calPrice * 0.3);	//수수료
		int amountPrice = (int) (calPrice * 0.7);	//실수령액
		int userNo = m.getUserNo();
		int chNo = loger.get(0).getChNo();
		String accNm = loger.get(0).getAccNm();
		String bankNm = loger.get(0).getBankNm();
		String account = loger.get(0).getAccount();
		
		c.setUserNo(userNo);
		c.setCalPrice(calPrice);
		c.setCalVAT(calVAT);
		c.setAmountPrice(amountPrice);
		c.setAccNm(accNm);
		c.setBankNm(bankNm);
		c.setAccount(account);
		c.setChNo(chNo);
		
		//정산내역 insert
		int result = ls.insertLogerCalculate(c);
		
		//후원내역에 정산유무 update
		int result2 = ls.updateSupportCalculate(m);
		System.out.println(result2);
		
		if (result > 0 && result2 > 0) {
			model.addAttribute("msg", "정산 신청이 완료되셨습니다.");
		} 

		return "forward:/logerCalculate.lo";
	}

	// 로거스튜디오 이동
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
