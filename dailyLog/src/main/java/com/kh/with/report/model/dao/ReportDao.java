package com.kh.with.report.model.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.main.model.vo.Alram;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;
import com.kh.with.report.model.vo.Report2;

public interface ReportDao {

	int mainreport(SqlSessionTemplate sqlSession, Report report);


	/* Object mainreport(SqlSessionTemplate sqlSession,Map param); */
	//관리자 동영상 신고 상세 내역
	List<Report> videoreportdetail(SqlSessionTemplate sqlSession, int reno);

	List<Report> chreportdetail(SqlSessionTemplate sqlSession, int reno);
	List<Report> repreportdetail(SqlSessionTemplate sqlSession, int reno);

	public int videoreportupdate(SqlSessionTemplate sqlSession, Report2 report);


	int alramreport(SqlSessionTemplate sqlSession, Alram alram);


	int rereportupdate(SqlSessionTemplate sqlSession, Report2 report);


	int chreportupdate(SqlSessionTemplate sqlSession, Report2 report);

	 


	//int videoreportdetail2(SqlSessionTemplate sqlSession, Report2 report, int reno);

	//관리자 동영상 신고 상세 내역->신고
	//public void videoreportdetail2(SqlSessionTemplate sqlSession, Report2 report);
	
}
