package com.kh.with.admin.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.admin.model.dao.AdminDao;
import com.kh.with.admin.model.vo.Board;
import com.kh.with.admin.model.vo.Calculate;
import com.kh.with.admin.model.vo.UserBoard;
import com.kh.with.block.model.vo.Blockch;
import com.kh.with.block.model.vo.Blockrep;
import com.kh.with.block.model.vo.Blockvi;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;
import com.kh.with.report.model.vo.Report2;



@Service
public class AdminServiceImpl implements AdminService {


	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdminDao ad;
	@Autowired
	private DataSourceTransactionManager transactionManager;


	//공지사항리스트
	@Override
	public ArrayList<Board> adminNoticeList(Board board) {


		return ad.adminNoticeList(sqlSession, board);
	}

	//공지사항 insert
	@Override
	public int noticeWriteAdmin(Board board) {
	
		
		
		return ad.noticeWriteAdmin(sqlSession, board);
	}
	
	//공지사항 상세내역 select
	@Override
	public Board adminNoticeRevise(int bNo) {
		
		return ad.adminNoticeRevise(sqlSession, bNo);
	}


	//공지사항 수정 업데이트 
	@Override
	public int adminNoticeChange(Board board) {
		return ad.adminNoticeChange(sqlSession, board);
	}

	//공지사항삭제
	@Override
	public int adminNoticeDelete(int bNo) {
		
		return ad.adminNoticeDelete(sqlSession, bNo);
	}

	@Override
	public List<Object> videoreportlist(Report report) {

		
		System.out.println("report"+report);
		return ad.videoreportlist(sqlSession,report);
	}
 //관리자 회원 블랙 리스트  
	@Override
	public List<Object> ublacklist(Report2 report) {
		System.out.println("report1"+report);
 		return ad.ublacklist(sqlSession,report);
 		
	}
	 //관리자 채널 블랙 리스트  
	@Override
	public List<Object> cblacklist(Report2 report) {
		System.out.println("report2"+report);
		// TODO Auto-generated method stub
		return ad.cblacklist(sqlSession,report);
 		
	}
	 //관리자 동영상 블랙 리스트  
	@Override
	public List<Object> vblacklist(Report2 report) {
		// TODO Auto-generated method stub
		return ad.vblacklist(sqlSession,report);
	}


	@Override
	public List<Object> chreportlist(Report report) {
		// TODO Auto-generated method stub
		return ad.chreportlist(sqlSession,report);
	}

	@Override
	public List<Object> repreportlist(Report report) {
		// TODO Auto-generated method stub
		return ad.repreportlist(sqlSession,report);
	}


	//관리자 정산 페이지
	@Override
	public ArrayList<Calculate> selectAdminCalculate() {
		return ad.selectAdminCalculate(sqlSession);

	}

	@Override
	public int ublackstatus(Member m) {
		// TODO Auto-generated method stub
		return ad.ublackstatus(sqlSession,m);
	}

	//관리자 정산 대기->완료
	@Override
	public int updateCalculateApply(int calNo) {
		return ad.updateCalculateApply(sqlSession, calNo);
	}

	//회원관리페이지
	@Override
	public ArrayList<UserBoard> selectAdminUser(UserBoard user) {
		// TODO Auto-generated method stub
		return ad.selectAdminUser(sqlSession,user);
	}
	//회원관리 상세보기
	@Override
	public ArrayList<UserBoard> selectDetail(UserBoard user1) {
		// TODO Auto-generated method stub
		return ad.selectDetail(sqlSession, user1);
	}
	@Override
	public ArrayList<Blockch> selectDetail1(Blockch ch) {
		// TODO Auto-generated method stub
		return ad.selectDetail1(sqlSession, ch);
	}

	@Override
	public ArrayList<Blockrep> selectDetail2(Blockrep rep) {
		// TODO Auto-generated method stub
		return ad.selectDetail2(sqlSession, rep);
	}

	@Override
	public ArrayList<Blockvi> selectDetail3(Blockvi vi) {
		// TODO Auto-generated method stub
		return ad.selectDetail3(sqlSession, vi);
	}
	
	@Override
	public ArrayList<Calculate> searchWait() {
		return ad.searchWait(sqlSession);
	}

	@Override
	public ArrayList<Calculate> searchSuccess() {
		return ad.searchSuccess(sqlSession);
	}

	@Override
	public ArrayList<Calculate> searchUserNm(String userNm) {
		return ad.searchUserNm(sqlSession, userNm);
	}

	@Override
	public ArrayList<Calculate> searchWaitAll(String userNm) {
		return ad.searchWaitAll(sqlSession, userNm);
	}

	@Override
	public ArrayList<Calculate> searchSuccessAll(String userNm) {
		return ad.searchSuccessAll(sqlSession, userNm);
	}

	

	
	






}





















/* 누구야... 
package com.kh.with.admin.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.admin.model.dao.AdminDao;
import com.kh.with.admin.model.vo.Board;
import com.kh.with.admin.model.vo.Calculate;
import com.kh.with.report.model.vo.Report;
import com.kh.with.report.model.vo.Report2;



@Service
public class AdminServiceImpl implements AdminService {


	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdminDao ad;
	@Autowired
	private DataSourceTransactionManager transactionManager;


	//공지사항리스트
	@Override
	public ArrayList<Board> adminNoticeList(Board board) {


		return ad.adminNoticeList(sqlSession, board);
	}

	//공지사항 insert
	@Override
	public int noticeWriteAdmin(Board board) {
	
		
		
		return ad.noticeWriteAdmin(sqlSession, board);
	}
	
	//공지사항 상세내역 select
	@Override
	public Board adminNoticeRevise(int bNo) {
		
		return ad.adminNoticeRevise(sqlSession, bNo);
	}


	//공지사항 수정 업데이트 
	@Override
	public int adminNoticeChange(Board board) {
		return ad.adminNoticeChange(sqlSession, board);
	}

	//공지사항삭제
	@Override
	public int adminNoticeDelete(int bNo) {
		
		return ad.adminNoticeDelete(sqlSession, bNo);
	}

	@Override
	public List<Object> videoreportlist(Report report) {

		
		System.out.println("report"+report);
		return ad.videoreportlist(sqlSession,report);
	}

	@Override
	public List<Object> ublacklist(Report2 report) {
		System.out.println("report1"+report);
 		return ad.ublacklist(sqlSession,report);
 		
	}

	@Override
	public List<Object> cblacklist(Report2 report) {
		System.out.println("report2"+report);
		// TODO Auto-generated method stub
		return ad.cblacklist(sqlSession,report);
 		
	}


	@Override
	public List<Object> chreportlist(Report report) {
		// TODO Auto-generated method stub
		return ad.chreportlist(sqlSession,report);
	}

	@Override
	public List<Object> repreportlist(Report report) {
		// TODO Auto-generated method stub
		return ad.repreportlist(sqlSession,report);
	}

	//관리자 정산 페이지
	@Override
	public ArrayList<Calculate> selectAdminCalculate() {
		return ad.selectAdminCalculate(sqlSession);

	}


	






}
*/



















