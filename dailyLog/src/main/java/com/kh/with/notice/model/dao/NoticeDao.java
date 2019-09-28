package com.kh.with.notice.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.notice.model.vo.Chat;
import com.kh.with.notice.model.vo.ChatContent;
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

	//고객센터 채팅
	int insertChat(SqlSessionTemplate sqlSession, int userNo);
	int insertChatContent(SqlSessionTemplate sqlSession, ChatContent c);
	int selectChatNo(SqlSessionTemplate sqlSession, int userNo);

	//고객센터 나의 문의내역
	ArrayList<Chat> selectUserQuestion(SqlSessionTemplate sqlSession, int userNo);

	

}
