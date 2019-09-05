package com.kh.with.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao{
	
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
		  return sqlSession.update("Member.update_myPage", m); 
	  }
	  
	  
	@Override
	public ArrayList<Member> selectMyPage(SqlSessionTemplate sqlSession, Member m) {
		ArrayList<Member> list = null;
		
		list = (ArrayList)sqlSession.selectList("Member.selectMyPage", m);
		
		
		return list;
	}
	
	@Override
	public int delete_myPage(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		System.out.println("in222?????");
		return sqlSession.delete("Member.delete_myPage", m);
	}


}
