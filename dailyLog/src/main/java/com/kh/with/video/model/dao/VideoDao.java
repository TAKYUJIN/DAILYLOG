package com.kh.with.video.model.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.google.common.eventbus.Subscribe;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.main.model.vo.VideoLike;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;
import com.kh.with.video.model.vo.AddInfo;
import com.kh.with.video.model.vo.AddPlace;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Reply2;
import com.kh.with.video.model.vo.Video;
 
public interface VideoDao {
	
	//동영상 페이지 포인트 조회
	int selectPoint(SqlSessionTemplate sqlSession, int userNo);
	//정기후원
	int regSub(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int onceSub(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	

	//동영상 업로드정보 insert 메소드
	int insertVideoInfo(SqlSessionTemplate sqlSession, Video video);
	

	// 업로드할 동영상 정보 insert메소드
	//int insertVideoInfo(SqlSessionTemplate sqlSession, Model model);
	
	

	List<Attachment> videoimagelist(SqlSessionTemplate sqlSession,Member m);
	List<Attachment> videopop(SqlSessionTemplate sqlSession,Member m);
	List<Attachment> videonew(SqlSessionTemplate sqlSession,Member m);
	List<Attachment> videobook(SqlSessionTemplate sqlSession,Member m);
	List<Attachment> videosub(SqlSessionTemplate sqlSession,Member m);

  /*
	List<Attachment> videoimagelist(Member m);
	List<Attachment> videopop(Member m);
	List<Attachment> videonew(Member m);
	List<Attachment> videobook(Member m);
	List<Attachment> videosub(Member m);
	*/
	

	//썸네일  insert 메소드
	int insertAttachment(SqlSessionTemplate sqlSession, Attachment attachment);
	
	List<Video> selectVideoInfo(SqlSessionTemplate sqlSession, Map<String, Object> map);
	
	List<Loger> selectLogerInfo(SqlSessionTemplate sqlSession, Map<String, Object> map);
	
	List<Support> selectRegStatus(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	int insertReg(SqlSessionTemplate sqlSession, Map<String, Integer> map);

	int insertOnce(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	//좋아요
	int insertLike(SqlSessionTemplate sqlSession, Map<String, Integer> map);	
	int deleteLike(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	//싫어요
	int insertHate(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int deleteHate(SqlSessionTemplate sqlSession, Map<String, Integer> map);

	//북마크
	int insertBookmark(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int deleteBookmark(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	//신고
	int report(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int block(SqlSessionTemplate sqlSession, Map<String, Object> map);
	List<Attachment> videolike(SqlSessionTemplate sqlSession,Member m);
	List<Attachment> videoimagelist(SqlSessionTemplate sqlSession);

	 
	int selectAge(SqlSessionTemplate sqlSession, int loginUser);

	List<Attachment> videopop(SqlSessionTemplate sqlSession);
	List<Attachment> videonew(SqlSessionTemplate sqlSession);

	
	//동영상번호 셀렉
	
	Video selectvNo(SqlSessionTemplate sqlSession, int getUserNo);
	List<Attachment> videotak(SqlSessionTemplate sqlSession);
	List<Attachment> videokim1(SqlSessionTemplate sqlSession);
	List<Attachment> videokim2(SqlSessionTemplate sqlSession);
	List<Attachment> videopark(SqlSessionTemplate sqlSession);
	List<Attachment> videoji(SqlSessionTemplate sqlSession);
	List<Attachment> videojeong(SqlSessionTemplate sqlSession);
	List<Video> videopop1(SqlSessionTemplate sqlSession);
	List<Video> videonew1(SqlSessionTemplate sqlSession);
	
	
	int subInsert(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int subDelete(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int videoAlram(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int insertSubAlram(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int deleteSubAlram(SqlSessionTemplate sqlSession, Map<String, Object> map);
	String selectThumb(SqlSessionTemplate sqlSession, Map<String, Object> map);
	String selectProfile(SqlSessionTemplate sqlSession, Map<String, Object> map);
	List<VideoLike> selectLike(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	List<VideoLike> selectHate(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	List<VideoLike> selectBook(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	List<Reply2> selectReply(SqlSessionTemplate sqlSession, Map<String, Object> map);
	String selectUserImg(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int insertReply(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int replyAlram(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int repNo(SqlSessionTemplate sqlSession, Map<String, Object> map);

	//기존 구독자수 셀렉
	Loger resultSubnum(SqlSessionTemplate sqlSession, Loger loger);
	//구독자수 업데이트
	int subBumUpdate(SqlSessionTemplate sqlSession, Loger loger1);

	int updateCount(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int countSubNum(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int disCountSubNum(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int replyReport(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int replyReportAlram(SqlSessionTemplate sqlSession, Map<String, Object> map);
	List<Report> selectCount(SqlSessionTemplate sqlSession, Map<String, Object> map);

	int insertReplyLike(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int deleteReplyLike(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int insertReplyHate(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int deleteReplyHate(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int replyUpdate(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int replyDelete(SqlSessionTemplate sqlSession, Map<String, Object> map);
	String selectInfo(SqlSessionTemplate sqlSession, Map<String, Object> map);

	int disCountSubNums(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int insertAddPlace(SqlSessionTemplate sqlSession, AddPlace addPlace);
	int insertAddInfo(SqlSessionTemplate sqlSession, AddInfo addInfo);
	int selectReReply(SqlSessionTemplate sqlSession, Map<String, Object> map);

	int writeReReply(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int ReReplyAlram(SqlSessionTemplate sqlSession, Map<String, Object> map);

	List<AddInfo> selectAddInfo(SqlSessionTemplate sqlSession, Map<String, Object> map);
	List<AddPlace> selectAddPlace(SqlSessionTemplate sqlSession, Map<String, Object> map);

	
	int insertnewAction(SqlSessionTemplate sqlSession, HashMap map);

	List<Attachment> selectFiles(SqlSessionTemplate sqlSession);
	int vStatus(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int channelReport(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int channelReportAlram(SqlSessionTemplate sqlSession, Map<String, Object> map);
	List<VideoLike> selectReplyLike(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	List<VideoLike> selectReplyHate(SqlSessionTemplate sqlSession, Map<String, Integer> map);

	int selectSubtitle(SqlSessionTemplate sqlSession, Map<String, Object> map);
	List<Video> adinfo(SqlSessionTemplate sqlSession, Member m);

	List<Subscribe> selectSubtitle(SqlSessionTemplate sqlSession, Map<String, Object> map);






	

}
