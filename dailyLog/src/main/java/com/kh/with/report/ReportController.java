package com.kh.with.report;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.report.model.service.ReportService;

@Controller
@SessionAttributes("loginUser")

public class ReportController {
	@Autowired
	private ReportService rs;

	//동영상 메인 동영상 신고
	/*
	 * @RequestMapping(value="report.rp",method= RequestMethod.POST) public
	 * Map<String,Object> mainreport(@RequestBody Report report ){
	 * Map<String,Object> list =new HashMap<>(); int userNo =
	 * Integer.parseInt(request.getParameter("userNo"));
	 * 
	 * HttpSession session = request.getSession(); session.setAttribute("list",
	 * list); list = rs.mainreport(report,userNo);
	 * 
	 * return list;
	 * 
	 * 
	 * }
	 */
	
	@RequestMapping(value="report.rp",method= RequestMethod.POST)
	public ModelAndView mainreport(@RequestParam int userNo,HttpSession session ){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/");
		mav.addObject("mainreport", rs.mainreport(userNo,session));
		return mav;
		
		
	}
	
}
