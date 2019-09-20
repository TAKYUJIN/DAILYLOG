package com.kh.with.report.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.with.HomeController;
import com.kh.with.main.model.vo.Alram;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.service.ReportService;
import com.kh.with.report.model.vo.Report;

@Controller
@SessionAttributes("loginUser")

public class ReportController {
	@Autowired
	private ReportService rs;
	private  final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//동영상 메인 동영상 신고
	 @RequestMapping(value="report.rp",method= RequestMethod.POST) 
	 public String	 mainreport(Model model,HttpServletRequest request, 
			 @RequestParam(name = "userNo", required = false)  int userNo)
	 { userNo=((Member)request.getSession().getAttribute("loginUser")).getUserNo(); int vNo=
	  Integer.parseInt(request.getParameter("vNo")); 
	 String rewhy=
	  request.getParameter("rewhy"); String chNm=request.getParameter("chNm");
	  String rety= request.getParameter("rety"); String retarget=
	  request.getParameter("retarget");
	  String vTitle=request.getParameter("vTitle");
	  
	  String alCT=vTitle+" 동영상이 "+rewhy+"사유로 신고 되었습니다.";
	  
	  Report report =new Report ();
      Alram alram =new Alram();
     
	  
	  report.setRetarget(retarget); report.setUserNo(userNo); 
	  report.setvNo(vNo);
	  report.setRewhy(rewhy); report.setChNm(chNm); report.setRety(rety);
	  report.setvTitle(vTitle);
	 
	alram.setRetarget(retarget);
	  
	  alram.setAlCT(alCT);
	  alram.setvNo(vNo);
	  System.out.println(vTitle);
	  System.out.println(alCT);
	  System.out.println(alram);
	  
	  int result =rs.mainreport(report);
	  int result1 =rs.alramreport(alram);
	  
	  
	  
	  if (result > 0 && result1>0) { return "redirect:/home.mb"; } else {
	  model.addAttribute("msg", "신고 실패"); 
	  return "common/errorPage"; }
	  
	  }
	 
	  
	 //관리자 동영상 신고 상세보기
	 
	/*
	 * @RequestMapping(value="videoreportdetail.ad",method=RequestMethod.GET) public
	 * String videoreportdetail(@RequestParam("reno") int reno,Model
	 * model,HttpSession session ) { logger.info("get read"); Report report =new
	 * Report (); List<Report> videoreportdetail=rs.videoreportdetail(reno);
	 * 
	 * model.addAttribute("videoreportdetail", report); return
	 * "admin/videoreportdetail";
	 * 
	 * }
	 */
	 
	
	 
	 
	 
	 
	  
} 
	
	
	
	
	
 
	
	
	
 
