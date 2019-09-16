package com.kh.with.main.model.dao;

import java.util.List;

import com.kh.with.main.model.vo.MailVo;
import com.kh.with.member.model.vo.Member;

public interface BoardDao {

	 

	List<MailVo> FriendList(Member m) throws Exception;

}
