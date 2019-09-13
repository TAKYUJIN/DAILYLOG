package com.kh.with.report.model.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.kh.with.report.model.vo.Report;
@Repository
public class ReportDaoImpl implements ReportDao{

	@Override
	public int mainreport(SqlSessionTemplate sqlSession, Report report) {
		 System.out.println("reportdao:"+report);
		return sqlSession.insert("Report.mainreport",report);
	}

	 //메인 동영상 신고
	 
	/*
	 * @Override public Object mainreport(SqlSessionTemplate sqlSession,Map param) {
	 * System.out.println("param"+param); return
	 * sqlSession.selectList("Report.mainreport"); }
	 */
}
