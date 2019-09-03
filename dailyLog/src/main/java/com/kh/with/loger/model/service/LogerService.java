package com.kh.with.loger.model.service;

import java.util.List;

import com.kh.with.loger.model.vo.Calculate;

public interface LogerService {
	
	List<Calculate> selectLogerCalculate(Calculate c);

}
