package com.kh.with.loger.controller;

import java.util.ArrayList;


import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.with.loger.model.service.LogerService;
import com.kh.with.loger.model.vo.Calculate;
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
		ArrayList<Calculate> cList = ls.selectLogerCalculate(c, m);
		ArrayList<Support> sList = ls.selectLogerSupport(s, m);
		ArrayList<Calculate> aList = ls.logerLastAccount(c, m);
		
		model.addAttribute("sList", sList);
		model.addAttribute("cList", cList);
		model.addAttribute("aList", aList);
		model.addAttribute("s", s);
		model.addAttribute("c", c);

		return "loger/logerCalculate";
	}

		@RequestMapping(value="accountApi.lo")
	public String selectLogerAccount() {		
			

		return "loger/accountApi";
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
}


