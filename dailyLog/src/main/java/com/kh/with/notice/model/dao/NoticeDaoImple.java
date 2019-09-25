package com.kh.with.notice.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.notice.model.vo.noticeEmail;

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

	@Override
	public int noticeEmail(SqlSessionTemplate sqlSession, noticeEmail ne) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Notice.noticeEmail",ne);
	}
}
