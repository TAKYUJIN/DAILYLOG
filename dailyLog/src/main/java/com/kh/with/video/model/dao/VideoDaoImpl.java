package com.kh.with.video.model.dao;



import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Video;

@Repository
public class VideoDaoImpl implements VideoDao{

	//동영상 페이지 포인트 조회
	@Override
	public int selectPoint(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("Member.selectPoint", m);
	}
	//동영상정기후원
	@Override
	public int regSub(SqlSessionTemplate sqlSession, Member m) {



		return sqlSession.update("Member.regSub", m);
	}
	
	//동영상 업로드정보 insert 메소드
	@Override
	public int insertVideoInfo(SqlSessionTemplate sqlSession, Video video) {
		
		/* System.out.println("dao까지 왔니?" + video); */
		
		return sqlSession.insert("Video.insertVideoInfo",video);
	}
	

	@Inject
	SqlSession sqlsession;
	@Override
	public List<Video> videoimagelist() {
	System.out.println("videodaoimpl");
	return sqlsession.selectList("Video.videoimagelist");
	}
	
	//썸네일 insert 메소드
	@Override
	public int insertAttachment(SqlSessionTemplate sqlSession, Attachment attachment) {
		
		 System.out.println("attachmentdao까지 왔니?" + attachment); 
		
		
		return sqlSession.insert("Video.insertAttachment",attachment);
	}


}





