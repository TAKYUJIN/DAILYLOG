package com.kh.with.loger.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.member.model.vo.Member;

public interface LogerService {
//	ArrayList<Calculate> selectLogerCalculate(Member m);
//
//	ArrayList<Calculate> selectLogerCalculate(Calculate c);

	//로거 정산내역 조회
	ArrayList<Calculate> selectLogerCalculate(Calculate c, Member m);

	//로거 후원내역 조회
	ArrayList<Support> selectLogerSupport(Support s, Member m);

	//로거 마지막 계좌 조회
	ArrayList<Calculate> logerLastAccount(Calculate c, Member m);

	
	//로거채널개설
	int insertcreateChannel(Loger loger);

	//기간별 후원내역 조회
	ArrayList<Support> selectLogerSupportDate(Support s, Member m);

	//로거 계좌 update
	int updateLogerAccount(Member m);

	//기간별 후원내역 조회 값
	ArrayList<Support> selectLogetSupportPrice(Support s, Member m);

	



}
