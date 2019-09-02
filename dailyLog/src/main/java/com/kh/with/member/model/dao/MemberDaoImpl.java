package com.kh.with.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao{
	
	//로그인 메소드  
	@Override
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) throws LoginException {
		
		Member loginUser = sqlSession.selectOne("Member.loginCheck", m);
		
		System.out.println("Dao member : " + loginUser);
		
		if(loginUser == null) {
			throw new LoginException("로그인 정보가 존재하지 않습니다.");
		}
		
		return loginUser;
	}

	//마이페이지
	@Override
	public int update_myPage(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("m.update_myPage", m);
	}

	


}
