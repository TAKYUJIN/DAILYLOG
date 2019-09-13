package com.kh.with.report.model.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.dao.ReportDao;
import com.kh.with.report.model.vo.Report;

@Service
public class ReportServiceImpl implements ReportService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	
	private ReportDao rd;
	@Override
	public int mainreport(Report report) {
		// TODO Auto-generated method stub
		return rd.mainreport(sqlSession, report);
	}
	 
	
	 //메인 동영상 신고

	/*public Object mainreport(Map param) {

		System.out.println("service:"+param);
		return rd.mainreport(sqlSession,param);
	}*/
	
	 

}
