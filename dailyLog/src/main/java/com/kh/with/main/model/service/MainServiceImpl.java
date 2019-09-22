package com.kh.with.main.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.main.model.dao.MainDao;
import com.kh.with.main.model.vo.Alram;
import com.kh.with.main.model.vo.MailVo;
import com.kh.with.main.model.vo.Subscribe;
import com.kh.with.main.model.vo.SubscribeVideo;
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
	//구독한 채널명
	@Override
	public ArrayList<Subscribe> subscribeList(Subscribe subscribe) {
		
		return md.subscribeList(sqlSession, subscribe);
	}

	//구독한 채널비디오
	@Override
	public ArrayList<SubscribeVideo> subscribeVideoList(SubscribeVideo subscribeVideo) {
		
		return md.subscribeVideoList(sqlSession, subscribeVideo);
	}

	@Override
	public int frireject(MailVo mailVo) {
		 
		return md.subscribeVideoList(sqlSession, mailVo);
	}

	@Override
	public int idcheck(String userId) {
		// TODO Auto-generated method stub

		return md.idcheck(sqlSession, userId);
		
	}



	@Override
	public ArrayList<Alram> selectAlram(Member m) {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * @Override
	 * 
	 * public Member idcheck(String userId) { // TODO Auto-generated method stub
	 * return md.idcheck(sqlSession, userId);
	 * 
	 * public ArrayList<Alram> selectAlram(Member m) { return
	 * md.selectAlram(sqlSession, m);
	 * 
	 * }
	 */
}



















