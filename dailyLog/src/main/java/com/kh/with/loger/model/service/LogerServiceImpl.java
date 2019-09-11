package com.kh.with.loger.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.loger.model.dao.LogerDao;
import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.member.model.vo.Member;

@Service
public class LogerServiceImpl implements LogerService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private LogerDao ld;
	@Autowired
	private DataSourceTransactionManager transactionManager; 
	

	//로거 정산내역 조회
	@Override
	public ArrayList<Calculate> selectLogerCalculate(Calculate c, Member m) {
		return ld.selectLogerCalculate(sqlSession, c, m);
	}


	//로거 후원내역 조회
	@Override
	public ArrayList<Support> selectLogerSupport(Support s, Member m) {
		return ld.selectLogerSupport(sqlSession, s, m);
	}


	//로거 마지막 계좌 조회
	@Override
	public ArrayList<Calculate> logerLastAccount(Calculate c, Member m) {
		return ld.logerLastAccount(sqlSession, c, m);
	}



	//로거채널개설
	@Override
	public int insertcreateChannel(Loger loger) {
		return ld.insertcreateChannel(sqlSession,loger);
	}


	//로거 기간별 후원내역 조회
	@Override
	public ArrayList<Support> selectLogerSupportDate(Support s, Member m) {
		return ld.selectLogerSupportDate(sqlSession, s, m);
	}


	//로거 계좌번호 update
	@Override
	public int updateLogerAccount(Member m) {
		return ld.updateLogerAccount(sqlSession, m);
	}


	@Override
	public ArrayList<Support> selectLogetSupportPrice(Support s, Member m) {
		return ld.selectLogetSupportPrice(sqlSession, s, m);
	}

	//로거스튜디오 메인 select (프로필,채널명, 구독자)
	@Override
	public ArrayList<Loger> logerChMain(int userNo) {
		
		return ld.logerChMain(sqlSession, userNo);
		
		
	}
	


	

	



}
