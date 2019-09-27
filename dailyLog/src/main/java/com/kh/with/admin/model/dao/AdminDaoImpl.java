package com.kh.with.admin.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.admin.model.vo.Calculate;
import com.kh.with.admin.model.vo.ChannelBoard;
import com.kh.with.admin.model.vo.UserBoard;
import com.kh.with.block.model.vo.Blockch;
import com.kh.with.block.model.vo.Blockrep;
import com.kh.with.block.model.vo.Blockvi;
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

	@Override
	public int updateCalculateApply(SqlSessionTemplate sqlSession, int calNo) {
		
		return sqlSession.update("Calculate2.updateCalculateApply", calNo);
	}

	//회원관리 리스트
	@Override
	public ArrayList<UserBoard> selectAdminUser(SqlSessionTemplate sqlSession, UserBoard user) {
		// TODO Auto-generated method stub
		ArrayList<UserBoard> userlist = null;
		
		userlist = (ArrayList)sqlSession.selectList("userBoard.selectUserlist",user);
		
		System.out.println("뽕 ;;;;"+userlist);
	
		return userlist;
	}
	//회원관리 상세보기
	@Override
	public ArrayList<UserBoard> selectDetail(SqlSessionTemplate sqlSession, UserBoard user1) {
		// TODO Auto-generated method stub
		ArrayList<UserBoard> detail1 = null;
		
		detail1 = (ArrayList)sqlSession.selectList("userBoard.detailList1",user1);
		
		return detail1;
	}
	@Override
	public ArrayList<Blockch> selectDetail1(SqlSessionTemplate sqlSession, Blockch ch) {
		// TODO Auto-generated method stub
		ArrayList<Blockch> detail2 = null;
		detail2 = (ArrayList)sqlSession.selectList("userBoard.detailList2",ch);
		return detail2;
	}

	@Override
	public ArrayList<Blockrep> selectDetail2(SqlSessionTemplate sqlSession, Blockrep rep) {
		// TODO Auto-generated method stub
		ArrayList<Blockrep> detail3 = null;
		detail3 = (ArrayList)sqlSession.selectList("userBoard.detailList3",rep);
		return detail3;
	}

	@Override
	public ArrayList<Blockvi> selectDetail3(SqlSessionTemplate sqlSession, Blockvi vi) {
		// TODO Auto-generated method stub
		ArrayList<Blockvi> detail4 = null;
		detail4 = (ArrayList)sqlSession.selectList("userBoard.detailList4",vi);
		return detail4;
	}

	

	public ArrayList<Calculate> searchWait(SqlSessionTemplate sqlSession) {
		ArrayList<Calculate> cList = null;
		
		cList = (ArrayList)sqlSession.selectList("Calculate2.searchWait");
		
		return cList;
	}

	@Override
	public ArrayList<Calculate> searchSuccess(SqlSessionTemplate sqlSession) {
		ArrayList<Calculate> cList = null;
		
		cList = (ArrayList)sqlSession.selectList("Calculate2.searchSuccess");
		
		return cList;
	}

	@Override
	public ArrayList<Calculate> searchUserNm(SqlSessionTemplate sqlSession, String userNm) {
		ArrayList<Calculate> cList = null;
		
		cList = (ArrayList)sqlSession.selectList("Calculate2.searchUserNm", userNm);
		
		return cList;
	}

	@Override
	public ArrayList<Calculate> searchWaitAll(SqlSessionTemplate sqlSession, String userNm) {
		ArrayList<Calculate> cList = null;
		
		cList = (ArrayList)sqlSession.selectList("Calculate2.searchWaitAll", userNm);
		
		return cList;
	}

	@Override
	public ArrayList<Calculate> searchSuccessAll(SqlSessionTemplate sqlSession, String userNm) {
		ArrayList<Calculate> cList = null;
		
		cList = (ArrayList)sqlSession.selectList("Calculate2.searchSuccessAll", userNm);
		
		return cList;
	}


	 @Override
	public List<ChannelBoard> channelInfo(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("ChannelBoard.channelInfo");
	}

	@Override
	public int monthMemberListCount(SqlSessionTemplate sqlSession) {
		int mMonth = sqlSession.selectOne("Calculate2.monthMemberListCount");
		
		return mMonth;
	}

	@Override
	public int weekMemberListCount(SqlSessionTemplate sqlSession) {
		int mWeek = sqlSession.selectOne("Calculate2.weekMemberListCount");
		
		return mWeek;
	}

	@Override
	public int dayMemberListCount(SqlSessionTemplate sqlSession) {
		int mDay = sqlSession.selectOne("Calculate2.dayMemberListCount");
		
		return mDay;
	}



	@Override
	public int monthRevenueListCount(SqlSessionTemplate sqlSession) {
		int rMonth = sqlSession.selectOne("Calculate2.monthRevenueListCount");
		
		return rMonth;
	}



	@Override
	public int weekRevenueListCount(SqlSessionTemplate sqlSession) {
		int rWeek = sqlSession.selectOne("Calculate2.weekRevenueListCount");
		
		return rWeek;
	}



	@Override
	public int dayRevenueListCount(SqlSessionTemplate sqlSession) {
		int rDay = sqlSession.selectOne("Calculate2.dayRevenueListCount");
		
		return rDay;
	}

}









