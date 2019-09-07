package com.kh.with.loger.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.member.model.vo.Member;

@Repository
public class LogerDaoImpl implements LogerDao{

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

	@Override
	public ArrayList<Calculate> logerLastAccount(SqlSessionTemplate sqlSession, Calculate c, Member m) {
		ArrayList<Calculate> aList = null;
		
		aList = (ArrayList)sqlSession.selectList("Loger.logerLastAccount", m);
		
		return aList;
	}

	//로거채널개설
	@Override
	public int insertcreateChannel(SqlSessionTemplate sqlSession, Loger loger) {
		
		System.out.println("loger:::::" + loger);
		
		return sqlSession.insert("Loger.insertcreateChannel",loger);
	}

}
	