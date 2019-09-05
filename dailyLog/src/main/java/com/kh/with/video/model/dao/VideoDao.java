package com.kh.with.video.model.dao;



import org.mybatis.spring.SqlSessionTemplate;



import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.vo.Video;

public interface VideoDao {
	
	//동영상 페이지 포인트 조회
	int selectPoint(SqlSessionTemplate sqlSession, Member m);
	//정기후원
	int regSub(SqlSessionTemplate sqlSession, Member m);
	
	//동영상 업로드정보 insert 메소드
	int insertVideoInfo(SqlSessionTemplate sqlSession, Video video);
	

	

}
