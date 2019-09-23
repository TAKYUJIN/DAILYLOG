package com.kh.with.loger.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Loger2;
import com.kh.with.loger.model.vo.MyVideo;
import com.kh.with.loger.model.vo.SubUserInfo;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.main.model.vo.SubscribeVideo;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Video;

public interface LogerDao {

	//로거 정산내역 조회
	ArrayList<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Calculate c, Member m);

	//로거 후원내역 조회
	ArrayList<Support> selectLogerSupport(SqlSessionTemplate sqlSession, Support s, Member m);

	//로거 마지막 계좌 조회
	ArrayList<Calculate> logerLastAccount(SqlSessionTemplate sqlSession, Calculate c, Member m);

	//로거채널개설
	int insertcreateChannel(SqlSessionTemplate sqlSession, Loger loger);

	//로거 기간별 후원내역 조회
	ArrayList<Support> selectLogerSupportDate(SqlSessionTemplate sqlSession, Support s, Member m);

	//로거 계좌번호 update
	int updateLogerAccount(SqlSessionTemplate sqlSession, Member m);

	//로거 기간별 후원내역 조회 값
	ArrayList<Support> selectLogerSupportPrice(SqlSessionTemplate sqlSession, Support s, Member m);

	//기간별 후원내역 조회 후 정산내역으로 insert
	int insertLogerCalculate(SqlSessionTemplate sqlSession, Calculate c);

	//로거 정보 가져오기
	ArrayList<Loger> selectLogerInfo(SqlSessionTemplate sqlSession, Member m);

	//후원내역 정산유무 update
	int updateSupportCalculate(SqlSessionTemplate sqlSession, Member m);

	//로거스튜디오(프로필 ,채널명,구독자수)
	Loger2 newHomeChannel(SqlSessionTemplate sqlSession, int userNo);

	//로거 신고 기록
	ArrayList<Report> reportlist(SqlSessionTemplate sqlSession,Report report, Member m);
	//로거 신고//로거 경고
	ArrayList<Report> reportcount(SqlSessionTemplate sqlSession, Report report, Member m);

 	
	//로거 채널 정지
	int cstop(SqlSessionTemplate sqlSession, Loger r);

	//로거 동영상 출력
	ArrayList<Video> showLogerVideo(SqlSessionTemplate sqlSession, Member m);

	int videoDelete(SqlSessionTemplate sqlSession, int vNo);

	int attachmentDelete(SqlSessionTemplate sqlSession, int vNo);

	//채널개설시 채널유무 업데이트
	int updatechyn(SqlSessionTemplate sqlSession, Member member);

	//로거스튜디오내 모든 동영상
	ArrayList<MyVideo> logerHomeAllVideo(SqlSessionTemplate sqlSession, MyVideo myvideo);

	//로거스튜디오내 정보
	Loger2 logerHomeInfo(SqlSessionTemplate sqlSession, Loger2 loger2);

	//로거스튜디오내 모든 동영상 프로필
	Loger2 homeProfile(SqlSessionTemplate sqlSession, Loger2 loger2);


	//로거스튜디오 홈 하단의 최근동영상
	ArrayList<MyVideo> newHomeChannellVideo(SqlSessionTemplate sqlSession, MyVideo myvideo);

	//로거스튜디오 홈 하단의 인기동영상
	ArrayList<MyVideo> favHomeChannellVideo(SqlSessionTemplate sqlSession, MyVideo myvideo);

	//채널타이틀 이미지
	Attachment logertitleimg(SqlSessionTemplate sqlSession, Attachment attachment);

	//최신동영상1개
	Video favOne(SqlSessionTemplate sqlSession, MyVideo myvideo);


	//최신동영상 1개 썸네일 
	Attachment favOnesum(SqlSessionTemplate sqlSession, MyVideo myvideo);

	//구독시 원하는 정보 셀렉
	SubUserInfo subUserInfo(SqlSessionTemplate sqlSession, SubUserInfo subUserInfo);

	

}
