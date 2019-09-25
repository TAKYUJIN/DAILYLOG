package com.kh.with.video.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.kh.with.loger.model.vo.Loger;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Reply2;
import com.kh.with.video.model.vo.Video;

public interface VideoService {
	
 
	//동영상 페이지 포인트 조회
	int selectPoint(int userNo);
	
	//동영상 업로드 메소드
	String upload(MultipartFile file);
	
	//정기후원
	int regSub(Map<String, Integer> map);
	
	// 업로드할동영상 정보 insert메소드
	int insertVideoInfo(Video video);

	//메인 썸네일 출력
	List<Attachment> videoimagelist( Member m);
	List<Attachment> videopop(Member m);

	List<Attachment> videonew(Member m);

	
	
	List<Attachment> videobook(Member m);

	List<Attachment> videosub(Member m);
	List<Attachment> videolike(Member m);
	//썸네일 insert
	int insertAttachment(Attachment attachment);
	
	//비디오값 불러오기
	List<Video> selectVideoInfo(Map<String, Object> map);

	List<Loger> selectLogerInfo(Map<String, Object> map);

	//정기후원 상태 조회
	int selectRegStatus(int userNo, int chNo);

	int insertReg(Map<String, Integer> map);

	int onceSub(Map<String, Integer> map);

	int insertOnce(Map<String, Integer> map);

	//좋아요
	int insertLike(Map<String, Integer> map);
	int deleteLike(Map<String, Integer> map);

	//싫어요
	int insertHate(Map<String, Integer> map);
	int deleteHate(Map<String, Integer> map);

	//북마크
	int insertBookmark(Map<String, Integer> map);
	int deleteBookmark(Map<String, Integer> map);

	//신고
	int report(Map<String, Object> map);
	int block(Map<String, Object> map);


	List<Attachment> videoimagelist();

 

	//동영상번호 셀렉
	Video selectvNo(int getUserNo);


	List<Attachment> videotak();

	List<Attachment> videokim1();

	List<Attachment> videokim2();

	List<Attachment> videopark();

	List<Attachment> videoji();

	List<Attachment> videojeong();

	List<Video> videopop1();

	List<Video> videonew1();

	int subInsert(Map<String, Object> map);

	int subDelete(Map<String, Object> map);

	int videoAlram(Map<String, Object> map);

	int insertSubAlram(Map<String, Object> map);

	int deleteSubAlram(Map<String, Object> map);

	String selectThumb(Map<String, Object> map);

	String selectProfile(Map<String, Object> map);

	int selectRegStatus(Map<String, Integer> map);

	int selectLike(Map<String, Integer> map);

	int selectHate(Map<String, Integer> map);

	int selectBook(Map<String, Integer> map);

	List<Reply2> selectReply(Map<String, Object> map);

	String selectUserImg(Map<String, Object> map);

	int insertReply(Map<String, Object> map);

	int replyAlram(Map<String, Object> map);

	int repNo(Map<String, Object> map);

	int updateCount(Map<String, Object> map);

	int countSubNum(Map<String, Object> map);

	int disCountSubNum(Map<String, Object> map);

	int replyReport(Map<String, Object> map);

	int replyReprtAlram(Map<String, Object> map);

	List<Report> selectCount(Map<String, Object> map);


	
	

	


}

