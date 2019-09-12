package com.kh.with.report.model.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.kh.with.report.model.vo.Report;

public interface ReportService {
	 //메인 동영상 신고

	Object mainreport(int userNo, HttpSession session);

	 
}
