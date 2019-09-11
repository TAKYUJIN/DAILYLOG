package com.kh.with.loger.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.member.model.vo.Member;

@Repository
public class LogerDaoImpl implements LogerDao{
	//로거 정산내역 조회
	@Override
	public ArrayList<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Calculate c, Member m) {
		ArrayList<Calculate> cList = null;
		
		cList = (ArrayList)sqlSession.selectList("Loger.selectLogerCalculate", m);
		
		return cList;
	}
	//로거 후원내역 조회
	@Override
	public ArrayList<Support> selectLogerSupport(SqlSessionTemplate sqlSession, Support s, Member m) {
		ArrayList<Support> sList = null;
		
		sList = (ArrayList)sqlSession.selectList("Loger.selectLogerSupport", m);
		
		return sList;
	}
	//로거 마지막 계좌 조회
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
	
	//로거 기간별 후원내역 조회
	@Override
	public ArrayList<Support> selectLogerSupportDate(SqlSessionTemplate sqlSession, Support s, Member m) {
		ArrayList<Support> dateList = null;
		dateList = (ArrayList)sqlSession.selectList("Loger.selectLogetSupportDate", m);
		
		return dateList;
		
	}

	//로거 계좌번호 insert
	@Override
	public int updateLogerAccount(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("Loger.updateLogerAccount", m);
	}

	/*
	 * @Override public ArrayList<Integer>
	 * selectLogetSupportPrice(SqlSessionTemplate sqlSession, Support s, Member m) {
	 * int[] pList = null;
	 * 
	 * pList = (ArrayList) sqlSession.selectList("Loger.selectLogetSupportPrice",
	 * m);
	 * 
	 * System.out.println("pList : " + pList);
	 * 
	 * return pList; }
	 */
	
	/*
	@Override
	public ArrayList<Integer> selectLogetSupportPrice(SqlSessionTemplate sqlSession, Support s, Member m) {
		// TODO Auto-generated method stub
		return null;
	}
	*/
	
	//로거스튜디오 메인 select (프로필,채널명, 구독자)
	@Override
	public ArrayList<Loger> logerChMain(SqlSessionTemplate sqlSession, int userNo) {
		
		ArrayList<Loger> logers = null;

		System.out.println("공지사항 dao까지 왔니?:: " + logers);

		logers = (ArrayList)sqlSession.selectList("Loger.logerChMain", logers);

		return logers;
	}

	
	
	//후원기간 조회 후 그 기간에 따른 정산 금액만 select
	 @Override 
	 public ArrayList<Support> selectLogetSupportPrice(SqlSessionTemplate sqlSession, Support s, Member m) {
	 ArrayList<Support> pList = null;
	 
	 pList = (ArrayList) sqlSession.selectList("Loger.selectLogetSupportPrice", m);
	 
	 System.out.println("pList : " + pList);
	 
	 return pList; 
	 }
	 
	
	//후원기간 조회 후 정산 총금액 insert
	



}
	