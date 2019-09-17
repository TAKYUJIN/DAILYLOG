package com.kh.with.admin.model.service;



import java.util.ArrayList;
import java.util.List;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.admin.model.vo.Calculate;
import com.kh.with.member.model.vo.Member;
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
	









}
