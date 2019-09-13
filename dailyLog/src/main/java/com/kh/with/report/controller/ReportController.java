package com.kh.with.report.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.service.ReportService;
import com.kh.with.report.model.vo.Report;

@Controller
@SessionAttributes("loginUser")

public class ReportController {
	@Autowired
	private ReportService rs;

	//동영상 메인 동영상 신고
	 @RequestMapping(value="report.rp",method= RequestMethod.POST) 
	 public String	 mainreport(Model model,HttpServletRequest request, 
			 @RequestParam(name = "userNo", required = false)  int userNo)
	 { userNo=((Member)request.getSession().getAttribute("loginUser")).getUserNo(); int vNo=
	  Integer.parseInt(request.getParameter("vNo")); String rewhy=
	  request.getParameter("rewhy"); String chNm=request.getParameter("chNm");
	  String rety= request.getParameter("rety"); String retarget=
	  request.getParameter("retarget");
	  
	  Report report =new Report ();
	  
	  report.setRetarget(retarget); report.setUserNo(userNo); report.setvNo(vNo);
	  report.setRewhy(rewhy); report.setChNm(chNm); report.setRety(rety);
	  
	  int result =rs.mainreport(report);
	  
	  if (result > 0) { return "redirect:/home.mb"; } else {
	  model.addAttribute("msg", "신고 실패"); return "common/errorPage"; }
	  
	  }
	 
	  
	  
} 
	
	
	
	
	
 
	
	
	
 
