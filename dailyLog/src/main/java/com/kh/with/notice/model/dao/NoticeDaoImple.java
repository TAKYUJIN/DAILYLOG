package com.kh.with.notice.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.admin.model.vo.Board;

@Repository
public class NoticeDaoImple implements NoticeDao{

	//공지사항 리스트
	@Override
	public ArrayList<Board> showNoticeList(SqlSessionTemplate sqlSession, Board board) {

		ArrayList<Board> aboard = null;

		System.out.println("공지사항 dao까지 왔니?:: " + aboard);
		aboard = (ArrayList)sqlSession.selectList("Board.showNoticeList", board);

		return aboard;
	}

	//공지사항 상세내역
	@Override
	public Board noticeDetail(SqlSessionTemplate sqlSession, int bNo) {

		Board b = new Board();
		b.setbNo(bNo);
		Board result = sqlSession.selectOne("Board.noticeDetail",b);



		return result;
	}
}
