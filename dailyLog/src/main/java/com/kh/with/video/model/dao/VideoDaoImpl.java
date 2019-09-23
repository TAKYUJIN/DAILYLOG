package com.kh.with.video.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.loger.model.vo.Loger;
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
	public List<Attachment> videoimagelist(SqlSessionTemplate sqlSession,Member m) {
		System.out.println("m"+m);
		return sqlsession.selectList("Attachment.videoimagelist",m);
		}

	@Override
	public List<Attachment> videopop(SqlSessionTemplate sqlSession,Member m) {
		// TODO Auto-generated method stub
		return sqlsession.selectList("Attachment.videopop",m);
	}

	@Override
	public List<Attachment> videonew(SqlSessionTemplate sqlSession,Member m) {
		// TODO Auto-generated method stub
		return sqlsession.selectList("Attachment.videonew",m);
	}

	@Override
	public List<Attachment> videobook(SqlSessionTemplate sqlSession,Member m) {
		// TODO Auto-generated method stub
		return sqlsession.selectList("Attachment.videobook",m);
	}

	@Override
	public List<Attachment> videosub(SqlSessionTemplate sqlSession,Member m) {
		// TODO Auto-generated method stub
		return sqlsession.selectList("Attachment.videosub",m);
	}
	@Override
	public List<Attachment> videolike(SqlSessionTemplate sqlSession,Member m) {
		// TODO Auto-generated method stub
		return sqlsession.selectList("Attachment.videolike",m);
	}

	
	
	
	
	
	
	
	// 썸네일 insert 메소드
	@Override
	public int insertAttachment(SqlSessionTemplate sqlSession, Attachment attachment) {

		
		 System.out.println("attachmentdao까지 왔니?" + attachment); 
		
		
		return sqlSession.insert("Attachment.insertAttachment",attachment);
	}
	
	@Override
	public List<Video> selectVideoInfo(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.selectList("Video.selectVideoInfo", map);
	}

	@Override
	public List<Loger> selectLogerInfo(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
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

	@Override

	public List<Attachment> videoimagelist(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Attachment.videoimagelist1");
	}

	@Override
	public List<Video> videopop1(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		System.out.println("videopop1");
		return sqlSession.selectList("Attachment.videopop1");
	}

	@Override
	public List<Video> videonew1(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Attachment.videonew1");
	}


	public int selectAge(SqlSessionTemplate sqlSession, int loginUser) {
		
		return sqlSession.selectOne("Member.selectAge", loginUser);
	}

	//동영상번호 셀렉

	@Override
	public Video selectvNo(SqlSessionTemplate sqlSession, int getUserNo) {
		
		System.out.println("업로드하는 유저의 정보 가지고왔니?" + getUserNo );
		
		
		
		return sqlSession.selectOne("Video.selectvNo", getUserNo);
		
	}

	@Override
	public List<Attachment> videotak(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Attachment.videotak");
	}

	@Override
	public List<Attachment> videokim1(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Attachment.videokim1");
	}

	@Override
	public List<Attachment> videokim2(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Attachment.videokim2");
	}

	@Override
	public List<Attachment> videopark(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Attachment.videopark");
	}

	@Override
	public List<Attachment> videoji(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Attachment.videoji");
	}

	@Override
	public List<Attachment> videojeong(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Attachment.videojeong");
	}

	 

 

	
}
