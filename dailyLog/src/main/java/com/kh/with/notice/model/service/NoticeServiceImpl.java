package com.kh.with.notice.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.notice.model.dao.NoticeDao;
import com.kh.with.notice.model.vo.Chat;
import com.kh.with.notice.model.vo.ChatContent;
import com.kh.with.notice.model.vo.noticeEmail;
import com.kh.with.video.model.vo.Attachment;
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

	@Override
	public int noticeEmail(noticeEmail ne) {
		// TODO Auto-generated method stub
		return nd.noticeEmail(sqlSession, ne);
	}

	@Override
	public String selectUserImg(Map<String, Object> map) {
		
		return nd.selectUserImg(sqlSession, map);
	}

	//채팅
	@Override
	public int insertChat(int userNo) {
		return nd.insertChat(sqlSession, userNo);
	}

	@Override
	public int insertChatContent(ChatContent c) {
		return nd.insertChatContent(sqlSession, c);
	}

	@Override
	public int selectChatNo(int userNo) {
		return nd.selectChatNo(sqlSession, userNo);
	}

	//나의 문의내역
	@Override
	public ArrayList<Chat> selectUserQuestion(int userNo) {
		return nd.selectUserQuestion(sqlSession, userNo);
	}

	
	
	

	
}
