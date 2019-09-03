package com.kh.with.loger.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import com.kh.with.loger.model.dao.LogerDao;
import com.kh.with.loger.model.vo.Calculate;

public class LogerServiceImpl implements LogerService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private LogerDao ld;
	@Autowired
	private DataSourceTransactionManager transactionManager; 
	
	
	@Override
	public List<Calculate> selectLogerCalculate(Calculate c) {
		
		return ld.selectLogerCalculate(sqlSession, c);
	}

}
