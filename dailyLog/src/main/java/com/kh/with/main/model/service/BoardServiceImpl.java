package com.kh.with.main.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.with.main.model.dao.BoardDao;
import com.kh.with.main.model.dao.BoardDaoImpl;
import com.kh.with.main.model.vo.MailVo;
import com.kh.with.member.model.vo.Member;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	 BoardDaoImpl boarddao;
	
	@Override
	public List<MailVo> FriendList(Member m) throws Exception {
		System.out.println("serviceimpl list:");
		
		System.out.println("boarddao"+boarddao);
		
		return boarddao.FriendList(m);
	}

	@Override
	public List<Member> user(Member m) {
		// TODO Auto-generated method stub
		return boarddao.user(m);
	}
 
 
	
	

}
