package com.kh.with.report.model.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.with.report.model.dao.ReportDao;
import com.kh.with.report.model.vo.Report;

@Service
public class ReportServiceImpl implements ReportService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	
	private ReportDao rd;
	@Override
	
	 //메인 동영상 신고

	public Object mainreport(int userNo, HttpSession session) {

		
		return rd.mainreport(sqlSession,userNo,session);
	}
	
	 

}
