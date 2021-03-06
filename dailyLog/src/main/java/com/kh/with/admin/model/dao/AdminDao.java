package com.kh.with.admin.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.admin.model.vo.Calculate;
import com.kh.with.admin.model.vo.ChannelBoard;
import com.kh.with.admin.model.vo.UserBoard;
import com.kh.with.block.model.vo.Blockch;
import com.kh.with.block.model.vo.Blockrep;
import com.kh.with.block.model.vo.Blockvi;
import com.kh.with.member.model.vo.Member;
import com.kh.with.notice.model.vo.Chat;
import com.kh.with.report.model.vo.Report;
import com.kh.with.report.model.vo.Report2;

public interface AdminDao {

	//공지사항 리스트 select 
	ArrayList<Board> adminNoticeList(SqlSessionTemplate sqlSession, Board board);

	//공지사항 작성 insert 
	int noticeWriteAdmin(SqlSessionTemplate sqlSession, Board board);

	//공지사항 상세내역 select
	Board adminNoticeRevise(SqlSessionTemplate sqlSession, int bNo);

	//공지사항 상세내역 수정 update
	int adminNoticeChange(SqlSessionTemplate sqlSession, Board board);

	//공지사항 삭제
	int adminNoticeDelete(SqlSessionTemplate sqlSession, int bNo);
	//신고관리 댓글,채널,동영상
	List<Object> videoreportlist(SqlSessionTemplate sqlSession,Report report);
	
	
	List<Object> chreportlist(SqlSessionTemplate sqlSession, Report report);
	List<Object> repreportlist(SqlSessionTemplate sqlSession, Report report);

	
	//회원 블랙
	List<Object> ublacklist(SqlSessionTemplate sqlSession, Report2 report);
	//채널 블랙
	List<Object> cblacklist(SqlSessionTemplate sqlSession, Report2 report);
	//동영ㅇ상 블랙
	List<Object> vblacklist(SqlSessionTemplate sqlSession, Report2 report);

	//관리자 정산페이지 조회
	ArrayList<Calculate> selectAdminCalculate(SqlSessionTemplate sqlSession);
	//블랙 회원 status
	int ublackstatus(SqlSessionTemplate sqlSession, Member m);

	int updateCalculateApply(SqlSessionTemplate sqlSession, int calNo);


	ArrayList<UserBoard> selectAdminUser(SqlSessionTemplate sqlSession, UserBoard user);

	ArrayList<UserBoard> selectDetail(SqlSessionTemplate sqlSession, UserBoard user1);
	
	ArrayList<Blockch> selectDetail1(SqlSessionTemplate sqlSession, Blockch ch);

	ArrayList<Blockrep> selectDetail2(SqlSessionTemplate sqlSession, Blockrep rep);

	ArrayList<Blockvi> selectDetail3(SqlSessionTemplate sqlSession, Blockvi vi);

	ArrayList<Calculate> searchWait(SqlSessionTemplate sqlSession);

	ArrayList<Calculate> searchSuccess(SqlSessionTemplate sqlSession);

	ArrayList<Calculate> searchUserNm(SqlSessionTemplate sqlSession, String userNm);

	ArrayList<Calculate> searchWaitAll(SqlSessionTemplate sqlSession, String userNm);

	ArrayList<Calculate> searchSuccessAll(SqlSessionTemplate sqlSession, String userNm);


	List<ChannelBoard> channelInfo(SqlSessionTemplate sqlSession);

	int monthMemberListCount(SqlSessionTemplate sqlSession);

	int weekMemberListCount(SqlSessionTemplate sqlSession);

	int dayMemberListCount(SqlSessionTemplate sqlSession);

	int monthRevenueListCount(SqlSessionTemplate sqlSession);

	int weekRevenueListCount(SqlSessionTemplate sqlSession);

	int dayRevenueListCount(SqlSessionTemplate sqlSession);

	int selectWaitCount(SqlSessionTemplate sqlSession);

	int selectSuccCount(SqlSessionTemplate sqlSession);

	ArrayList<Chat> selectChatWaitList(SqlSessionTemplate sqlSession);

	int updateSuccChat(SqlSessionTemplate sqlSession, int chatNo);

	ArrayList<Chat> selectSuccChatList(SqlSessionTemplate sqlSession);



	

	

}
