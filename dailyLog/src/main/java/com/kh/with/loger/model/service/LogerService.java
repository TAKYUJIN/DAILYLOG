package com.kh.with.loger.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Loger2;
import com.kh.with.loger.model.vo.MyVideo;
import com.kh.with.loger.model.vo.SubUserInfo;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.main.model.vo.Subscribe;
import com.kh.with.main.model.vo.SubscribeVideo;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Video;

public interface LogerService {
//	ArrayList<Calculate> selectLogerCalculate(Member m);
//
//	ArrayList<Calculate> selectLogerCalculate(Calculate c);

	//로거 정산내역 조회
	ArrayList<Calculate> selectLogerCalculate(Calculate c, Member m);

	//로거 후원내역 조회
	ArrayList<Support> selectLogerSupport(Support s, Member m);

	//로거 마지막 계좌 조회
	ArrayList<Calculate> logerLastAccount(Calculate c, Member m);

	
	//로거채널개설
	int insertcreateChannel(Loger loger);

	//기간별 후원내역 조회
	ArrayList<Support> selectLogerSupportDate(Support s, Member m);

	//로거 계좌 update
	int updateLogerAccount(Member m);

	//기간별 후원내역 조회 값
	ArrayList<Support> selectLogerSupportPrice(Support s, Member m);

	//기간별 후원내역 조회 후 정산내역으로 insert
	int insertLogerCalculate(Calculate c);
	
	//로거 정보 가져오기
	ArrayList<Loger> selectLogerInfo(Member m);
	
	//후원내역에 정산유무
	int updateSupportCalculate(Member m);

	//로거스튜디오 (프로필 ,채널명,구독자수먼)
	Loger2 newHomeChannel(int userNo);

	//로거 신고내역
	ArrayList<Report> reportlist(Report report, Member m);
	ArrayList<Report> reportcount(Report report, Member m);

	//로거 채널 정지
	int cstop(Loger r);

	//로거 동영상 출력
	ArrayList<Video> showLogerVideo(Member m);

	//로거 동영상 삭제 video, attachment 
	int videoDelete(int vNo);
	int attachmentDelete(int vNo);

	//채널개설시 채널유무 업데이트
	int updatechyn(Member member);

	//로거스튜디오내 모든동영상
	ArrayList<MyVideo> logerHomeAllVideo(MyVideo myvideo);

	//로거스튜디오내 정보 
	Loger2 logerHomeInfo(Loger2 loger2);

	//로거스튜디오내 모든 동영상 프로필
	Loger2 homeProfile(Loger2 loger2);


	//로거스튜디오 홈 하단의 최근동영상
	ArrayList<MyVideo> newHomeChannellVideo(MyVideo myvideo);

	//로거스튜디오 홈 하단의 인기동영상
	ArrayList<MyVideo> favHomeChannellVideo(MyVideo myvideo);

	//채널 타이틀 이미지
	Attachment logertitleimg(Attachment attachment);

	//최신동영상 1개
	Video favOne(MyVideo myvideo);

	//최신동영상 1개 썸네일 
	Attachment favOnesum(MyVideo myvideo);

	//구독시 원하는 정보 셀렉
	SubUserInfo subUserInfo(SubUserInfo subUserInfo);
	
	//로거 동영상 수정 페이지 출력
	ArrayList<Video> selectLogerVideo(Loger l);

	//로거 동영상 수정 update
	int updateLogerVideo(Video v);

	//구독중 클릭시 구독중으로 고정
	Subscribe fastenSub(Subscribe subscribe);

	//로거스튜디오채널번호 받기 
	Loger selectChNo(int userNo);

	//구독유무확인
	int subcount(Subscribe subscibe);

	//채널타이틀 이미지 insert
	int insertAttachmentTitle(Attachment attachment);

	//채널설명 변경
	int updateInfo(Loger loger);

	//로거 동영상 추가 정보 출력 페이지
	ArrayList<Video> selectLogerAddVideo(Loger l);

	//로거스튜디오 타이틀 이미지 변경
	int updateTitle(Attachment attachment);



	
	
 
	



}
