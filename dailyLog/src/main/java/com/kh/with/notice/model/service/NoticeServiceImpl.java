package com.kh.with.notice.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.notice.model.dao.NoticeDao;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private NoticeDao nd;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	//공지사항 리스트
	@Override
	public ArrayList<Board> showNoticeList(Board board) {
		
		System.out.println("공지사항 서비스로 왔나요???" + board);
		
		return nd.showNoticeList(sqlSession, board);
	}

	//공지사항 상세내역
	@Override
	public Board noticeDetail(int bNo) {
		
		return nd.noticeDetail(sqlSession, bNo);
	}

	
	
	

	
}
