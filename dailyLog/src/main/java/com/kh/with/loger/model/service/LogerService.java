package com.kh.with.loger.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.with.loger.model.vo.Calculate;

public interface LogerService {
	
	ArrayList<Calculate> selectLogerCalculate(Calculate c);

}
