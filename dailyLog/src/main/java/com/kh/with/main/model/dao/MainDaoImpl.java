package com.kh.with.main.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.main.model.vo.Alram;
import com.kh.with.main.model.vo.MailVo;
import com.kh.with.main.model.vo.Subscribe;
import com.kh.with.main.model.vo.SubscribeVideo;
import com.kh.with.main.model.vo.Video;
import com.kh.with.main.model.vo.VideoLike;
import com.kh.with.member.model.vo.Member;

@Repository
public class MainDaoImpl implements MainDao{

	//북마크 조회
	@Override
	public ArrayList<VideoLike> showBookmark(SqlSessionTemplate sqlSession, Member m) {
		ArrayList<VideoLike> bList = null;
		
		bList = (ArrayList)sqlSession.selectList("VideoLike.showBookmark", m);
		
		return bList;
	}

	@Override
	public ArrayList<VideoLike> selectBookmark(SqlSessionTemplate sqlSession, VideoLike vl) {
		ArrayList<VideoLike> list = null;
		
		list = (ArrayList)sqlSession.selectList("VideoLike.selectBookmark", vl);
		return list;
	}

	@Override
	public List<Video> searchch(SqlSessionTemplate sqlSession, String search) {
		 
		
		return sqlSession.selectList("Video.searchch",search);
	}

	@Override
	public List<Video> searchtitle(SqlSessionTemplate sqlSession, String search) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Video.searchtitle",search);
	}

	@Override
	public List<Video> searchtag(SqlSessionTemplate sqlSession, String search) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Video.searchtag",search);
	}

	//구독한 채널명
	@Override
	public ArrayList<Subscribe> subscribeList(SqlSessionTemplate sqlSession, Subscribe subscribe) {
		
		ArrayList<Subscribe> subscribeList = null;
		
		/* System.out.println("dao까지 왔나요?" + subscribe ); */
		
		subscribeList = (ArrayList)sqlSession.selectList("Subscribe.subscribeList", subscribe);
		
		
		System.out.println("subscribeList:::" + subscribeList);
		
		return subscribeList;
	}

	//구독한 채널의비디오
	@Override
	public ArrayList<SubscribeVideo> subscribeVideoList(SqlSessionTemplate sqlSession, SubscribeVideo subscribeVideo) {
		
		
		ArrayList<SubscribeVideo> subscribeVideoList = null;
		
		/* System.out.println("구독한채널의비디오dao까지 왔나요?" + subscribeVideo ); */
		
		subscribeVideoList = (ArrayList)sqlSession.selectList("Subscribe.subscribeVideoList", subscribeVideo);
		
		
		 System.out.println("구독영상:::" + subscribeVideoList); 
		
		return subscribeVideoList;
	}
	
	
	
	@Override
	public int subscribeVideoList(SqlSessionTemplate sqlSession, MailVo mailVo) {
		 
		return sqlSession.update("friend.frireject",mailVo);
	}

	@Override

	public int idcheck(SqlSessionTemplate sqlSession, String userId) {
		 System.out.println("userId"+userId);
		return sqlSession.selectOne("Member.friendCheck",userId);

	}
	public ArrayList<Alram> selectAlram(SqlSessionTemplate sqlSession, Member m) {
		ArrayList<Alram> list = (ArrayList) sqlSession.selectList("Alram.selectAlram", m);
		
		return list;

	}

	

}















