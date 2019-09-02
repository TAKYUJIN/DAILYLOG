package com.kh.with.member.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.service.MemberService;
import com.kh.with.member.model.vo.Member;

import sun.misc.Service;

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
	
	//마이페이지 이동
	@RequestMapping(value="myPage.me")
	public String myPage() {
		return"member/myPage";
	}
	
	//myPage 수정
	@RequestMapping(value = "/update_myPage.me", method = RequestMethod.POST)
	public String update_mypage(@ModelAttribute Member m, HttpSession session, RedirectAttributes rttr)
			throws Exception{
		session.setAttribute("m", ms.update_myPage(m));
		rttr.addFlashAttribute("msg", "회원정보 수정 완료");
		return "redirect:/member/mypage.do";
	}
	
	/*
	 * // 비밀번호 변경
	 * 
	 * @RequestMapping(value = "/update_pw.do", method = RequestMethod.POST) public
	 * String update_pw(@ModelAttribute Member m, @RequestParam("old_pw") String
	 * old_pw, HttpSession session, HttpServletResponse response, RedirectAttributes
	 * rttr) throws Exception{ session.setAttribute("member", ms.update_pw(m,
	 * old_pw, response)); }
	 */
}


