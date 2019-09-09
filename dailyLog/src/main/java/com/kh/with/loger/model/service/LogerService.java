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

	ArrayList<Calculate> selectLogerCalculate(Calculate c, Member m);

	ArrayList<Support> selectLogerSupport(Support s, Member m);

	ArrayList<Calculate> logerLastAccount(Calculate c, Member m);

	
	//로거채널개설
	int insertcreateChannel(Loger loger);



}
