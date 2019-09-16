package com.kh.with.main.model.service;

import java.util.List;


import com.kh.with.main.model.vo.MailVo;
import com.kh.with.member.model.vo.Member;

public interface BoardService {

	public List<MailVo> FriendList(Member m) throws Exception;

	public List<Member> user(Member m);

}
