package com.kh.with.member.model.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

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

	@Override
	public Member update_myPage(Member m) throws LoginException {
		// TODO Auto-generated method stub
		md.update_myPage(sqlSession, m);
		return md.loginMember(sqlSession, m);
	}

	//비밀변호 변경
	/*
	 * @Override public Member update_Pwd(Member m, String old_pwd,
	 * HttpServletResponse response) {
	 * response.setContentType("text/html;charset=utf-8"); PrintWriter out =
	 * response.getWriter();
	 * if(!old_pwd.equals(md.login(m.getUserId()).getUserPwd())) {
	 * out.println("<script>"); out.println("alert('기존 비밀번호가 다릅니다.');");
	 * out.println("history.go(-1);"); out.println("</script>"); out.close(); return
	 * null; }else { md.update_Pwd(m); return md.loginMember(sqlSession, m); } }
	 */

	


	
	

}
