package com.kh.with.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.service.MemberService;
import com.kh.with.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	
	
	//로그인 페이지로 이동  
	@RequestMapping(value = "loginbutton.me")
	public String showMemberloginView() {
		
		return "member/login";
	}
	
	//로그인 
	@RequestMapping(value = "login.me")
	public String loginCheck(Member m, Model model) {
		
		System.out.println(m);
		
		/*
		 * String encPassword = passwordEncoder.encode(m.getUserPwd());
		 * 
		 * System.out.println(encPassword);
		 */

		try {
			
			Member loginUser = ms.loginMember(m);

			model.addAttribute("loginUser", loginUser);

			return "redirect:index.jsp";
		

		} catch (LoginException e) {
			model.addAttribute("msg", e.getMessage());
			//return "common/errorPage";
			return "redirect:index.jsp";
		}

	}
	

}


