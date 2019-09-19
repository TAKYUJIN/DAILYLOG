package com.kh.with.main.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.main.model.dao.MainDao;
import com.kh.with.main.model.vo.Video;
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
	public ArrayList<VideoLike> showBookmark(Member m) {
		return md.showBookmark(sqlSession, m);
	}

	@Override
	public ArrayList<VideoLike> selectBookmark(VideoLike vl) {
		return md.selectBookmark(sqlSession, vl);
	}

	@Override
	public List<Video> searchch(String search) {
		// TODO Auto-generated method stub
		return md.searchch(sqlSession, search);
	}

	@Override
	public List<Video> searchtitle(String search) {
		// TODO Auto-generated method stub
		return md.searchtitle(sqlSession, search);
	}

	@Override
	public List<Video> searchtag(String search) {
		// TODO Auto-generated method stub
		return md.searchtag(sqlSession, search);
	}

 

}
