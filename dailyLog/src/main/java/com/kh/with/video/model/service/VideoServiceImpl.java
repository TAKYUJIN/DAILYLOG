package com.kh.with.video.model.service;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import org.springframework.ui.Model;

import org.springframework.web.multipart.MultipartFile;

import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.dao.VideoDao;

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
	public int regSub(Member m, int price) {


		return vd.regSub(sqlSession, m, price);
	}




	@Override
	public String upload(MultipartFile file) {
		// TODO Auto-generated method stub
		return null;
	}



	// 업로드할 동영상 정보 insert메소드
	@Override
	public int insertVideoInfo(Model model) {
	 System.out.println("impl에 왔니??" + model); 


		int result = vd.insertVideoInfo(sqlSession,model);

		return result;
	}


}



