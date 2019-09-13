package com.kh.with.block.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.with.block.model.service.BlockchService;
import com.kh.with.block.model.vo.Blockch;
import com.kh.with.member.model.vo.Member;

 @Controller
@SessionAttributes("loginUser")
public class BlockchController {
	
	@Autowired
	private BlockchService blockservice;
	
	@RequestMapping(value="blockch.rp",method=RequestMethod.POST)
	//메인 동영상 채널 차단
	public String blockch(Model model,HttpServletRequest request) {
		int userNo=((Member)request.getSession().getAttribute("loginUser")).getUserNo(); 
		String chNm=request.getParameter("chNm");	
		
		  Blockch bc =new Blockch();
		bc.setUserNo(userNo);
		bc.setChNm(chNm);
		
		  int result=blockservice.blockch(bc);
		  
		  
		  return "redirect:/home.mb";
		
	}
 }
	
 
