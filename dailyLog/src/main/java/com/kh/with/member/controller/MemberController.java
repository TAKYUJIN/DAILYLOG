package com.kh.with.member.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.with.member.model.service.MemberService;
import com.kh.with.member.model.service.MemberServiceImpl;
import com.kh.with.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	@Autowired
	private MemberServiceImpl service;


	//로그인 페이지로 이동  
	@RequestMapping(value="loginbutton.me")
	public String showMemberloginView() {
		System.out.println("in!!");
		return "member/login";
	}

	//회원가입 페이지로 이동 
	@RequestMapping(value="memberJoinView.me")
	public String showMemberJoinView() {
		System.out.println("dhsi?");
		return "member/memberJoin";
	}

	//회원가입
	@RequestMapping(value="join_member.me", method= RequestMethod.POST)
	public String join_member(@ModelAttribute Member m, RedirectAttributes rttr, HttpServletResponse response) throws Exception{
		rttr.addFlashAttribute("result", service.join_member(m, response));
		System.out.println(m);
		return "redirect:main.jsp";
	}
	
	//아이디 중복 검사
	@RequestMapping(value= "check_id.me", method= RequestMethod.POST)
	public void check_id(@RequestParam("userId") String userId, HttpServletResponse response) throws Exception{
		service.check_id(userId, response);
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


