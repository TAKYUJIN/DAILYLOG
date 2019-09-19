package com.kh.with.main.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.main.model.vo.Video;
import com.kh.with.main.model.vo.VideoLike;
import com.kh.with.member.model.vo.Member;

public interface MainDao {

	//북마크 조회
	ArrayList<VideoLike> showBookmark(SqlSessionTemplate sqlSession, Member m);

	ArrayList<VideoLike> selectBookmark(SqlSessionTemplate sqlSession, VideoLike vl);

	List<Video> searchch(SqlSessionTemplate sqlSession, String search);

	List<Video> searchtitle(SqlSessionTemplate sqlSession, String search);

	List<Video> searchtag(SqlSessionTemplate sqlSession, String search);

 

}
