package com.kh.with.report.model.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.main.model.vo.Alram;
import com.kh.with.report.model.vo.Report;
import com.kh.with.report.model.vo.Report2;
@Repository
public class ReportDaoImpl implements ReportDao{

	//메인 동영상 신고
	@Override
	public int mainreport(SqlSessionTemplate sqlSession, Report report) {
		 System.out.println("reportdao:"+report);
		return sqlSession.insert("Report.mainreport",report);
	}

	
	//관리자 동영상 신고 내역
	@Override
	public List<Report> videoreportdetail(SqlSessionTemplate sqlSession, int reno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Report.videoreportdetail",reno);
	}

	@Override
	public List<Report> chreportdetail(SqlSessionTemplate sqlSession, int reno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Report.chreportdetail",reno);
	}


	@Override
	public List<Report> repreportdetail(SqlSessionTemplate sqlSession, int reno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Report.repreportdetail",reno);
	}


	@Override
	public int videoreportupdate(SqlSessionTemplate sqlSession, Report2 report) {
		// TODO Auto-generated method stub
		return sqlSession.update("Report.videoreportdetail2",report);
	}


	@Override
	public int alramreport(SqlSessionTemplate sqlSession, Alram alram) {
		// TODO Auto-generated method stub
		System.out.println("alram:"+alram);
		return sqlSession.insert("Report.alramreport",alram);
	}



	

}
	//관리자 동영상 신고 상세 내역
	/*
	 * @Override public int videoreportdetail2(SqlSessionTemplate sqlSession,
	 * Report2 report,int reno) { System.out.println("reportw"+report);
	 * System.out.println("renow"+reno);
	 * 
	 * return sqlSession.update("Report.videoreportdetail2",reno);
	 * 
	 * 
	 * }
	 */
 
