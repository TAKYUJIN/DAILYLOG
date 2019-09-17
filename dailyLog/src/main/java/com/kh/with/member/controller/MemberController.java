package com.kh.with.member.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.with.common.CommonUtils;
import com.kh.with.main.model.service.MailSendService;
import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.service.MemberService;
import com.kh.with.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser") // loginUser가 담기면 자동으로 session에 올라간다.
public class MemberController {

	@Autowired
	private MemberService ms;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private MailSendService mailSender;

	//로그인 페이지로 이동 
	@RequestMapping(value = "loginbutton.me")
	public String showMemberloginView() {

		return "member/login";

	}
	
	//아이디 찾기 페이지로 이동 
	@RequestMapping(value = "findId.me")
	public String showFindId() {

		return "member/findId";

	}

	// 로그아웃 
	@RequestMapping("logout.me")
	public String logout(SessionStatus status) {

		status.setComplete();

		return "redirect:index.jsp";
	}

	//회원가입 페이지로 이동 
	@RequestMapping(value = "memberJoinView.me")
	public String showMemberJoinView() {

		return "member/memberJoin";
	}

	// 회원 로그인 
	@RequestMapping(value = "login.me")
	public String loginCheck(Member m, Model model) {

		try {
			Member loginUser = ms.loginMember(m);

			model.addAttribute("loginUser", loginUser);
			System.out.println(loginUser.getUserNm());
			
			
			if(loginUser.getStatus().equals("0")) {
				if(loginUser.getUserNm().equals("관리자")) {
					return "main/adminMain";
				}else {
					return "redirect:index.jsp";
				}
			}else {
				return "member/emailChk";
			}
			
			
			
			

		} catch (LoginException e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage"; 
		}

	}

	// 회원가입 
	@RequestMapping(value = "insert.me", method= {RequestMethod.GET, RequestMethod.POST})
	public String insertMember(Model model, Member m, HttpServletRequest request) {

		System.out.println(m);

		String root = request.getSession().getServletContext().getRealPath("resources");

		try {


			m.setUserPwd(passwordEncoder.encode(m.getUserPwd()));
			System.out.println(m.getUserPwd());

			if (m.getGender().equals("남")) {
				m.setGender("M");
			} else {
				m.setGender("F");
			}

			ms.insertMember(m);
			System.out.println("컨트롤러 회원가입 ");
			
			ms.mailSendWithUserKey(m, request);
			
			System.out.println("email 인즈");
			
			

			return "redirect:index.jsp";

		} catch (Exception e) {

			model.addAttribute("msg", "회원 가입 실패");
			return "common/errorPage";
		}

	}

	
	@RequestMapping(value = "joinFinal.me", method = RequestMethod.GET)
	public String key_alterConfirm(@RequestParam("userNm") String userNm, @RequestParam("userId") String userId, @RequestParam("status") String status) {

		ms.alter_userKey_service(userId, status);

		return "member/login2";
	}
	
	
	@RequestMapping("duplicationCheck.me")
	public ModelAndView duplicationCheck(String userId, ModelAndView mv) {

		Member m = new Member();
		m.setUserId(userId);

		mv.addObject("member", m);
		mv.setViewName("jsonView");

		return mv;
	}


//	//마이페이지 이동
//	@RequestMapping(value="myPage.me")
//	public String myPage() {
//		return"member/myPage";
//	}
//
//	/*
//	 * //myPage 수정
//	 * 
//	 * @RequestMapping(value = "/update_myPage.me", method = RequestMethod.POST)
//	 * public String update_mypage(@ModelAttribute Member m, HttpSession session,
//	 * RedirectAttributes rttr) throws Exception{ session.setAttribute("m",
//	 * ms.update_myPage(m)); rttr.addFlashAttribute("msg", "회원정보 수정 완료"); return
//	 * "redirect:/member/mypage.do"; }
//	 */
//
//	/*
//	 * // 비밀번호 변경
//	 * 
//	 * @RequestMapping(value = "/update_pw.do", method = RequestMethod.POST) public
//	 * String update_pw(@ModelAttribute Member m, @RequestParam("old_pw") String
//	 * old_pw, HttpSession session, HttpServletResponse response, RedirectAttributes
//	 * rttr) throws Exception{ session.setAttribute("member", ms.update_pw(m,
//	 * old_pw, response)); }
//	 */

