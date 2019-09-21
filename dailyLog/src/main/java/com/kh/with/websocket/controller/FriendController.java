/*package com.kh.with.websocket.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.with.member.model.vo.Member;
import com.kh.with.websocket.model.service.FriendChatService;
import com.kh.with.websocket.model.vo.Chat;
import com.kh.with.websocket.model.vo.ChatMember;

 

@Controller
@SessionAttributes("login") 
public class FriendController {

	private static final Logger log =LoggerFactory.getLogger(FriendController.class);
	
	@Autowired
	FriendChatService friendchatservice;
	
	
	@RequestMapping(value="chat.mb",method= {RequestMethod.GET,RequestMethod.POST})
	public String friendchat (Model model,HttpServletRequest request) {
		
		
		log.info("chat.mb run!!"+new Date());
		
		Member m =(Member)request.getSession().getAttribute("login");
		ChatMember chM =friendchatservice.getRoomMember(new ChatMember(0,m.getNickname(),"",""));//room 변경
		
		model.addAttribute("room","WITH");
		
		return "friends/friendchat";
		
	}
	@RequestMapping(value="createChat.mb",method= {RequestMethod.GET,RequestMethod.POST})
	public String createChat(Model model,HttpServletRequest request,Chat chat) {
		log.info("createChat.mb run!"+new Date());
		
		Member login=(Member)request.getSession().getAttribute("login");
		log.info(chat.toString());
		
		Chat ch=friendchatservice.checkRoom(chat.getname());
		if(ch ==null) {
			friendchatservice.createchatRoom(chat);
			
		}
		//현재 아이디로 만든 방의 이름으로 정보 수정
		friendchatservice.updateRoomMember(new ChatMember(0,login.getNickname(),chat.getname(),""));
		
		//이전 방은 수정 하지 않음
		
		model.addAttribute("room","WITH");
		return "friends/friendchat";
		
	}
	
	//중복 확인
	@ResponseBody
	@RequestMapping(value="checkRoom.mb",method= {RequestMethod.GET,RequestMethod.POST})
	public int checkRoom(Model model,String name) {
		System.out.println("name"+name);
		
		Chat chat=FriendChatService.chekRoom(name);
		
		//중복값이 없을 경우
		if(chat ==null) {
			return 1;
		}else {
			
			return 0;
		}
	}
	
	//방 이동
	@RequestMapping(value="MoveChatRoom.mb",method= {RequestMethod.GET,RequestMethod.POST})
	
	 public String MoveChatRoom (Model model,HttpServletRequest request,String roomName) {
	
		log.info("Movechatroom"+new Date());
		
		Member login=(Member)request.getSession().getAttribute("login");
		
			log.info("이동 할 방 이름"+roomName);
			//이동하게 될 방이름으로 수정
			FriendChatService.updateRoomMember(new ChatMember(0,login.getNickname(),roomName,""));
		
			model.addAttribute("room",roomName);
		
		return roomName;
		
		
		
	}
	 
	 
	
	
	
	
}*/
