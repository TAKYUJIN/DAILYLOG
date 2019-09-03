package com.kh.with.loger.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.loger.model.vo.Calculate;

@Repository
public class LogerDaoImpl implements LogerDao{
	
	@Override
	public ArrayList<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Calculate c) {
		ArrayList list = null;
		
		list = (ArrayList)sqlSession.selectList("Calculate.selectLogerCalculate", c);
		
		return list;
	}

}
	