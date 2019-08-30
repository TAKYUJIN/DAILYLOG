package com.kh.with.member.model.service;

import com.kh.with.member.model.exception.LoginException;
import com.kh.with.member.model.vo.Member;

public interface MemberService {

	Member loginMember(Member m) throws LoginException;

}
