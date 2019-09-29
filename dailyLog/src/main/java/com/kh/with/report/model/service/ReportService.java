package com.kh.with.report.model.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.kh.with.main.model.vo.Alram;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;
import com.kh.with.report.model.vo.Report2;

public interface ReportService {
	 //메인 동영상 신고
	int mainreport(Report report);


	/* Object mainreport(Report report); */

	//관리자 동영상 신고 상세 내역
	List<Report> videoreportdetail(int reno);
	List<Report> chreportdetail(int reno);
	List<Report> repreportdetail(int reno);
	
	
	
	//관리자 동영상 신고 상세 내역->신고
	public int videoreportupdate(Report2 report);
	public int chreportupdate(Report2 report);
	public int rereportupdate(Report2 report);

	int alramreport(Alram alram);


	




 

	 
}
