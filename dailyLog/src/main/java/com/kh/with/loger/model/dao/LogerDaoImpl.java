package com.kh.with.loger.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.loger.model.vo.Calculate;

@Repository
public class LogerDaoImpl implements LogerDao{
	
	@Override
	public List<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Calculate c) {
		return sqlSession.selectList("Loger.selectLogerCalculate", c);
	}

}
	