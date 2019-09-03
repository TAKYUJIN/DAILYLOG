package com.kh.with.loger.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.member.model.vo.Member;

public interface LogerDao {

//	ArrayList<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Member m);
//
//	ArrayList<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Calculate c);

	ArrayList<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Calculate c, Member m);

}
