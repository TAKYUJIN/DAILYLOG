package com.kh.with.video.model.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

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

	@Override
	public int insertAddPlace(SqlSessionTemplate sqlSession, AddPlace addPlace) {
		System.out.println("장소 정보 다오 " + addPlace);
		
		return sqlSession.insert("AddPlace.insertAddPlace", addPlace);
	}
	
	@Override
	public int insertAddInfo(SqlSessionTemplate sqlSession, AddInfo addInfo) {
		// TODO Auto-generated method stub
		System.out.println("장소 상세 내용 다오 ;;; " + addInfo);
		return sqlSession.insert("AddInfo.insertAddInfo", addInfo);
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
	//기존 구독자수 셀렉
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
	public List<Video> selectVideoInfo(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.selectList("Video.selectVideoInfo", map);
	}

	@Override
	public List<Loger> selectLogerInfo(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.selectList("Video.selectLogerInfo", map);
	}
	
	@Override
	public List<Support> selectRegStatus(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.selectList("Video.selectRegStatus", map);
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

	 

 


	public int subInsert(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.insert("Video.insertSub", map);
	}
	
	@Override
	public int subDelete(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.delete("Video.deleteSub", map);
	}
	
	@Override
	public int videoAlram(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.insert("Video.videoAlram", map);
	}
	
	
	@Override
	public int insertSubAlram(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.insert("Video.insertSubAlram", map);
	}
	
	@Override
	public int deleteSubAlram(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.delete("Video.deleteSubAlram", map);
	}
	
	@Override
	public String selectThumb(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.selectOne("Video.selectThumb", map);
	}
	
	@Override
	public String selectProfile(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.selectOne("Video.selectProfile", map);
	}
	

	@Override
	public List<VideoLike> selectLike(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.selectList("Video.selectLike", map);
	}
	@Override
	public List<VideoLike> selectHate(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.selectList("Video.selectHate", map);
	}
	@Override
	public List<VideoLike> selectBook(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.selectList("Video.selectBook", map);
	}

	@Override
	public int selectAge(SqlSessionTemplate sqlSession, int loginUser) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Attachment> videopop(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Attachment> videonew(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Reply2> selectReply(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.selectList("Video.selectReply", map);
	}

	@Override
	public String selectUserImg(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.selectOne("Video.selectUserImg", map);
	}
	
	@Override
	public int insertReply(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.insert("Video.insertReply", map);
	}
	
	@Override
	public int repNo(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.selectOne("Video.repNo", map);
	}
	
	@Override
	public int replyAlram(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.insert("Video.replyAlram", map);
	}

	@Override
	public Loger resultSubnum(SqlSessionTemplate sqlSession, Loger loger) {
		
		return sqlSession.selectOne("Loger.resultSubnum", loger);
	}

	@Override
	public int subBumUpdate(SqlSessionTemplate sqlSession, Loger loger1) {
		
		
		return sqlSession.update("Loger.subBumUpdate", loger1);
	}
	
	@Override
	public int updateCount(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.update("Video.updateCount", map);
	}
	@Override
	public int countSubNum(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.update("Video.countSubNum", map);
	}
	@Override
	public int disCountSubNum(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.update("Video.disCountSubNum", map);
	}
	@Override
	public int replyReport(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.insert("Video.replyReport", map);
	}
	@Override
	public int replyReportAlram(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.insert("Video.replyReportAlram", map);
	}
	@Override
	public List<Report> selectCount(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.selectList("Video.selectCount", map);
	}

	@Override
	public int insertReplyLike(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.insert("Video.insertReplyLike", map);
	}
	@Override
	public int deleteReplyLike(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.delete("Video.deleteReplyLike", map);
	}
	@Override
	public int insertReplyHate(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.insert("Video.insertReplyHate", map);
	}
	@Override
	public int deleteReplyHate(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.delete("Video.deleteReplyHate", map);
	}
	@Override
	public int replyUpdate(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.update("Video.replyUpdate", map);
	}
	@Override
	public int replyDelete(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.delete("Video.replyDelete", map);
	}


	@Override
	public String selectInfo(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.selectOne("Video.selectInfo", map);

  }


	@Override
	public int disCountSubNums(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.update("Video.disCountSubNums", map);

	}

	@Override
	public int selectReReply(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Video.selectReReply",map);
	}

	@Override

	public int writeReReply(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Video.writeReReply",map);
	}

	@Override
	public int ReReplyAlram(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		// TODO Auto-generated method stub
		 return sqlSession.insert("Video.ReReplyAlram",map);
	}

	

	public List<AddInfo> selectAddInfo(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.selectList("Video.selectAddInfo", map);
	}
	@Override
	public List<AddPlace> selectAddPlace(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.selectList("Video.selectAddPlace", map);
	}

	@Override
	public List<Attachment> selectFiles(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("Video.selectFiles");
	}
	@Override
	public int vStatus(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.update("Video.vStatus", map);
	}

	@Override
	public int channelReport(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.insert("Video.channelReport", map);
	}
	@Override
	public int channelReportAlram(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.insert("Video.channelReportAlram", map);
	}
	@Override
	public List<VideoLike> selectReplyLike(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.selectList("Video.selectReplyLike", map);
	}
	@Override
	public List<VideoLike> selectReplyHate(SqlSessionTemplate sqlSession, Map<String, Integer> map) {
		
		return sqlSession.selectList("Video.selectReplyHate", map);
	}
	@Override
	public int selectSubtitle(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		
		return sqlSession.selectOne("Video.selectSubtitle", map);
	}
}
