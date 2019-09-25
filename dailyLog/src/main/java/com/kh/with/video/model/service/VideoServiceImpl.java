package com.kh.with.video.model.service;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.with.loger.model.vo.Loger;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;
import com.kh.with.video.model.dao.VideoDao;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Reply2;
import com.kh.with.video.model.vo.Video;

@Service
public class VideoServiceImpl implements VideoService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private VideoDao vd;
	
	//동영상 페이지 포인트 조회
	@Override
	public int selectPoint(int userNo) {
		System.out.println("selectPoint Service in!");

		return vd.selectPoint(sqlSession, userNo);
	}

	
	
	//정기후원
	@Override
	public int regSub(Map<String, Integer> map) {


		return vd.regSub(sqlSession, map);
	}
	@Override
	public int onceSub(Map<String, Integer> map) {
		
		return vd.onceSub(sqlSession, map);
	}

	@Override
	public String upload(MultipartFile file) {
		// TODO Auto-generated method stub
		return null;
	}

	// 업로드할동영상 정보 insert메소드
	@Override
	public int insertVideoInfo(Video video ) {
		
		return vd.insertVideoInfo(sqlSession,video);
	}

	@Override
	public List<Attachment> videoimagelist(Member m){
		System.out.println("videoServiceimpl");
		
		return vd.videoimagelist(sqlSession,m);
	}
	
	@Override
	public List<Attachment> videopop(Member m) {
		// TODO Auto-generated method stub
		return vd.videopop(sqlSession,m);
	}

	@Override
	public List<Attachment> videonew(Member m) {
		// TODO Auto-generated method stub
		return vd.videonew(sqlSession,m);
	}

	@Override
	public List<Attachment> videobook(Member m) {
		// TODO Auto-generated method stub
		return vd.videobook(sqlSession,m);
	}

	@Override
	public List<Attachment> videosub(Member m) {
		// TODO Auto-generated method stub
		return vd.videosub(sqlSession,m);
	}
	
	@Override
	public List<Attachment> videolike(Member m) {
		// TODO Auto-generated method stub
		return vd.videolike(sqlSession,m);
	}
	

	//썸네일 insert 메소드
	@Override
	public int insertAttachment(Attachment attachment) {
		
		return vd.insertAttachment(sqlSession,attachment);
	}

	@Override
	public List<Video> selectVideoInfo(Map<String, Object> map) {
		
		return vd.selectVideoInfo(sqlSession, map);
	}
	@Override
	public List<Loger> selectLogerInfo(Map<String, Object> map) {
		
		return vd.selectLogerInfo(sqlSession, map);
	}
	
	@Override
	public int selectRegStatus(int userNo, int chNo) {
		
		return vd.selectRegStatus(sqlSession, userNo, chNo);
	}


	@Override
	public int insertReg(Map<String, Integer> map) {
		
		return vd.insertReg(sqlSession, map);
	}
	@Override
	public int insertOnce(Map<String, Integer> map) {
		
		return vd.insertOnce(sqlSession, map);
	}

	@Override
	public int insertLike(Map<String, Integer> map) {
		
		return vd.insertLike(sqlSession, map);
	}

	@Override
	public int deleteLike(Map<String, Integer> map) {
		
		return vd.deleteLike(sqlSession, map);
	}
	
	@Override
	public int insertHate(Map<String, Integer> map) {
		
		return vd.insertHate(sqlSession, map);
	}
	
	@Override
	public int deleteHate(Map<String, Integer> map) {
		
		return vd.deleteHate(sqlSession, map);
	}
	@Override
	public int insertBookmark(Map<String, Integer> map) {
		
		return vd.insertBookmark(sqlSession, map);
	}
	
	@Override
	public int deleteBookmark(Map<String, Integer> map) {
		
		return vd.deleteBookmark(sqlSession, map);
	}
	
	@Override
	public int report(Map<String, Object> map) {
		
		return vd.report(sqlSession, map);
	}
	@Override
	public int block(Map<String, Object> map) {
		
		return vd.block(sqlSession, map);
	}

	@Override
	public List<Attachment> videoimagelist() {
		// TODO Auto-generated method stub
		return vd.videoimagelist(sqlSession);
	}


 

	

	public int selectAge(int loginUser) {
		
		return vd.selectAge(sqlSession, loginUser);
	}


	/*
	 * @Override public List<Attachment> videopop() { // TODO Auto-generated method
	 * stub return vd.videopop(sqlSession); }
	 */

	/*
	 * @Override public List<Attachment> videonew() { // TODO Auto-generated method
	 * stub return vd.videonew(sqlSession); }
	 */

	//동영상번호 셀렉
	@Override
	public Video selectvNo(int getUserNo) {
		
		return vd.selectvNo(sqlSession, getUserNo);
	}

	@Override

	public List<Attachment> videotak() {
		// TODO Auto-generated method stub
		return vd.videotak(sqlSession);
	}

	@Override
	public List<Attachment> videokim1() {
		// TODO Auto-generated method stub
		return vd.videokim1(sqlSession);
	}

	@Override
	public List<Attachment> videokim2() {
		// TODO Auto-generated method stub
		return vd.videokim2(sqlSession);
	}

	@Override
	public List<Attachment> videopark() {
		// TODO Auto-generated method stub
		return vd.videopark(sqlSession);
	}

	@Override
	public List<Attachment> videoji() {
		// TODO Auto-generated method stub
		return vd.videoji(sqlSession);
	}

	@Override
	public List<Attachment> videojeong() {
		// TODO Auto-generated method stub
		return vd.videojeong(sqlSession);
	}

	@Override
	public List<Video> videopop1() {
		// TODO Auto-generated method stub
		return vd.videopop1(sqlSession);
	}

	@Override
	public List<Video> videonew1() {
		// TODO Auto-generated method stub
		return vd.videonew1(sqlSession);
	}



	public int subInsert(Map<String, Object> map) {
		
		return vd.subInsert(sqlSession, map);
	}
	@Override
	public int subDelete(Map<String, Object> map) {
		
		return vd.subDelete(sqlSession, map);
	}
	
	@Override
	public int videoAlram(Map<String, Object> map) {
		
		return vd.videoAlram(sqlSession, map);
	}
	
	@Override
	public int insertSubAlram(Map<String, Object> map) {
		
		return vd.insertSubAlram(sqlSession, map);
	}
	
	@Override
	public int deleteSubAlram(Map<String, Object> map) {
		
		return vd.deleteSubAlram(sqlSession, map);
	}
	
	@Override
	public String selectThumb(Map<String, Object> map) {
		
		return vd.selectThumb(sqlSession, map);
	}
	
	@Override
	public String selectProfile(Map<String, Object> map) {
		
		return vd.selectProfile(sqlSession, map);
	}
	
	@Override
	public int selectLike(Map<String, Integer> map) {
		
		return vd.selectLike(sqlSession, map);
	}
	
	@Override
	public int selectHate(Map<String, Integer> map) {
		
		return vd.selectHate(sqlSession, map);
	}
	@Override
	public int selectBook(Map<String, Integer> map) {
		
		return vd.selectBook(sqlSession, map);
	}
	@Override
	public int selectRegStatus(Map<String, Integer> map) {
		int  result = vd.selectRegStatus(sqlSession, map);
		if(result == 0) result = 0;
		
		return result;
	}
	
	@Override
	public List<Reply2> selectReply(Map<String, Object> map) {
		
		return vd.selectReply(sqlSession, map);
	}
	
	@Override
	public String selectUserImg(Map<String, Object> map) {
		
		return vd.selectUserImg(sqlSession, map);
	}
	@Override
	public int insertReply(Map<String, Object> map) {
		
		return vd.insertReply(sqlSession, map);
	}
	
