package com.kh.with.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.with.member.model.service.MemberService;
import com.kh.with.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	@RequestMapping(value = "loginbutton.me")
	public String showMemberloginView() {
		
		return "member/login";
	}
	
	//@RequestMapping(value = "login.me")
	//public String loginCheck(Member m, Model model) {

		/*
		 * String encPassword = passwordEncoder.encode(m.getUserPwd());
		 * 
		 * System.out.println(encPassword);
		 */

		//	Member loginUser = ms.loginMember(m);

		//	model.addAttribute("loginUser", loginUser);

		//	return "redirect:index.jsp";

		

	//}
	

}


