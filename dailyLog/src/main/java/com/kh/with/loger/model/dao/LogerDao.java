package com.kh.with.loger.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.member.model.vo.Member;

public interface LogerDao {

	//로거 정산내역 조회
	ArrayList<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Calculate c, Member m);

	//로거 후원내역 조회
	ArrayList<Support> selectLogerSupport(SqlSessionTemplate sqlSession, Support s, Member m);

	//로거 마지막 계좌 조회
	ArrayList<Calculate> logerLastAccount(SqlSessionTemplate sqlSession, Calculate c, Member m);

	//로거채널개설
	int insertcreateChannel(SqlSessionTemplate sqlSession, Loger loger);

	//로거 기간별 후원내역 조회
	ArrayList<Support> selectLogerSupportDate(SqlSessionTemplate sqlSession, Support s, Member m);

	//로거 계좌번호 update
	int updateLogerAccount(SqlSessionTemplate sqlSession, Member m);

	//로거 기간별 후원내역 조회 값
	ArrayList<Integer> selectLogetSupportPrice(SqlSessionTemplate sqlSession, Support s, Member m);
	

}
