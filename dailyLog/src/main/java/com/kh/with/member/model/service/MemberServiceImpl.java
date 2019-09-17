package com.kh.with.member.model.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.with.main.model.dao.MailDao;
import com.kh.with.member.model.dao.MemberDao;
import com.kh.with.member.model.dao.MemberMailDao;
import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberDao md;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	@Autowired
	private JavaMailSender mailSender;
	



	@Override
	public Member loginMember(Member m) throws LoginException {
		// 스프링은 기본적으로 자동으로 commit을 해준다.
		Member loginUser = null;

		String encPassword = md.selectEncPassword(sqlSession, m);

		if (!passwordEncoder.matches(m.getUserPwd(), encPassword)) {
			throw new LoginException("로그인 실패!");
		} else {
			loginUser = md.selectMember(sqlSession, m);
		}

		return loginUser;
	}



	@Override
	public int idCheck(String userId) {
		int result = md.idCheck(userId);
		return result;
	}	


	@Override
	public int nickCheck(String nickname) {
		int result = md.nickCheck(nickname);
		return result;
	}
	
	@Override
	public int phoneCheck(String phone) {
		int result = md.phoneCheck(phone);
		return result;
	}

	@Override
	public int update_myPage(Member m) throws LoginException {
		// TODO Auto-generated method stub
		return md.update_myPage(sqlSession, m);
	}


	@Override
	public int insertMember(Member m) {
		System.out.println("service in!!");

		int result = md.insertMember(sqlSession, m);

		System.out.println("result : " + result);

		return result;
	}

	@Override
	public ArrayList<Member> selectMyPage(Member m) {

		return md.selectMyPage(sqlSession, m);
	}

	@Override
	public int delete_myPage(Member m) throws Exception {
		// TODO Auto-generated method stub

		System.out.println("in?????");


		return md.delete_myPage(sqlSession, m) ;

	}

	// 이메일 난수 만드는 메서드
	private String init() {
		Random ran = new Random();
		StringBuffer sb = new StringBuffer();
		int num = 0;

		do {
			num = ran.nextInt(75) + 48;
			if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
				sb.append((char) num);
			} else {
				continue;
			}

		} while (sb.length() < size);
		if (lowerCheck) {
			return sb.toString().toLowerCase();
		}
		
		System.out.println(sb.toString());
		return sb.toString();
	}

	// 난수를 이용한 키 생성
	private boolean lowerCheck;
	private int size;

	public String getKey(boolean lowerCheck, int size) {
		this.lowerCheck = lowerCheck;
		this.size = size;
		
		return init();
	}


	@Override
	public void mailSendWithUserKey(Member m, HttpServletRequest request) {
		System.out.println("메일 왜안오냐");
		//String id = (String) request.getAttribute(userId);
		String key = getKey(false, 20);
		//System.out.println(userId  + ":::" +id);
		//System.out.println("key : " + key);
		m.setStatus(key);
		
		md.GetKey(m); 
		System.out.println(";;;;;;;;");
		
		
		MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>안녕하세요 데일리로그입니다!</h2><br><br>" 
				+ "<h3>" + m.getUserNm() + "님</h3>" + "<p>가입하기 버튼을 누르시면 로그인을 하실 수 있습니다 : " 
				+ "<a href='http://localhost:8001" + request.getContextPath() + "/joinFinal.me?userNm="+ m.getUserNm() +"&userId="+m.getUserId()+ "&status="+m.getStatus()+"'>가입하기</a></p>"
				+ "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";
		try {
			mail.setSubject("[본인인증] 데일리로그의 인증메일입니다", "utf-8");
			mail.setText(htmlStr, "utf-8", "html");
			mail.addRecipient(RecipientType.TO, new InternetAddress(m.getUserId()));
			mailSender.send(mail);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		System.out.println("durlsms? ");

	}

		



		@Override
		public int ustop(Member m) {
		 
			return md.ustop(sqlSession,m);
		}



		@Override
		public int alter_userKey_service(String userId, String status) {
			int resultCnt = 0;
			
			resultCnt = md.alter_userKey(userId, status);
			
			return resultCnt;
		}



		



	 




	
}