package com.kh.with.admin.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.admin.model.vo.Calculate;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;
import com.kh.with.report.model.vo.Report2;



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
 
		System.out.println("report1"+report);
		return sqlSession.selectList("Report.videoreportlist");
	}
	@Override
	public List<Object> chreportlist(SqlSessionTemplate sqlSession, Report report) {
		return  sqlSession.selectList("Report.chreportlist");
	}
	@Override
	public List<Object> repreportlist(SqlSessionTemplate sqlSession, Report report) {
		return sqlSession.selectList("Report.repreportlist");

	}
	 //관리자 회원 블랙 리스트  
	@Override
	public List<Object> ublacklist(SqlSessionTemplate sqlSession, Report2 report) {
		System.out.println("report2"+report);
		return sqlSession.selectList( "Report.ublacklist");
	}
	 //관리자 채널 블랙 리스트  
	@Override
	public List<Object> cblacklist(SqlSessionTemplate sqlSession, Report2 report) {
		System.out.println("report3"+report);
		return sqlSession.selectList( "Report.cblacklist");
	}
	 //관리자 동영상 블랙 리스트  
	@Override
	public List<Object> vblacklist(SqlSessionTemplate sqlSession, Report2 report) {
		// TODO Auto-generated method stub
		return sqlSession.selectList( "Report.vblacklist");

	}
	
	@Override
	public int ublackstatus(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("Report.ublackstatus",m);
	}

	
	//관리자 정산 페이지 조회
	@Override
	public ArrayList<Calculate> selectAdminCalculate(SqlSessionTemplate sqlSession) {
		ArrayList<Calculate> list = null;

		list = (ArrayList)sqlSession.selectList("Calculate2.selectAdminCalculate");

		System.out.println(list);
		return list;
	}

	
	
}









