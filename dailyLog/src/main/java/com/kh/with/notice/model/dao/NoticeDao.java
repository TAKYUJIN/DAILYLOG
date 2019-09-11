package com.kh.with.notice.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.admin.model.vo.Board;

public interface NoticeDao {
	
	//공지사항 리스트 
	ArrayList<Board> showNoticeList(SqlSessionTemplate sqlSession, Board board);

	//공지사항 상세내역
	Board noticeDetail(SqlSessionTemplate sqlSession, int bNo);

	

}
