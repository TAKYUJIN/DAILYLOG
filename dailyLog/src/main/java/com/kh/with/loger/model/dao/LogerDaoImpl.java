package com.kh.with.loger.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.member.model.vo.Member;

@Repository
public class LogerDaoImpl implements LogerDao{
	
//	@Override
//	public ArrayList<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Member m) {
//		ArrayList list = null;
//		
//		list = (ArrayList)sqlSession.selectList("Calculate.selectLogerCalculate", m);
//		
//		return list;
//	}
//
//	@Override
//	public ArrayList<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Calculate c) {
//		ArrayList list = null;
//		
//		list = (ArrayList)sqlSession.selectList("Calculate.selectLogerCalculate", c);
//		
//		return list;
//	}

	@Override
	public ArrayList<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Calculate c, Member m) {
		ArrayList<Calculate> cList = null;
		
		cList = (ArrayList)sqlSession.selectList("Loger.selectLogerCalculate", m);
		
		return cList;
	}

	@Override
	public ArrayList<Support> selectLogerSupport(SqlSessionTemplate sqlSession, Support s, Member m) {
		ArrayList<Support> sList = null;
		
		sList = (ArrayList)sqlSession.selectList("Loger.selectLogerSupport", m);
		
		return sList;
	}

}
	