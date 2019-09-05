package com.kh.with.main.model.service;

import java.sql.SQLException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.with.main.model.dao.MailDao;
import com.kh.with.main.model.vo.MailVo;

@Service
public class regService {
 @Autowired
 private SqlSessionTemplate userSqlSession;
 private MailDao maildao;
 
 
	public int userReg_service(MailVo mailVo) {
		int resultCnt=0;
		System.out.println("regservice1");
		
		maildao =userSqlSession.getMapper(MailDao.class);
		System.out.println("regserviceMailDao"+maildao);
		
		try {
			resultCnt = maildao.regUser(mailVo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return resultCnt;

	}

}
