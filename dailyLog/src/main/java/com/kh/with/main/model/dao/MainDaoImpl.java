package com.kh.with.main.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.main.model.vo.VideoLike;
import com.kh.with.member.model.vo.Member;

@Repository
public class MainDaoImpl implements MainDao{

	//북마크 조회
	@Override
	public ArrayList<VideoLike> selectBookmark(SqlSessionTemplate sqlSession, Member m) {
		ArrayList<VideoLike> bList = null;
		
		bList = (ArrayList)sqlSession.selectList("VideoLike.selectBookmark", m);
		
		return bList;
	}

}
