package com.kh.with.member.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.InetAddress;
import java.net.Socket;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Base64.Decoder;
import java.util.Base64.Encoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;


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
import org.apache.commons.codec.binary.Base64; // commons-codec-1.5.jar

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
	
	public static String nullcheck(String str,  String Defaultvalue ) throws Exception
    {
         String ReturnDefault = "" ;
         if (str == null)
         {
             ReturnDefault =  Defaultvalue ;
         }
         else if (str == "" )
        {
             ReturnDefault =  Defaultvalue ;
         }
         else
         {
                     ReturnDefault = str ;
         }
          return ReturnDefault ;
    }
	/*
	public static String base64Encode(String str)  throws java.io.IOException {
    	sun.misc.BASE64Encoder encoder = new sun.misc.BASE64Encoder();
        byte[] strByte = str.getBytes();
        String result = encoder.encode(strByte);
        return result ;
    }
	
	public static String base64Decode(String str)  throws java.io.IOException {
        sun.misc.BASE64Decoder decoder = new sun.misc.BASE64Decoder();
        byte[] strByte = decoder.decodeBuffer(str);
        String result = new String(strByte);
        return result ;
    }*/
	
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
	
	@RequestMapping(value = "findPwd.me")
	public String showFindPwd() {

		return "member/findPwd";

	}
	/*
	@RequestMapping(value = "smssend.me", method= RequestMethod.POST)
	public ModelAndView showsmssend(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String charsetType = "UTF-8"; //EUC-KR 또는 UTF-8

	    request.setCharacterEncoding(charsetType);
	    response.setCharacterEncoding(charsetType);
		
	    String action = nullcheck(request.getParameter("action"), "");
	    if(action.equals("go")) {

	        String sms_url = "";
	        sms_url = "https://sslsms.cafe24.com/sms_sender.php"; // SMS 전송요청 URL
	        String user_id = base64Encode("yjtakk"); // SMS아이디
	        String secure = base64Encode("76c5f59bafb5ea0e6d62d20d096ef051");//인증키
	        String msg = base64Encode(nullcheck(request.getParameter("msg"), ""));
	        String rphone = base64Encode(nullcheck(request.getParameter("rphone"), ""));
	        String sphone1 = base64Encode(nullcheck(request.getParameter("sphone1"), ""));
	        String sphone2 = base64Encode(nullcheck(request.getParameter("sphone2"), ""));
	        String sphone3 = base64Encode(nullcheck(request.getParameter("sphone3"), ""));
	        String rdate = base64Encode(nullcheck(request.getParameter("rdate"), ""));
	        String rtime = base64Encode(nullcheck(request.getParameter("rtime"), ""));
	        String mode = base64Encode("1");
	        String subject = "";
	        if(nullcheck(request.getParameter("smsType"), "").equals("L")) {
	            subject = base64Encode(nullcheck(request.getParameter("subject"), ""));
	        }
	        String testflag = base64Encode(nullcheck(request.getParameter("testflag"), ""));
	        String destination = base64Encode(nullcheck(request.getParameter("destination"), ""));
	        String repeatFlag = base64Encode(nullcheck(request.getParameter("repeatFlag"), ""));
	        String repeatNum = base64Encode(nullcheck(request.getParameter("repeatNum"), ""));
	        String repeatTime = base64Encode(nullcheck(request.getParameter("repeatTime"), ""));
	        String returnurl = nullcheck(request.getParameter("returnurl"), "");
	        String nointeractive = nullcheck(request.getParameter("nointeractive"), "");
	        String smsType = base64Encode(nullcheck(request.getParameter("smsType"), ""));

	        String[] host_info = sms_url.split("/");
	        String host = host_info[2];
	        String path = "/" + host_info[3];
	        int port = 80;

	        // 데이터 맵핑 변수 정의
	        String arrKey[]
	            = new String[] {"user_id","secure","msg", "rphone","sphone1","sphone2","sphone3","rdate","rtime"
	                        ,"mode","testflag","destination","repeatFlag","repeatNum", "repeatTime", "smsType", "subject"};
	        String valKey[]= new String[arrKey.length] ;
	        valKey[0] = user_id;
	        valKey[1] = secure;
	        valKey[2] = msg;
	        valKey[3] = rphone;
	        valKey[4] = sphone1;
	        valKey[5] = sphone2;
	        valKey[6] = sphone3;
	        valKey[7] = rdate;
	        valKey[8] = rtime;
	        valKey[9] = mode;
	        valKey[10] = testflag;
	        valKey[11] = destination;
	        valKey[12] = repeatFlag;
	        valKey[13] = repeatNum;
	        valKey[14] = repeatTime;
	        valKey[15] = smsType;
	        valKey[16] = subject;

	        String boundary = "";
	        Random rnd = new Random();
	        String rndKey = Integer.toString(rnd.nextInt(32000));
	        MessageDigest md = MessageDigest.getInstance("MD5");
	        byte[] bytData = rndKey.getBytes();
	        md.update(bytData);
	        byte[] digest = md.digest();
	        for(int i =0;i<digest.length;i++)
	        {
	            boundary = boundary + Integer.toHexString(digest[i] & 0xFF);
	        }
	        boundary = "---------------------"+boundary.substring(0,11);

	        // 본문 생성
	        String data = "";
	        String index = "";
	        String value = "";
	        for (int i=0;i<arrKey.length; i++)
	        {
	            index =  arrKey[i];
	            value = valKey[i];
	            data +="--"+boundary+"\r\n";
	            data += "Content-Disposition: form-data; name=\""+index+"\"\r\n";
	            data += "\r\n"+value+"\r\n";
	            data +="--"+boundary+"\r\n";
	        }

	        //out.println(data);

	        InetAddress addr = InetAddress.getByName(host);
	        Socket socket = new Socket(host, port);
	        // 헤더 전송
	        BufferedWriter wr = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
	        wr.write("POST "+path+" HTTP/1.0\r\n");
	        wr.write("Content-Length: "+data.length()+"\r\n");
	        wr.write("Content-type: multipart/form-data, boundary="+boundary+"\r\n");
	        wr.write("\r\n");

	        // 데이터 전송
	        wr.write(data);
	        wr.flush();

	        // 결과값 얻기
	        BufferedReader rd = new BufferedReader(new InputStreamReader(socket.getInputStream()));
	        String line;
	        String alert = "";
	        ArrayList tmpArr = new ArrayList();
	        while ((line = rd.readLine()) != null) {
	            tmpArr.add(line);
	        }
	        wr.close();
	        rd.close();

	        String tmpMsg = (String)tmpArr.get(tmpArr.size()-1);
	        String[] rMsg = tmpMsg.split(",");
	        String Result= rMsg[0]; //발송결과
	        String Count= ""; //잔여건수
	        if(rMsg.length>1) {Count= rMsg[1]; }

	                        //발송결과 알림
	        if(Result.equals("success")) {
	            alert = "성공적으로 발송하였습니다.";
	            alert += " 잔여건수는 "+ Count+"건 입니다.";
	        }
	        else if(Result.equals("reserved")) {
	            alert = "성공적으로 예약되었습니다";
	            alert += " 잔여건수는 "+ Count+"건 입니다.";
	        }
	        else if(Result.equals("3205")) {
	            alert = "잘못된 번호형식입니다.";
	        }
	        else {
	            alert = "[Error]"+Result;
	        }

	        System.out.println(nointeractive);

	        if(nointeractive.equals("1") && !(Result.equals("Test Success!")) && !(Result.equals("success")) && !(Result.equals("reserved")) ) {
	            System.out.println("<script>alert('" + alert + "')</script>");
	        }
	        else if(!(nointeractive.equals("1"))) {
	            System.out.println("<script>alert('" + alert + "')</script>");
	        }


	        System.out.println("<script>location.href='"+returnurl+"';</script>");
	    }
	    
	    mv.setViewName("jsonView");
	    
		return mv;

	}*/

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

