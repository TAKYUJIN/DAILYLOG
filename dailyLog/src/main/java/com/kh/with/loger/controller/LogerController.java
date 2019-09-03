package com.kh.with.loger.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogerController {
	
	//로거 동영상 페이지로 이동
		@RequestMapping(value="logerVideo.lo")
		public String selectLogerVideo() {
			return "loger/searchLogerVideo";
		}
		
	//로거 동영상 수정 페이지로 이동
		@RequestMapping(value="updateLogerVideo.lo")
		public String updateLogerVideo() {
			return "loger/updateLogerVideo";
		}
		
		
	//로거 정산 페이지로 이동
		@RequestMapping(value="logerCalculate.lo")
		public String selectLogerCalculate() {
			return "loger/logerCalculate";
		}

		
}
