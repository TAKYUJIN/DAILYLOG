package com.kh.with.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

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
	@RequestMapping(value="adminnoticeList.ad")
	public String adminNoticeList() {
		return "admin/adminnoticeList";
	}
	
	//관리자 공지사항 작성 메소드
	@RequestMapping(value="adminNoticeWrite.ad")
	public String adminNoticeWrite() {
		return "admin/adminNoticeWrite";
	
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

	
	//관리자 공지사항 수정 메소드 
	@RequestMapping(value="adminNoticeRevise.ad")
	public String adminNoticeRevise() {
		return "admin/adminNoticeRevise";

	}
}
