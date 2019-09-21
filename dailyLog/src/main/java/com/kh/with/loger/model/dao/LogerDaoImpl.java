package com.kh.with.loger.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Loger2;
import com.kh.with.loger.model.vo.MyVideo;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.main.model.vo.SubscribeVideo;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Video;

@Repository
public class LogerDaoImpl implements LogerDao{
	//로거 정산내역 조회
	@Override
	public ArrayList<Calculate> selectLogerCalculate(SqlSessionTemplate sqlSession, Calculate c, Member m) {
		ArrayList<Calculate> cList = null;
		
		cList = (ArrayList)sqlSession.selectList("Loger.selectLogerCalculate", m);
		
		return cList;
	}
	//로거 후원내역 조회
	@Override
	public ArrayList<Support> selectLogerSupport(SqlSessionTemplate sqlSession, Support s, Member m) {
		ArrayList<Support> sList = null;
		
		sList = (ArrayList)sqlSession.selectList("Loger.selectLogerSupport", m);
		
		return sList;
	}
	//로거 마지막 계좌 조회
	@Override
	public ArrayList<Calculate> logerLastAccount(SqlSessionTemplate sqlSession, Calculate c, Member m) {
		ArrayList<Calculate> aList = null;
		
		aList = (ArrayList)sqlSession.selectList("Loger.logerLastAccount", m);
		
		return aList;
	}

	//로거채널개설
	@Override
	public int insertcreateChannel(SqlSessionTemplate sqlSession, Loger loger) {
		
		System.out.println("loger:::::" + loger);
		
		return sqlSession.insert("Loger.insertcreateChannel",loger);
	}
	
	//로거 기간별 후원내역 조회
	@Override
	public ArrayList<Support> selectLogerSupportDate(SqlSessionTemplate sqlSession, Support s, Member m) {
		ArrayList<Support> dateList = null;
		dateList = (ArrayList)sqlSession.selectList("Loger.selectLogetSupportDate", m);
		
		return dateList;
		
	}

	//로거 계좌번호 update
	@Override
	public int updateLogerAccount(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("Loger.updateLogerAccount", m);
	}
	
	//후원기간 조회 후 그 기간에 따른 정산 금액만 select
	 @Override 
	 public ArrayList<Support> selectLogerSupportPrice(SqlSessionTemplate sqlSession, Support s, Member m) {
	 ArrayList<Support> pList = null;
	 
	 pList = (ArrayList) sqlSession.selectList("Loger.selectLogerSupportPrice", m);
	 
	 System.out.println("pList : " + pList);
	 
	 return pList; 
	 }
	 
	 //기간별 후원내역 조회 후 정산내역으로 insert
	 @Override
	 public int insertLogerCalculate(SqlSessionTemplate sqlSession, Calculate c) {
		 return sqlSession.insert("Loger.insertLogerCalculate", c);
	 }

	 //로거 정보 가져오기
	 @Override
	 public ArrayList<Loger> selectLogerInfo(SqlSessionTemplate sqlSession, Member m) {
		 ArrayList<Loger> loger = null;
		 loger = (ArrayList) sqlSession.selectList("Loger.selectLogerInfo", m);
		
		 return loger;
	 }
	 
	 //후원내역 정산유무 update
	 @Override
	 public int updateSupportCalculate(SqlSessionTemplate sqlSession, Member m) {
		 System.out.println("오니?");
		 return sqlSession.update("Loger.updateSupportCalculate", m);
	 }
	 
	 
	 //로거스튜디오(프로필, 채널명,구독자수)
	@Override
	public Loger2 newHomeChannel(SqlSessionTemplate sqlSession, int userNo) {
		
		System.out.println("로거스튜디오여기까지왔니?");
		
		Loger2 l = new Loger2();
		
		l.setUserNo(userNo);
		
		
		Loger2 result = sqlSession.selectOne("Loger.newHomeChannel",l);

		
		return result;
	}

	
	

	//로거 신고내역
	
	  @Override public ArrayList<Report> reportlist(SqlSessionTemplate
	  sqlSession,Report report, Member m)
	  { ArrayList<Report> reportlist=
	  (ArrayList)sqlSession.selectList("Loger.reportlist",m);
	  
	  return reportlist; }
	 //로거 신고,경고 count
		@Override
		public ArrayList<Report> reportcount(SqlSessionTemplate sqlSession, Report report, Member m) {
			ArrayList<Report> reportcount=(ArrayList)sqlSession.selectList("Loger.reportcount",m);
			return reportcount;
		}
		 
	@Override
	public int cstop(SqlSessionTemplate sqlSession, Loger r) {

		return sqlSession.update("Loger.cstop",r);
	}
	
	//로거 동영상 출력
	@Override
	public ArrayList<Video> showLogerVideo(SqlSessionTemplate sqlSession, Member m) {
		ArrayList<Video> vList = null;
		
		vList = (ArrayList) sqlSession.selectList("Loger.showLogerVideo", m);
		
		return vList;
	}
	@Override
	public int videoDelete(SqlSessionTemplate sqlSession, int vNo) {
		return sqlSession.delete("Loger.videoDelete", vNo);
	}
	@Override
	public int attachmentDelete(SqlSessionTemplate sqlSession, int vNo) {
		return sqlSession.delete("Loger.attachmentDelete", vNo);
	}
	
	//채널개설시 채널유무 및 채널명 업데이트
	@Override
	public int updatechyn(SqlSessionTemplate sqlSession, Member member) {
		
		System.out.println("멤버업데이트:::: " + member);
		
		return sqlSession.update("Member.updatechyn",member);
	}
	
	//로거스튜디오내 모든 동영상
	@Override
	public ArrayList<MyVideo> logerHomeAllVideo(SqlSessionTemplate sqlSession, MyVideo myvideo) {
		
		ArrayList<MyVideo> myvideo1 = null;

		myvideo1 = (ArrayList)sqlSession.selectList("MyVideo.logerHomeAllVideo", myvideo);

			return myvideo1;	
		
	}
	//로거스튜디오내 정보
	@Override
	public Loger2 logerHomeInfo(SqlSessionTemplate sqlSession, Loger2 loger2) {
		
		Loger2 result = sqlSession.selectOne("Loger.logerHomeInfo",loger2);
		
		return result;

	}
	
	//로거스튜디오내 모든 동영상 프로필
	@Override
	public Loger2 homeProfile(SqlSessionTemplate sqlSession, Loger2 loger2) {
		
		Loger2 result = sqlSession.selectOne("Loger.homeProfile",loger2);
		
		return result;
	}
	

	//로거스튜디오 홈 하단의 최근동영상
	@Override
	public ArrayList<MyVideo> newHomeChannellVideo(SqlSessionTemplate sqlSession, MyVideo myvideo) {
		
		
		ArrayList<MyVideo> newHomeChannellVideo = null;

		newHomeChannellVideo = (ArrayList)sqlSession.selectList("MyVideo.newHomeChannellVideo", myvideo);

			return newHomeChannellVideo;	
	}
	
	//로거스튜디오 홈 하단의 인기동영상
	@Override
	public ArrayList<MyVideo> favHomeChannellVideo(SqlSessionTemplate sqlSession, MyVideo myvideo) {
		
		
		ArrayList<MyVideo> favHomeChannellVideo = null;

		favHomeChannellVideo = (ArrayList)sqlSession.selectList("MyVideo.favHomeChannellVideo", myvideo);

			return favHomeChannellVideo;	
	}
	
	
	

}




















	