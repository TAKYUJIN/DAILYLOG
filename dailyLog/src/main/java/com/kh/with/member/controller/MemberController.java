package com.kh.with.member.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.service.MemberService;
import com.kh.with.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")   //loginUser가 담기면 자동으로 session에 올라간다.
public class MemberController {

	@Autowired
	private MemberService ms;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder; 

	
	@RequestMapping(value="loginbutton.me")
	public String showMemberloginView() {

		return "member/login";

	}
	
	@RequestMapping("logout.me")
	public String logout(SessionStatus status) {

		status.setComplete();

		return "redirect:index.jsp";
	}

	@RequestMapping(value="memberJoinView.me")
	public String showMemberJoinView() {

		return "member/memberJoin";
	}


	@RequestMapping(value="login.me")
	public String loginCheck(Member m, Model model) {


		try {
			Member loginUser = ms.loginMember(m);

			model.addAttribute("loginUser", loginUser);

			return "redirect:index.jsp";

		} catch (LoginException e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}

	}

	@RequestMapping(value="insert.me")
	public String insertMember(Model model, Member m, HttpServletRequest request) {

		System.out.println(m);

		String root = request.getSession().getServletContext().getRealPath("resources");

		System.out.println(root);
		
		System.out.println(m.getGender());
		
		try {
			

			m.setUserPwd(passwordEncoder.encode(m.getUserPwd()));
			System.out.println(m.getUserPwd());

			if(m.getGender().equals("남")) {
				m.setGender("M");
			}else {
				m.setGender("F");
			}

			ms.insertMember(m);

			return "redirect:index.jsp";

		} catch (Exception e) {
			

			model.addAttribute("msg", "회원 가입 실패");
			return "common/errorPage";
		}

	}



	@RequestMapping("duplicationCheck.me")
	public ModelAndView duplicationCheck(String userId, ModelAndView mv) {

		Member m = new Member();
		m.setUserId(userId);

		mv.addObject("member", m);
		mv.setViewName("jsonView");


		return mv;
	}
	
	//마이페이지 이동
	@RequestMapping(value="myPage.me")
	public String myPage() {
		return"member/myPage";
	}
	
	/*
	 * //myPage 수정
	 * 
	 * @RequestMapping(value = "/update_myPage.me", method = RequestMethod.POST)
	 * public String update_mypage(@ModelAttribute Member m, HttpSession session,
	 * RedirectAttributes rttr) throws Exception{ session.setAttribute("m",
	 * ms.update_myPage(m)); rttr.addFlashAttribute("msg", "회원정보 수정 완료"); return
	 * "redirect:/member/mypage.do"; }
	 */
	
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




