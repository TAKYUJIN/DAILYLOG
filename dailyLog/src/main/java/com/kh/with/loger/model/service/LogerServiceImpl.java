package com.kh.with.loger.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.loger.model.dao.LogerDao;
import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Loger2;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;

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


	//기간별 후원내역 값 조회
	@Override
	public ArrayList<Support> selectLogerSupportPrice(Support s, Member m) {
		return ld.selectLogerSupportPrice(sqlSession, s, m);
	}

	//기간별 후원내역 조회 후 정산내역으로 insert
	@Override
	public int insertLogerCalculate(Calculate c) {
		
		int result = ld.insertLogerCalculate(sqlSession, c);
		
		return result;
		
	}
	
	//로거 정보 가져오기
	@Override
	public ArrayList<Loger> selectLogerInfo(Member m) {
		return ld.selectLogerInfo(sqlSession, m);
	}

	//후원내역 정산유무 update
	@Override
	public int updateSupportCalculate(Member m) {
		return ld.updateSupportCalculate(sqlSession, m);
	}

	//로거스튜디오(프로필,채널명,구독자수)
	@Override
	public Loger2 newHomeChannel(int userNo) {
		return ld.newHomeChannel(sqlSession, userNo);
	}

	//로거 신고내역
	
	  @Override public ArrayList<Report> reportlist(Report report, Member m) {
	  
	  return ld.reportlist(sqlSession,report,m); }
	 

		@Override
		public ArrayList<Report> reportcount(Report report, Member m) {
		 
			return ld.reportcount(sqlSession,report,m); 
		}


	 

	//로거 채널 정지
	@Override
	public int cstop(Loger r) {
		// TODO Auto-generated method stub
		return ld.cstop(sqlSession, r);
	}






}






