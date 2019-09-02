package com.kh.with.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	
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
}
