package com.kh.with.video.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Video;

@Repository
public class VideoDaoImpl implements VideoDao {

	// 동영상 페이지 포인트 조회
	@Override
	public int selectPoint(SqlSessionTemplate sqlSession, int userNo) {
		System.out.println("selectPoint dao!");
		return sqlSession.selectOne("Member.selectPoint", userNo);
	}

	// 동영상정기후원
	@Override
	public int regSub(SqlSessionTemplate sqlSession, Map<String, Integer> map) {

		return sqlSession.update("Member.regSub", map);
	}
	@Override
	public int onceSub(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.update("Member.onceSub", map);
	}
	
	
	// 동영상 업로드정보 insert 메소드
	@Override
	public int insertVideoInfo(SqlSessionTemplate sqlSession, Video video) {

		System.out.println("dao까지 왔니?" + video);

		return sqlSession.insert("Video.insertVideoInfo", video);
	}

	@Inject
	SqlSession sqlsession;

	@Override

  /*
	public List<Video> videoimagelist() {
		System.out.println("videodaoimpl");
		return sqlsession.selectList("Video.videoimagelist");
  */
	public List<Attachment> videoimagelist(Member m) {
		System.out.println("videodaoimpl");
		return sqlsession.selectList("Attachment.videoimagelist");
		 


		}

	// 썸네일 insert 메소드
	@Override
	public int insertAttachment(SqlSessionTemplate sqlSession, Attachment attachment) {

		
		 System.out.println("attachmentdao까지 왔니?" + attachment); 
		
		
		return sqlSession.insert("Attachment.insertAttachment",attachment);
	}
	
	@Override
	public List<Object> selectVideoInfo(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.selectList("Video.selectVideoInfo", map);
	}

	@Override
	public List<Object> selectLogerInfo(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.selectList("Video.selectLogerInfo", map);
	}
	
	@Override
	public int selectRegStatus(SqlSessionTemplate sqlSession, int userNo, int chNo) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("userNo", userNo);
		map.put("chNo", chNo);
		
		return sqlSession.selectOne("Video.selectRegStatus", map);
	}


	@Override
	public int insertReg(SqlSessionTemplate sqlSession, Map<String, Integer> map) {

		return sqlSession.insert("Video.insertReg", map);
	}
	@Override
	public int insertOnce(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.insert("Video.insertOnce", map);
	}
	
	@Override
	public int insertLike(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.insert("Video.insertLike", map);
	}
	
	@Override
	public int deleteLike(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.delete("Video.deleteLike", map);
	}
	
	@Override
	public int insertHate(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.insert("Video.insertHate", map);
	}
	
	@Override
	public int deleteHate(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.delete("Video.deleteHate", map);
	}
	
	@Override
	public int insertBookmark(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.insert("Video.insertBookmark", map);
	}
	
	@Override
	public int deleteBookmark(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.delete("Video.deleteBookmark", map);
	}
	
	@Override
	public int report(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.insert("Video.insertReport", map);
	}
	@Override
	public int block(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.insert("Video.insertBlock", map);
	}
	
}
