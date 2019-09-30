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
	
	//�룞�쁺�긽 �럹�씠吏� �룷�씤�듃 議고쉶
	int selectPoint(SqlSessionTemplate sqlSession, int userNo);
	//�젙湲고썑�썝
	int regSub(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int onceSub(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	

	//�룞�쁺�긽 �뾽濡쒕뱶�젙蹂� insert 硫붿냼�뱶
	int insertVideoInfo(SqlSessionTemplate sqlSession, Video video);
	

	// �뾽濡쒕뱶�븷 �룞�쁺�긽 �젙蹂� insert硫붿냼�뱶
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
	

	//�뜽�꽕�씪  insert 硫붿냼�뱶
	int insertAttachment(SqlSessionTemplate sqlSession, Attachment attachment);
	
	List<Video> selectVideoInfo(SqlSessionTemplate sqlSession, Map<String, Object> map);
	
	List<Loger> selectLogerInfo(SqlSessionTemplate sqlSession, Map<String, Object> map);
	
	List<Support> selectRegStatus(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	int insertReg(SqlSessionTemplate sqlSession, Map<String, Integer> map);

	int insertOnce(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	//醫뗭븘�슂
	int insertLike(SqlSessionTemplate sqlSession, Map<String, Integer> map);	
	int deleteLike(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	//�떕�뼱�슂
	int insertHate(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int deleteHate(SqlSessionTemplate sqlSession, Map<String, Integer> map);

	//遺곷쭏�겕
	int insertBookmark(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	int deleteBookmark(SqlSessionTemplate sqlSession, Map<String, Integer> map);
	
	//�떊怨�
	int report(SqlSessionTemplate sqlSession, Map<String, Object> map);
	int block(SqlSessionTemplate sqlSession, Map<String, Object> map);
	List<Attachment> videolike(SqlSessionTemplate sqlSession,Member m);
	List<Attachment> videoimagelist(SqlSessionTemplate sqlSession);

	 
	int selectAge(SqlSessionTemplate sqlSession, int loginUser);

	List<Attachment> videopop(SqlSessionTemplate sqlSession);
	List<Attachment> videonew(SqlSessionTemplate sqlSession);

	
	//�룞�쁺�긽踰덊샇 ���젆
	
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

	//湲곗〈 援щ룆�옄�닔 ���젆
	Loger resultSubnum(SqlSessionTemplate sqlSession, Loger loger);
	//援щ룆�옄�닔 �뾽�뜲�씠�듃
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

	//int selectSubtitle(SqlSessionTemplate sqlSession, Map<String, Object> map);
	List<Video> adinfo(SqlSessionTemplate sqlSession, Member m);

	List<Subscribe> selectSubtitle(SqlSessionTemplate sqlSession, Map<String, Object> map);






	

}
