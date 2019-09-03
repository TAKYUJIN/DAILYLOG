package com.kh.with.member.model.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.with.member.model.dao.MemberDao;
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

	
//	@Override
//	public void check_id(String userId, HttpServletResponse response) throws Exception {
//		// TODO Auto-generated method stub
//		PrintWriter out = response.getWriter();
//		out.println(md.check_id(userId));
//		out.close();
//		
//	}
//	

	@Override
	public Member loginMember(Member m) throws LoginException {
		// 스프링은 기본적으로 자동으로 commit을 해준다.
		Member loginUser = null;

		String encPassword = md.selectEncPassword(sqlSession, m);

		if(!passwordEncoder.matches(m.getUserPwd(), encPassword)) {
			throw new LoginException("로그인 실패!");
		}else {
			loginUser = md.selectMember(sqlSession, m);
		}


		return loginUser;
	}



	/*
	 * @Override public Member update_myPage(Member m) throws LoginException { //
	 * TODO Auto-generated method stub md.update_myPage(sqlSession, m); return
	 * md.loginMember(sqlSession, m); }
	 */




	@Override
	public int insertMember(Member m) {


		return md.insertMember(sqlSession, m);
	}



}