@Override
	public int repNo(Map<String, Object> map) {
		
		return vd.repNo(sqlSession, map);
	}
	@Override
	public int replyAlram(Map<String, Object> map) {
		
		return vd.replyAlram(sqlSession, map);
	}


	//기존 구독자수 셀렉
	@Override
	public Loger resultSubnum(Loger loger) {
		
		return vd.resultSubnum(sqlSession, loger);
	}


	//구독자수 업데이트
	@Override
	public int subBumUpdate(Loger loger1) {
		
		return vd.subBumUpdate(sqlSession, loger1);
	}
	
	@Override
	public int updateCount(Map<String, Object> map) {
		
		return vd.updateCount(sqlSession, map);
	}
	
	@Override
	public int countSubNum(Map<String, Object> map) {
		
		return vd.countSubNum(sqlSession, map);
	}
	@Override
	public int disCountSubNum(Map<String, Object> map) {
		
		return vd.disCountSubNum(sqlSession, map);
	}
	@Override
	public int replyReport(Map<String, Object> map) {
		
		return vd.replyReport(sqlSession, map);
	}
	@Override
	public int replyReprtAlram(Map<String, Object> map) {
		
		return vd.replyReportAlram(sqlSession, map);
	}
	@Override
	public List<Report> selectCount(Map<String, Object> map) {
		
		return vd.selectCount(sqlSession, map);
	}

	@Override
	public int insertReplyLike(Map<String, Integer> map) {
		
		return vd.insertReplyLike(sqlSession, map);
	}
	@Override
	public int deleteReplyLike(Map<String, Integer> map) {
		
		return vd.deleteReplyLike(sqlSession, map);
	}
	@Override
	public int insertReplyHate(Map<String, Integer> map) {
		
		return vd.insertReplyHate(sqlSession, map);
	}
	@Override
	public int deleteReplyHate(Map<String, Integer> map) {
		
		return vd.deleteReplyHate(sqlSession, map);
	}
	@Override
	public int replyUpdate(Map<String, Object> map) {
		
		return vd.replyUpdate(sqlSession, map);
	}
	@Override
	public int replyDelete(Map<String, Object> map) {
		
		return vd.replyDelete(sqlSession, map);
	}




	@Override
	public int disCountSubNums(Map<String, Object> map) {
		
		return vd.disCountSubNums(sqlSession, map);

	}
}



