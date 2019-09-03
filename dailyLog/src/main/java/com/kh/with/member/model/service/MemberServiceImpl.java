package com.kh.with.member.model.service;

import java.io.PrintWriter;
import java.util.Random;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.kh.with.member.model.dao.MemberDao;
import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	private MemberDao md;
	
	@Override
	public void check_id(String userId, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		out.println(md.check_id(userId));
		out.close();
		
	}
	
	@Override
	public int join_member(Member m, HttpServletResponse response) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(md.check_id(m.getUserId()) == 1) {
			out.println("<script>");
			out.println("alert('동일한 아이디가 있습니다.');");
			out.println("history.go(-1);");
			out.println("<script>");
			out.close();
			return 0;
		}else {
			md.join_member(m);
			return 1;
		}
		
	}
	
	@Override
	public String create_key() throws Exception{
		String key = "";
		Random rd = new Random();
		
		for(int i = 0; i < 8; i++) {
			key += rd.nextInt(10);
		}
		
		return key;
	}


	@Override
	public Member update_myPage(Member m) throws LoginException {
		// TODO Auto-generated method stub
//		md.update_myPage(sqlSession, m);
//		return md.loginMember(sqlSession, m);
		return m;
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
