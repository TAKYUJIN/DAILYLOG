package com.kh.with.report.model.dao;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class ReportDaoImpl implements ReportDao{

	 //메인 동영상 신고
	 
	@Override
	public Object mainreport(SqlSessionTemplate sqlSession,int userNo, HttpSession session) {
		System.out.println("reportdaoimpl");
		return sqlSession.selectList("Report.mainreport");
	}

}
