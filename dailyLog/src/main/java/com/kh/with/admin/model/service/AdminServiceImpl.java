package com.kh.with.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.admin.model.dao.AdminDao;
import com.kh.with.admin.model.vo.Board;


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


	






}




















