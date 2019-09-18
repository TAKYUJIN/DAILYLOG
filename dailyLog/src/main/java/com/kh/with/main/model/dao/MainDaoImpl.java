package com.kh.with.main.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.main.model.vo.Video;
import com.kh.with.main.model.vo.VideoLike;
import com.kh.with.member.model.vo.Member;

@Repository
public class MainDaoImpl implements MainDao{

	//북마크 조회
	@Override
	public ArrayList<VideoLike> showBookmark(SqlSessionTemplate sqlSession, Member m) {
		ArrayList<VideoLike> bList = null;
		
		bList = (ArrayList)sqlSession.selectList("VideoLike.showBookmark", m);
		
		return bList;
	}

	@Override
	public ArrayList<VideoLike> selectBookmark(SqlSessionTemplate sqlSession, VideoLike vl) {
		ArrayList<VideoLike> list = null;
		
		list = (ArrayList)sqlSession.selectList("VideoLike.selectBookmark", vl);
		return list;
	}

	@Override
	public List<Video> searchch(SqlSessionTemplate sqlSession, String search) {
		 
		
		return sqlSession.selectList("Video.searchch",search);
	}

	@Override
	public List<Video> searchtitle(SqlSessionTemplate sqlSession, String search) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Video.searchtitle",search);
	}

	@Override
	public List<Video> searchtag(SqlSessionTemplate sqlSession, String search) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Video.searchtag",search);
	}

 


}
