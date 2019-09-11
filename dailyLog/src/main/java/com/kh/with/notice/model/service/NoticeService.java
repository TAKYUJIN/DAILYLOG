package com.kh.with.notice.model.service;

import java.util.ArrayList;

import com.kh.with.admin.model.vo.Board;

public interface NoticeService {

	//공지사항 메소드
	ArrayList<Board> showNoticeList(Board board);

	//공지사항 상세내역
	Board noticeDetail(int bNo);
	
	

	

}
