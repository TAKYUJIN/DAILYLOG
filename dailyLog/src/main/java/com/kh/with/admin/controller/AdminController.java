package com.kh.with.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	//관리자 정산 페이지 이동
	@RequestMapping(value="adminCalculate.ad")
	public String selectAdminCalculate() {
		System.out.println("오긴 오니?");
		return "admin/adminCalculate";
	}
	
	//관리자 공지사항 리스트 
	@RequestMapping(value="adminnoticeList.ad")
	public String adminNoticeList() {
		return "admin/adminnoticeList";
	}
	
	//관리자 공지사항 작성
	@RequestMapping(value="adminNoticeWrite.ad")
	public String adminNoticeWrite() {
		System.out.println("공지사항작성왔어?");
		return "admin/adminNoticeWrite";
	
	}
}