	//아이디 중복확인 
	@RequestMapping(value="idCheck.me", method=RequestMethod.GET)
	@ResponseBody
	public String idCheck(HttpServletRequest request) {

		String userId = request.getParameter("userId");
		int result = ms.idCheck(userId);

		return Integer.toString(result);

	}


	//닉네 중복확인 
	@RequestMapping(value="nickCheck.me", method=RequestMethod.GET)
	@ResponseBody
	public String nickCheck(HttpServletRequest request) {

		String nickname = request.getParameter("nickname");
		int result = ms.nickCheck(nickname);

		return Integer.toString(result);

	}
	
	//phone 중복확인 
		@RequestMapping(value="phoneCheck.me", method=RequestMethod.GET)
		@ResponseBody
		public String phoneCheck(HttpServletRequest request) {

			String phone = request.getParameter("phone");
			int result = ms.phoneCheck(phone);

			return Integer.toString(result);

		}
		
	//문자전송
		

	// 마이페이지 이동
		@RequestMapping(value = "myPage.me")
		public String myPage(Model model, Member m, HttpSession session) {
			m = (Member) session.getAttribute("loginUser");

			ArrayList<Member> list = ms.selectMyPage(m);
			System.out.println("list " + list);
			model.addAttribute("memberList", list.get(0));
			return "member/myPage";
		}
		// myPage 수정
		@RequestMapping(value = "update_myPage.me", method = RequestMethod.POST)
		public String update_mypage(@ModelAttribute Member m,Model model,HttpServletRequest request,
				@RequestParam(name="pro", required=false) MultipartFile pro ,HttpSession session, RedirectAttributes rttr)
				throws Exception {
			
			System.out.println(pro);
			System.out.println("******************************* : " + m);
			
			System.out.println("왔냐 ? ::::" + m);
			
			
			String root = request.getSession().getServletContext().getRealPath("resources");
//			System.out.println(encPassword);
			
			String filePath = root + "\\ images";
			
			//파일명 변경
//					String originFileName = pro.getOriginalFilename();
//					String ext = originFileName.substring(originFileName.lastIndexOf("."));
//					String changeName = CommonUtils.getRandomString();
					try {
//					pro.transferTo(new File(filePath + "\\" +changeName +ext));
				
				String encPassword = passwordEncoder.encode(m.getUserPwd());
				System.out.println(encPassword);
				
				m.setUserPwd(encPassword);
				System.out.println("insertMember : " + m);
				
				ms.update_myPage(m);
				
				
				
				return "forward:index.jsp";
					} catch (Exception e) {
//						new File(filePath + "\\" + changeName + ext).delete();
						
						model.addAttribute("msg", "마이페이지 수정 실패");
						return "common/errorPage";
					}
		}
		//mypage 탈퇴
		@RequestMapping(value = "delete_myPage.me", method = RequestMethod.POST)
		public String delete_mypage(@ModelAttribute Member m,Model model,HttpServletRequest request,
				HttpSession session, RedirectAttributes rttr)
				throws Exception {
			
			
		
			ms.delete_myPage(m);
			
			System.out.println("탈퇴인가요 ?");
			return "forward:logout.me";
		}
		
		
		//회원 중지
		@RequestMapping(value="ustop.me", method = RequestMethod.GET )
		public String ustop(@ModelAttribute Member m,Model model,HttpServletRequest request,
				@RequestParam(name="userId", required=false)String userId,HttpSession session) {
			  userId=request.getParameter("userId");
			System.out.println("userId"+userId);
			m.setUserId(userId);
			ms.ustop(m);
			
			return "redirect:/ublacklist.ad";
		}
		
}
