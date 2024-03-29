package com.kh.with.main.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.main.model.vo.Alram;
import com.kh.with.main.model.vo.Friend;
import com.kh.with.main.model.vo.MailVo;
import com.kh.with.main.model.vo.NewlyVideo;
import com.kh.with.main.model.vo.Subscribe;
import com.kh.with.main.model.vo.SubscribeVideo;
import com.kh.with.main.model.vo.Video;
import com.kh.with.main.model.vo.VideoLike;
import com.kh.with.member.model.vo.Member;

public interface MainDao {

	//북마크 조회
	ArrayList<VideoLike> showBookmark(SqlSessionTemplate sqlSession, Member m);

	ArrayList<VideoLike> selectBookmark(SqlSessionTemplate sqlSession, VideoLike vl);

	List<Video> searchch(SqlSessionTemplate sqlSession, String search);

	List<Video> searchtitle(SqlSessionTemplate sqlSession, String search);

	List<Video> searchtag(SqlSessionTemplate sqlSession, String search);

	//구독한 채널명
	ArrayList<Subscribe> subscribeList(SqlSessionTemplate sqlSession, Subscribe subscribe);

	//구독한 채널비디오
	ArrayList<SubscribeVideo> subscribeVideoList(SqlSessionTemplate sqlSession, SubscribeVideo subscribeVideo);

	int subscribeVideoList(SqlSessionTemplate sqlSession, MailVo mailVo);


	public int idcheck(SqlSessionTemplate sqlSession, String userId);

	ArrayList<Alram> selectAlram(SqlSessionTemplate sqlSession, Member m);

	ArrayList<VideoLike> showVideoLike(SqlSessionTemplate sqlSession, Member m);

	ArrayList<VideoLike> selectVideoLike(SqlSessionTemplate sqlSession, VideoLike vl);

	int friendSending1(SqlSessionTemplate sqlSession, Friend f);
	int friendSending2(SqlSessionTemplate sqlSession, Friend f);

	//List<Friend> friendconfirm(SqlSessionTemplate sqlSession,Member m);

	ArrayList<NewlyVideo> newAction(SqlSessionTemplate sqlSession, Member m);



	/*int friendSending1(SqlSessionTemplate sqlSession, MailVo mailVo);
	int friendSending2(SqlSessionTemplate sqlSession, MailVo mailVo);
*/


	
 

}
