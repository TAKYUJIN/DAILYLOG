package com.kh.with.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.with.member.model.dao.MemberDao;
import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDao md;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginMember(Member m) throws LoginException {
		// TODO Auto-generated method stub
		
		Member loginUser = md.loginMember(sqlSession, m);
		
		return md.loginMember(sqlSession, m);
		
		
	}

}
