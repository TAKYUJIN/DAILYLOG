package com.kh.with.block.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.with.block.model.service.BlockService;
import com.kh.with.block.model.vo.Blockch;
import com.kh.with.block.model.vo.Blockvi;
import com.kh.with.member.model.vo.Member;

 @Controller
@SessionAttributes("loginUser")
public class BlockController {
	
	@Autowired
	private BlockService blockservice;
	
	@RequestMapping(value="blockvi.rp",method=RequestMethod.POST)
	//메인 동영상 채널 차단
	public String blockch(Model model,HttpServletRequest request) {
		int userNo=((Member)request.getSession().getAttribute("loginUser")).getUserNo(); 
		int vNo=Integer.parseInt(request.getParameter("vNo"));	
		
		Blockvi vi =new Blockvi();
		vi.setUserNo(userNo);
		vi.setvNo(vNo); 
		
		  int result=blockservice.blockvi(vi);
		  
		  
		  return "redirect:/home.mb";
		
	}
	//회원 블락
	@RequestMapping(value="ublock.bl",method = RequestMethod.GET)
	public String ublock(Model model,HttpServletRequest request) {
		
		int userNo =Integer.parseInt(request.getParameter("userNo"));
		int vNo =Integer.parseInt(request.getParameter("vNo"));
		
		Blockvi vi =new Blockvi();
		vi.setUserNo(userNo);
		vi.setvNo(vNo);
		System.out.println("vi"+vi);
		int result=blockservice.ublock(vi);
		return "redirect:/ublacklist.ad";
		
		
	}
	
	//채널 블락
	@RequestMapping(value="cblock.bl",method=RequestMethod.GET)
	public String cblock (Model model,HttpServletRequest request) {
		
		String chNm =request.getParameter("chNm");
		int userNo =Integer.parseInt(request.getParameter("userNo"));
		
		Blockch bc =new Blockch();
		bc.setChNm(chNm);
		bc.setUserNo(userNo);
		
		int result =blockservice.cblock(bc);
		return "redirect:/cblacklist.ad";
		
		
		
		
	}
	
	
 }
	
 
