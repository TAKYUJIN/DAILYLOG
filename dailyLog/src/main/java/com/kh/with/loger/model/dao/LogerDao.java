package com.kh.with.loger.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.loger.model.vo.Calculate;

public interface LogerDao {

	ArrayList<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Calculate c);

}
