package com.kh.with.main.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.with.main.model.vo.Alram;
import com.kh.with.main.model.vo.Friend;
import com.kh.with.main.model.vo.MailVo;
import com.kh.with.main.model.vo.Subscribe;
import com.kh.with.main.model.vo.SubscribeVideo;
import com.kh.with.main.model.vo.Video;
import com.kh.with.main.model.vo.VideoLike;
import com.kh.with.member.model.vo.Member;

public interface MainService {

	//북마크 조회
	ArrayList<VideoLike> showBookmark(Member m);

	//동영상 제목으로 북마크 조회
	ArrayList<VideoLike> selectBookmark(VideoLike vl);

	List<Video> searchch(String search);

	List<Video> searchtitle(String search);

	List<Video> searchtag(String search);

	//구독한 채널명
	ArrayList<Subscribe> subscribeList(Subscribe subscribe);

	//구독한 채널비디오
	ArrayList<SubscribeVideo> subscribeVideoList(SubscribeVideo subscribeVideo);

	int frireject(MailVo mailVo);


	public int idcheck(String userId);

	ArrayList<Alram> selectAlram(Member m);

	ArrayList<VideoLike> showVideoLike(Member m);

	ArrayList<VideoLike> selectVideoLike(VideoLike vl);

	int friendSending1(Friend f);
	int friendSending2(Friend f);

	List<Friend> friendconfirm(Friend f);
	

	/*int friendSending1(MailVo mailVo);

	int friendSending2(MailVo mailVo);

*/
	

	

	
 


}
