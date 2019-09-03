package com.kh.with.loger.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.loger.model.vo.Calculate;

public interface LogerDao {

	List<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Calculate c);

}
