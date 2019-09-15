package com.kh.with.admin.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.admin.model.vo.Calculate;
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


	//관리자 정산페이지 조회
	ArrayList<Calculate> selectAdminCalculate(SqlSessionTemplate sqlSession);

	

}
