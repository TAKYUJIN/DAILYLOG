package com.kh.with.notice.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.notice.model.vo.noticeEmail;
import com.kh.with.video.model.vo.Attachment;

public interface NoticeService {

	//공지사항 메소드
	ArrayList<Board> showNoticeList(Board board);

	//공지사항 상세내역
	Board noticeDetail(int bNo);

	int noticeEmail(noticeEmail ne);

	//공지사항 채팅 이미지 가져오기
	String selectUserImg(Map<String, Object> map);
	
	

	

}
