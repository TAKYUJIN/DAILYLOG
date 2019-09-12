package com.kh.with.report.model.dao;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;

public interface ReportDao {

	Object mainreport(SqlSessionTemplate sqlSession,int userNo, HttpSession session);

}
