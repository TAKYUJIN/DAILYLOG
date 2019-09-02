package com.kh.with.member.model.service;

import javax.servlet.http.HttpServletResponse;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

public interface MemberService {

	

	int join_member(Member m, HttpServletResponse response) throws Exception;

	void check_id(String userId, HttpServletResponse response) throws Exception;

	String create_key() throws Exception;

}
