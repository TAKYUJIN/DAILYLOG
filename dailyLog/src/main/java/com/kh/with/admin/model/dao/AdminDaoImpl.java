package com.kh.with.admin.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.report.model.vo.Report;



@Repository
public class AdminDaoImpl implements AdminDao {

	//공지사항 리스트 select 
	@Override
	public ArrayList<Board> adminNoticeList(SqlSessionTemplate sqlSession, Board board) {
		ArrayList<Board> aboard = null;

		aboard = (ArrayList)sqlSession.selectList("Board.adminNoticeList", board);

		return aboard;
	}

	//공지사항 작성 insert
	@Override
	public int noticeWriteAdmin(SqlSessionTemplate sqlSession, Board board) {


		return sqlSession.insert("Board.noticeWriteAdmin",board);
	}

	//공지사항 상세내역 select
	@Override
	public Board adminNoticeRevise(SqlSessionTemplate sqlSession, int bNo) {

		Board b = new Board();
		b.setbNo(bNo);
		Board result = sqlSession.selectOne("Board.adminNoticeRevise",b);

		/* System.out.println("쿼리실행 : " + result); */

		return result;
	}

	//공지사항 상세내역 수정 update
	@Override
	public int adminNoticeChange(SqlSessionTemplate sqlSession, Board board) {

		System.out.println("dao까지 수정내역을 가지고 왔나요 ????" + board); 

		Board bb = new Board();
		bb.setbNo(board.getbNo());
		bb.setbTitle(board.getbTitle());
		bb.setBcontent(board.getBcontent());

		int result = sqlSession.update("Board.adminNoticeChange",board); 

		System.out.println("result:::" + result);

		return  sqlSession.update("Board.adminNoticeChange",board);


	}

	//공지사항삭제
	@Override
	public int adminNoticeDelete(SqlSessionTemplate sqlSession, int bNo) {

		System.out.println("dao:" + bNo);


		return  sqlSession.delete("Board.adminNoticeDelete",bNo);
	}

	@Override
	public List<Object> videoreportlist(SqlSessionTemplate sqlSession,Report report) {
 
		System.out.println("report"+report);
		return sqlSession.selectList("Report.videoreportlist");
	}

	@Override
	public List<Object> ublacklist(SqlSessionTemplate sqlSession, Report report) {
		// TODO Auto-generated method stub
		return sqlSession.selectList( "Report.ublacklist");
	}

	@Override
	public List<Object> cblacklist(SqlSessionTemplate sqlSession, Report report) {
		// TODO Auto-generated method stub
		return sqlSession.selectList( "Report.cblacklist");
	}


}









