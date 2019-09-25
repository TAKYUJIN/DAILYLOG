package com.kh.with.notice.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.notice.model.vo.noticeEmail;

public interface NoticeService {

	//공지사항 메소드
	ArrayList<Board> showNoticeList(Board board);

	//공지사항 상세내역
	Board noticeDetail(int bNo);

	int noticeEmail(noticeEmail ne);
	
	

	

}
