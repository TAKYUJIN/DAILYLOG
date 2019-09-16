package com.kh.with.main.model.service;

import java.util.ArrayList;

import com.kh.with.main.model.vo.Video;
import com.kh.with.main.model.vo.VideoLike;
import com.kh.with.member.model.vo.Member;

public interface MainService {

	//북마크 조회
	ArrayList<VideoLike> showBookmark(Member m);

	//동영상 제목으로 북마크 조회
	ArrayList<VideoLike> selectBookmark(VideoLike vl);


}
