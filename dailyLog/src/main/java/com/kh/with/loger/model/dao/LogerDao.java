package com.kh.with.loger.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Loger2;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;

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

	//ArrayList<Integer> selectLogetSupportPrice(SqlSessionTemplate sqlSession, Support s, Member m);

	ArrayList<Support> selectLogetSupportPrice(SqlSessionTemplate sqlSession, Support s, Member m);

	//로거스튜디오(프로필 ,채널명,구독자수)
	Loger2 newHomeChannel(SqlSessionTemplate sqlSession, int userNo);

	//로거 신고 기록
	ArrayList<Report> reportlist(SqlSessionTemplate sqlSession,Report report, Member m);
	//로거 신고

	List<Object> recount(SqlSessionTemplate sqlSession,Member m,Report report);
 	//로거 경고
	List<Object> ccount(SqlSessionTemplate sqlSession,Member m, Report report);
	//로거 채널 정지
	int cstop(SqlSessionTemplate sqlSession, Loger r);

 
	

}
