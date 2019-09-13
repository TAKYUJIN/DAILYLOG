package com.kh.with.report.model.dao;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;

public interface ReportDao {

	int mainreport(SqlSessionTemplate sqlSession, Report report);

	/* Object mainreport(SqlSessionTemplate sqlSession,Map param); */

}
