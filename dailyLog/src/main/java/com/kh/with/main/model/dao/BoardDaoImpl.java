package com.kh.with.main.model.dao;

import java.util.List;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.with.main.model.vo.Friend;
import com.kh.with.main.model.vo.MailVo;
import com.kh.with.member.model.vo.Member;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Inject
	SqlSession session;
	
	//친구 리스트
	@Override
	public List<MailVo> FriendList(Member m) throws Exception {
		System.out.println("session:"+session);
		
		 return session.selectList("friend.FriendList",m); 
 	}

	public List<Member> user(Member m) {
		// TODO Auto-generated method stub
		return session.selectList("friend.user",m); 
	}

	public List<MailVo> friendconfirm(Member m) {
		// TODO Auto-generated method stub
		return session.selectList("friend.friendconfirm",m);
	}

	public int frirequests(Friend f) {
		// TODO Auto-generated method stub
		return session.update("friend.frirequests",f);
	}

	public int frirequestf(Friend f) {
		// TODO Auto-generated method stub
		return session.update("friend.frirequestf",f);
	}

	public int frirequests1(Friend f) {
		// TODO Auto-generated method stub
		return session.update("friend.frirequests1",f);
	}

	 

}
