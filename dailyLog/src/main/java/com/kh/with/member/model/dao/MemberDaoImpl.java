package com.kh.with.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	SqlSession sqlSession;

	//로그인용 메소드
	@Override
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) throws LoginException {

		Member loginUser = sqlSession.selectOne("Member.loginCheck", m);

		System.out.println("Dao Member : " + loginUser);

		if(loginUser == null) {
			throw new LoginException("로그인 정보가 존재하지 않습니다.");
		}

		return loginUser;
	}

	//아이디 중복 확인 
	@Override
	public int idCheck(String userId) {
		System.out.println("dao_idCheck() ... ");
		int result = sqlSession.selectOne("Member.idCheck", userId);

		return result;
	}

	//닉네임 중복 확인 
	@Override
	public int nickCheck(String nickname) {
		int result = sqlSession.selectOne("Member.nickCheck", nickname);
		System.out.println("dao_nickCheck() ... ");
		return result;
	}


	//회원가입용 메소드
	@Override
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		System.out.println("in!!!");
		return sqlSession.insert("Member.insertMember", m);
	}

	//암호화된 비밀번호 조회용 메소드
	@Override
	public String selectEncPassword(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("Member.selectPwd", m.getUserId());
	}
	//비밀번호 일치 시 회원 정보 조회용 메소드
	@Override
	public Member selectMember(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("Member.selectLoginUser", m);
	}



	//마이페이지
	@Override
	public int update_myPage(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("m.update_myPage", m); 
	}




}
