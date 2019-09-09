package com.kh.with.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.admin.model.vo.Board;

public interface AdminDao {

	//공지사항 리스트 select 
	ArrayList<Board> adminNoticeList(SqlSessionTemplate sqlSession, Board board);

	//공지사항 작성 insert 
	int noticeWriteAdmin(SqlSessionTemplate sqlSession, Board board);

}
