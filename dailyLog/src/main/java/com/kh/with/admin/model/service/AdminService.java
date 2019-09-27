package com.kh.with.admin.model.service;



import java.util.ArrayList;
import java.util.List;

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


public interface AdminService {

	//공지사항 리스트 select
	ArrayList<Board> adminNoticeList(Board board);


	//공지사항 작성 isnert 
	int noticeWriteAdmin(Board board);
	

	//공지사항 상세내역 select
	Board adminNoticeRevise(int bNo);

	//공지사항 상세내역 수정 update
	int adminNoticeChange(Board board);

	
	//공지사항 삭제 delete
	int adminNoticeDelete(int bNo);

	//신고내역
	List<Object> videoreportlist(Report report);
	List<Object> chreportlist(Report report);
	List<Object> repreportlist(Report report);

	
	
	//블랙리스트
	List<Object> ublacklist(Report2 report);
	List<Object> cblacklist(Report2 report);
	List<Object> vblacklist(Report2 report);
	
	int ublackstatus(Member m);


	//관리자 정산 페이지
	ArrayList<Calculate> selectAdminCalculate();


	int updateCalculateApply(int cal);

	//회원관리 list
	ArrayList<UserBoard> selectAdminUser(UserBoard user);


	

	ArrayList<Calculate> searchWaitAll(String userNm);


	ArrayList<Calculate> searchSuccessAll(String userNm);


	ArrayList<Calculate> searchWait();


	ArrayList<Calculate> searchSuccess();


	ArrayList<Calculate> searchUserNm(String userNm);
	
	//회원관리 상세보기
	ArrayList<UserBoard> selectDetail(UserBoard user1);
	
	ArrayList<Blockch> selectDetail1(Blockch ch);


	ArrayList<Blockrep> selectDetail2(Blockrep rep);


	ArrayList<Blockvi> selectDetail3(Blockvi vi);

	List<ChannelBoard> channelInfo();

	int monthMemberListCount();


	int weekMemberListCount();


	int dayMemberListCount();


	int monthRevenueListCount();


	int weekRevenueListCount();


	int dayRevenueListCount();


	int selectWaitCount();


	int selectSuccCount();


	ArrayList<Chat> selectChatWaitList();


	int updateSuccChat(int chatNo);


	ArrayList<Chat> selectChatSuccList();


	









}
