package com.kh.with.member.model.service;

import javax.servlet.http.HttpServletResponse;
import org.mybatis.spring.SqlSessionTemplate;
import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

public interface MemberService {



	int join_member(Member m, HttpServletResponse response) throws Exception;

	void check_id(String userId, HttpServletResponse response) throws Exception;

	String create_key() throws Exception;

	
	Member update_myPage(Member m) throws LoginException;
	
	//Member update_Pwd(Member m, String old_pwd, HttpServletResponse response);


}
