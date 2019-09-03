package com.kh.with.loger.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.with.loger.model.service.LogerService;
import com.kh.with.loger.model.vo.Calculate;


@Controller
public class LogerController {
		@Autowired
		private LogerService ls;
	
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
		public String selectLogerCalculate(Calculate c, Model model) {
			
			
			List<Calculate> list = ls.selectLogerCalculate(c);
			
			model.addAttribute("list", list);
			
			return "loger/logerCalculate";
		}

		
}
