package com.kh.with.report.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.with.report.model.dao.ReportDao;
import com.kh.with.report.model.vo.Report;
import com.kh.with.report.model.vo.Report2;

@Service
public class ReportServiceImpl implements ReportService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	
	private ReportDao rd;
	 //메인 동영상 신고
	@Override
	public int mainreport(Report report) {
		// TODO Auto-generated method stub
		return rd.mainreport(sqlSession, report);
	}
	
	//관리자 동영상 신고 상세 내역
	@Override
	public List<Report> videoreportdetail(int reno) {
		 
		return rd.videoreportdetail(sqlSession,reno);
	}

	/*
	 * @Override public int videoreportdetail2(Report2 report,int reno) {
	 * System.out.println("report"+report); //
	 * System.out.println("rd.videoreportdetail2(sqlSession,report,reno)"+rd.
	 * videoreportdetail2(sqlSession,report,reno ));
	 * 
	 * return rd.videoreportdetail2(sqlSession,report,reno); }
	 */
	
	
	//관리자 동영상 신고 상세 내역->신고
	@Override
	public int videoreportupdate(Report2 report ) {
		// TODO Auto-generated method stub
		 return rd.videoreportupdate(sqlSession,report);
	}

	@Override
	public List<Report> chreportdetail(int reno) {
		// TODO Auto-generated method stub
		return rd.chreportdetail(sqlSession,reno);
	}

	@Override
	public List<Report> repreportdetail(int reno) {
		// TODO Auto-generated method stub
		return rd.repreportdetail(sqlSession,reno);
	}
	 
	
	
 
	 

}
