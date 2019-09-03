package com.kh.with.loger.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.loger.model.dao.LogerDao;
import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.member.model.vo.Member;

@Service
public class LogerServiceImpl implements LogerService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private LogerDao ld;
	@Autowired
	private DataSourceTransactionManager transactionManager; 
	


//	@Override
//	public ArrayList<Calculate> selectLogerCalculate(Member m) {
//		return ld.selectLogerCalculate(sqlSession, m);
//	}
//
//
//
//	@Override
//	public ArrayList<Calculate> selectLogerCalculate(Calculate c) {
//		return ld.selectLogerCalculate(sqlSession, c);
//	}



	@Override
	public ArrayList<Calculate> selectLogerCalculate(Calculate c, Member m) {
		return ld.selectLogerCalculate(sqlSession, c, m);
	}




}
