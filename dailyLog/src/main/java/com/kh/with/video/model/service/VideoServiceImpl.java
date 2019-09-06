package com.kh.with.video.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.dao.VideoDao;
import com.kh.with.video.model.vo.Video;

@Service
public class VideoServiceImpl implements VideoService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private VideoDao vd;
	
	//동영상 페이지 포인트 조회
	@Override
	public int selectPoint(Member m) {

		int point = vd.selectPoint(sqlSession, m);

		System.out.println("point : " + point);

		return point;
	}



	//		byte[] data = multipartFile.getBytes();
	//		FileOutputStream fos = new FileOutputStream(SAVE_PATH + "/" + saveFileName);
	//		fos.write(data);
	//		fos.close();

	//		return result;
	//	}

	//정기후원
	@Override
	public int regSub(Member m) {


		return vd.regSub(sqlSession, m);
	}




	@Override
	public String upload(MultipartFile file) {
		// TODO Auto-generated method stub
		return null;
	}


	// 업로드할동영상 정보 insert메소드
	@Override
	public int insertVideoInfo(Video video) {
		
	return vd.insertVideoInfo(sqlSession,video);
	}



	@Override
	public List<Video> videoimagelist() {
		// TODO Auto-generated method stub
		return null;
	}



	/*
	@Override
	public List<Video> videoimagelist(){
		System.out.println("videoServiceimpl");
		return vd.videoimagelist();
	}

	*/
}



