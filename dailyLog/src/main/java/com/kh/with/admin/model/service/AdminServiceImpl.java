package com.kh.with.admin.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.admin.model.dao.AdminDao;
import com.kh.with.admin.model.vo.Board;
import com.kh.with.report.model.vo.Report;



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
	public List<Object> ublacklist(Report report) {
 		return ad.ublacklist(sqlSession,report);
 		
	}

	@Override
	public List<Object> cblacklist(Report report) {
		// TODO Auto-generated method stub
		return ad.cblacklist(sqlSession,report);
 		
	}


	






}




















