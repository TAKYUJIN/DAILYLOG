package com.kh.with.loger.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.loger.model.dao.LogerDao;
import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.member.model.vo.Member;

@Service
public class LogerServiceImpl implements LogerService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private LogerDao ld;
	@Autowired
	private DataSourceTransactionManager transactionManager; 
	


	@Override
	public ArrayList<Calculate> selectLogerCalculate(Calculate c, Member m) {
		return ld.selectLogerCalculate(sqlSession, c, m);
	}



	@Override
	public ArrayList<Support> selectLogerSupport(Support s, Member m) {
		return ld.selectLogerSupport(sqlSession, s, m);
	}



	@Override
	public ArrayList<Calculate> logerLastAccount(Calculate c, Member m) {
		return ld.logerLastAccount(sqlSession, c, m);
	}



	//로거채널개설
	@Override
	public int insertcreateChannel(Loger loger) {
		
		
		
		return ld.insertcreateChannel(sqlSession,loger);
	}




}
