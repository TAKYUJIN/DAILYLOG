package com.kh.with.notice.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.notice.model.vo.noticeEmail;
import com.kh.with.video.model.vo.Attachment;

public interface NoticeDao {
	
	//공지사항 리스트 
	ArrayList<Board> showNoticeList(SqlSessionTemplate sqlSession, Board board);

	//공지사항 상세내역
	Board noticeDetail(SqlSessionTemplate sqlSession, int bNo);

	int noticeEmail(SqlSessionTemplate sqlSession, noticeEmail ne);

	//공지사항 채팅 이미지 가져오기
	String selectUserImg(SqlSessionTemplate sqlSession, Map<String, Object> map);

	

}
