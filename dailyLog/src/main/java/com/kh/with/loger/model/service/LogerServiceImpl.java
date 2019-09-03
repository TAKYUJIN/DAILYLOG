package com.kh.with.loger.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.loger.model.dao.LogerDao;
import com.kh.with.loger.model.vo.Calculate;

@Service
public class LogerServiceImpl implements LogerService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private LogerDao ld;
	@Autowired
	private DataSourceTransactionManager transactionManager; 
	
	
	@Override
	public ArrayList<Calculate> selectLogerCalculate(Calculate c) {
		
		return ld.selectLogerCalculate(sqlSession, c);
	}

}
