package com.kh.with.member.model.service;

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

	
	  //마이페이지 수정
	  
	  @Override public Member update_myPage(Member m) throws LoginException {
		  //TODO Auto-generated method stub 
	  md.update_myPage(sqlSession, m); 
	  return md.loginMember(sqlSession, m); 
	  }
	 

	@Override
	public int insertMember(Member m) {
		System.out.println("service in!!");

		int result = md.insertMember(sqlSession, m);

		System.out.println("result : " + result);

		return result;
	}

}
