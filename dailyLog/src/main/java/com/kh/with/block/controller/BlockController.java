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
import com.kh.with.block.model.vo.Blockrep;
import com.kh.with.block.model.vo.Blockvi;
import com.kh.with.loger.model.vo.Loger;
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
	//동영상 블락(동영상)
	@RequestMapping(value="vblock.bl",method = RequestMethod.GET)
	public String vblock(Model model,HttpServletRequest request) {
		
		int userNo =Integer.parseInt(request.getParameter("userNo"));
		int vNo =Integer.parseInt(request.getParameter("vNo"));
		
		Blockvi vi =new Blockvi();
		vi.setUserNo(userNo);
		vi.setvNo(vNo);
		System.out.println("vi"+vi);
		
		Loger l =new Loger();
		l.setUserNo(userNo);
		
		int result=blockservice.vblock(vi);
		int vblockstatus = blockservice.vblockstatus(l);
		return "redirect:/cblacklist.ad";
	}
	
	
	
	
	//채널 블락
	@RequestMapping(value="cblock.bl",method=RequestMethod.GET)
	public String cblock (Model model,HttpServletRequest request) {
		
		String chNm =request.getParameter("chNm");
		int userNo =Integer.parseInt(request.getParameter("userNo"));
		
		Blockch bc =new Blockch();
		bc.setChNm(chNm);
		bc.setUserNo(userNo);
		
		Loger l =new Loger();
		l.setUserNo(userNo);
		
		int result =blockservice.cblock(bc);
		int cblockstatus=blockservice.cblockstatus(l);
		
		return "redirect:/cblacklist.ad";
	}
	
	
	//회원 블락(댓글)
 		@RequestMapping(value="ublock.bl",method = RequestMethod.GET)
		public String ublock(Model model,HttpServletRequest request) {
			
			int userNo =Integer.parseInt(request.getParameter("userNo"));
			int repno =Integer.parseInt(request.getParameter("repno"));
			
			Blockrep rep =new Blockrep();
			rep.setUserNo(userNo);
			rep.setRepno(repno);
			
			Member m =new Member();
			m.setUserNo(userNo);
			
			int result=blockservice.ublock(rep);
			int ublockstatus=blockservice.ublockstatus(m);
			return "redirect:/ublacklist.ad";
		}
	 
 }
	
 
