package com.kh.with.main.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.with.main.model.vo.MailVo;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Inject
	private SqlSession session;
	
	//친구 리스트
	@Override
	public List<MailVo> FriendsList(MailVo mailVo) {

		return session.selectList("FriendsList", mailVo);
	}

}
