package com.kh.with.main.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.main.model.dao.MainDao;
import com.kh.with.main.model.vo.VideoLike;
import com.kh.with.member.model.vo.Member;


@Service
public class MainServiceImpl implements MainService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MainDao md;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	//북마크 조회
	@Override
	public ArrayList<VideoLike> selectBookmark(Member m) {
		return md.selectBookmark(sqlSession, m);
	}

}
