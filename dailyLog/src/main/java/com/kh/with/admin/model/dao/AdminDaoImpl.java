package com.kh.with.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.member.model.vo.Member;


@Repository
public class AdminDaoImpl implements AdminDao {

	//공지사항 리스트 select 
	@Override
	public ArrayList<Board> adminNoticeList(SqlSessionTemplate sqlSession, Board board) {
		ArrayList<Board> aboard = null;
		
		aboard = (ArrayList)sqlSession.selectList("Board.adminNoticeList", board);
		
		return aboard;
	}

	//공지사항 작성 insert
	@Override
	public int noticeWriteAdmin(SqlSessionTemplate sqlSession, Board board) {
		
		
		return sqlSession.insert("Board.noticeWriteAdmin",board);
	}

	


}
