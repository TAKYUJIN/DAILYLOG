package com.kh.with.main.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.with.main.model.dao.BoardDao;
import com.kh.with.main.model.dao.BoardDaoImpl;
import com.kh.with.main.model.vo.MailVo;
@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	BoardDaoImpl boarddao;
	
	@Override
	public List<MailVo> FriendList() throws Exception {
		return boarddao.FriendList();
	}
	
	

}
