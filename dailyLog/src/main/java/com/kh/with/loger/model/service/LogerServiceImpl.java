package com.kh.with.loger.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.with.loger.model.dao.LogerDao;
import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Loger2;
import com.kh.with.loger.model.vo.MyVideo;
import com.kh.with.loger.model.vo.SubUserInfo;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.main.model.vo.Subscribe;
import com.kh.with.main.model.vo.SubscribeVideo;
import com.kh.with.member.model.vo.Member;
import com.kh.with.reply.model.vo.Reply;
import com.kh.with.report.model.vo.Report;
import com.kh.with.video.model.vo.AddPlace;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Video;

@Service
public class LogerServiceImpl implements LogerService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private LogerDao ld;
	@Autowired
	private DataSourceTransactionManager transactionManager; 


	//로거 정산내역 조회
	@Override
	public ArrayList<Calculate> selectLogerCalculate(Calculate c, Member m) {
		return ld.selectLogerCalculate(sqlSession, c, m);
	}


	//로거 후원내역 조회
	@Override
	public ArrayList<Support> selectLogerSupport(Support s, Member m) {
		return ld.selectLogerSupport(sqlSession, s, m);
	}


	//로거 마지막 계좌 조회
	@Override
	public ArrayList<Calculate> logerLastAccount(Calculate c, Member m) {
		return ld.logerLastAccount(sqlSession, c, m);
	}



	//로거채널개설
	@Override
	public int insertcreateChannel(Loger loger) {
		return ld.insertcreateChannel(sqlSession,loger);
	}


	//로거 기간별 후원내역 조회
	@Override
	public ArrayList<Support> selectLogerSupportDate(Support s, Member m) {
		return ld.selectLogerSupportDate(sqlSession, s, m);
	}


	//로거 계좌번호 update
	@Override
	public int updateLogerAccount(Member m) {
		return ld.updateLogerAccount(sqlSession, m);
	}


	//기간별 후원내역 값 조회
	@Override
	public ArrayList<Support> selectLogerSupportPrice(Support s, Member m) {
		return ld.selectLogerSupportPrice(sqlSession, s, m);
	}

	//기간별 후원내역 조회 후 정산내역으로 insert
	@Override
	public int insertLogerCalculate(Calculate c) {
		
		int result = ld.insertLogerCalculate(sqlSession, c);
		
		return result;
		
	}
	
	//로거 정보 가져오기
	@Override
	public ArrayList<Loger> selectLogerInfo(Member m) {
		return ld.selectLogerInfo(sqlSession, m);
	}

	//후원내역 정산유무 update
	@Override
	public int updateSupportCalculate(Member m) {
		return ld.updateSupportCalculate(sqlSession, m);
	}

	//로거스튜디오(프로필,채널명,구독자수)
	@Override
	public Loger2 newHomeChannel(int userNo) {
		return ld.newHomeChannel(sqlSession, userNo);
	}

	//로거 신고내역
	
	  @Override public ArrayList<Report> reportlist(Report report, Member m) {
	  
	  return ld.reportlist(sqlSession,report,m); }
	 

		@Override
		public ArrayList<Report> reportcount(Report report, Member m) {
		 
			return ld.reportcount(sqlSession,report,m); 
		}


	 

	//로거 채널 정지
	@Override
	public int cstop(Loger r) {
		// TODO Auto-generated method stub
		return ld.cstop(sqlSession, r);
	}

	
	//로거 동영상 출력
	@Override
	public ArrayList<Video> showLogerVideo(Member m) {
		return ld.showLogerVideo(sqlSession, m);
	}
	
	//로거 댓글 출력 
	@Override
	public ArrayList<Reply> showLogerReply(Member m) {
		// TODO Auto-generated method stub
		return ld.showLogerReply(sqlSession, m);
	}


	@Override
	public int videoDelete(int vNo) {
		return ld.videoDelete(sqlSession, vNo);
	}
	
	@Override
	public int replyDelete(int repNo) {
		// TODO Auto-generated method stub
		return ld.replyDelete(sqlSession, repNo);
	}



	@Override
	public int attachmentDelete(int vNo) {
		return ld.attachmentDelete(sqlSession, vNo);
	}

	//채널개설시 채널유무 업데이트
	@Override
	public int updatechyn(Member member) {
		
		return ld.updatechyn(sqlSession, member);
	}

	//로거스튜디오내 모든 동영상
	@Override
	public ArrayList<MyVideo> logerHomeAllVideo(MyVideo myvideo) {
		
		return ld.logerHomeAllVideo(sqlSession, myvideo);
	}

	//로거스튜디오내 정보
	@Override
	public Loger2 logerHomeInfo(Loger2 loger2) {
		
		return ld.logerHomeInfo(sqlSession, loger2);
	}

	//로거스튜디오내 모든 동영상 프로필
	@Override
	public Loger2 homeProfile(Loger2 loger2) {
		
		return ld.homeProfile(sqlSession, loger2);
	
	}

	//로거스튜디오 홈 하단의 최근동영상
	@Override
	public ArrayList<MyVideo> newHomeChannellVideo(MyVideo myvideo) {
		
		return ld.newHomeChannellVideo(sqlSession, myvideo);
	}

	//로거스튜디오 홈 하단의 인기동영상
	@Override
	public ArrayList<MyVideo> favHomeChannellVideo(MyVideo myvideo) {
		
		return ld.favHomeChannellVideo(sqlSession, myvideo);
	}

	//채널타이틅 이미지
	@Override
	public Attachment logertitleimg(Attachment attachment) {
		
		return ld.logertitleimg(sqlSession, attachment);
	}

	//최신동영상1개
	@Override
	public Video favOne(MyVideo myvideo) {
		
		return ld.favOne(sqlSession, myvideo);
	}

	//최신동영상 1개 썸네일 
	@Override
	public Attachment favOnesum(MyVideo myvideo) {
		
		return ld.favOnesum(sqlSession, myvideo);
	}

	//구독시 원하는 정보 셀렉
	@Override
	public SubUserInfo subUserInfo(SubUserInfo subUserInfo) {
		
		return ld.subUserInfo(sqlSession, subUserInfo);
	}


	@Override
	public ArrayList<Video> selectLogerVideo(Loger l) {
		return ld.selectLogerVideo(sqlSession, l);
	}



	//구독중 클릭시 구독중으로 고정
	@Override
	public Subscribe fastenSub(Subscribe subscribe) {
		return ld.fastenSub(sqlSession, subscribe);
	}

	//로거스튜디오채널번호 받기 
	@Override
	public Loger selectChNo(int userNo) {
		
		return ld.selectChNo(sqlSession, userNo);
	}

	//구독유무확인
	@Override
	public int subcount(Subscribe subscibe) {

		return ld.subcount(sqlSession, subscibe);
	}

	//로거 동영상 수정 update
	@Override
	public int updateLogerVideo(Video v) {
		return ld.updateLogerVideo(sqlSession, v);
	}

	//로거 동영상 썸네일 수정 update
	@Override
	public int updateLogerAttachment(Attachment a) {
		return ld.updateLogerAttachment(sqlSession, a);
	}

	
	//채널타이틀 이미지 insert
	@Override
	public int insertAttachmentTitle(Attachment attachment) {
		return ld.insertAttachmentTitle(sqlSession, attachment);
	}
	
	//채널설명변경
	@Override
	public int updateInfo(Loger loger) {
		return ld.updateInfo(sqlSession, loger);
	}
	
	@Override
	public ArrayList<Video> selectLogerAddVideo(Loger l) {
		return ld.selectLogerAddVideo(sqlSession, l);
	}
	
	//로거스튜디오 타이틀 이미지 변경
	@Override
	public int updateTitle(Attachment attachment) {
		
		return ld.updateTitle(sqlSession, attachment);
		
	}


	@Override
	public int deleteAddPlace(AddPlace addPlace) {
		return ld.deleteAddplace(sqlSession, addPlace);
	}

	

	


	


	

	




}






