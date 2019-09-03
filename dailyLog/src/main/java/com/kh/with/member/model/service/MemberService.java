package com.kh.with.member.model.service;

import javax.servlet.http.HttpServletResponse;
import org.mybatis.spring.SqlSessionTemplate;
import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

public interface MemberService {


	//로그인 정보 확인용 메소드
	Member loginMember(Member m) throws LoginException;

	int insertMember(Member m);



}
