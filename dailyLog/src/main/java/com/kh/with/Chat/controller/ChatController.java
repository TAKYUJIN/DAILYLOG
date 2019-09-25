package com.kh.with.Chat.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.with.Chat.model.vo.friend;
import com.kh.with.member.model.vo.Member;

@Controller
public class ChatController {
	private static final org.slf4j.Logger logger= LoggerFactory.getLogger(ChatController.class);
	
 	
	/*	@RequestMapping(value="chat.mb",method= {RequestMethod.GET,RequestMethod.POST})
	public String chat (Model model,HttpServletRequest request) {
		
		logger.info("chat.mb Run!!!  /Run Time:"+new Date());
		
		Member login =(Member)request.getSession().getAttribute("login");
		
		if(login ==null) {
			return "redirect:/loginbutton.me";
		}
 
	
	
	//DB에 현재 아이디로 어떤 방에 들어가있는지 조사 후, 세팅하기
			friend friM = chatservice.getRoomMember(new friend(0, login.getUserId(), "",""));
			
			//만약 채팅방을 처음 입장하는 것이라면 방에대한 아이디정보를 생성
			if(friM ==null) {
				chatservice.addRoomMember(new friend(0, login.getUserId(), "all", "all"));
				
				//추가를 한다음 chatM을 다시 받아오도록한다.
				friM = chatservice.getRoomMember(new friend(0, login.getUserId(), "",""));
				logger.info("아이디 정보 추가 성공!" + new Date());
				
			}
			//존재한다면 방정보를 all로 변경 
			else {
				chatservice.updateRoomMember(new friend(0,  login.getUserId(), "all", "")); //room 변경
				
			}
			

			//현재 방이름 넣기(전체채팅방이니 all)
			model.addAttribute("room", "all");

			return "friends/chattiels";
		}

	
//방만들기
	@RequestMapping(value="createChatRoom.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String createChatRoom (Model model, HttpServletRequest req, Chat  chat) throws Exception{
		
		logger.info("createChatRoom.do RUN! / Run Time: " + new Date());
		
		Member  login = (Member)req.getSession().getAttribute("login");
		
		if(login==null) {
			return "redirect:/loginbutton.me";
		}
		
		logger.info(chat.toString());
		
		//해당 정보로 방을 DB에 생성( 이미 방이 존재한다면 생성하지 않는다 )
		Chat dto = chatservice.checkRoom(chat.getName());
		if(dto ==null) {
			chatservice.createChatRoom(chat);
		}
		
		//현재 아이디로 만든 방의 이름으로 정보를 수정한다.
		chatservice.updateRoomMember(new friend (0, login.getUserId(), chat.getName(), ""));
		
		//이전방은 수정하지 않음
		
		//현재 방이름 넣기(전체채팅방이니 all)
		model.addAttribute("room", chat.getName());
		
		return "chat.tiles";
	}
	//중복확인
	@ResponseBody
	@RequestMapping(value="checkRoom.do", method = { RequestMethod.GET, RequestMethod.POST })
	public int checkRoom(Model model, String name) throws Exception{
		System.out.println("name="+name);
		
		Chat  dto = chatservice.checkRoom(name);
		//중복값이 없을경우
		if(dto ==null) {
			return 1;
		}
		else {
			return 0;
		}		
	}
	
	//방이동
	@RequestMapping(value="MoveChatRoom.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String MoveChatRoom (Model model, HttpServletRequest req, String roomName) throws Exception{
		
		logger.info("MoveChatRoom.do RUN! / Run Time: " + new Date());
		
		Member  login = (Member )req.getSession().getAttribute("login");
		
		if(login==null) {
			return "redirect:/loginbutton.me";
		}
		
		logger.info("이동할 방이름 : "+roomName);
		
		//이동하게 될 방 이름으로 수정
		chatservice.updateRoomMember(new ChatMember (0, login.getId(), roomName, ""));
		
		//접속 끊기 이전방은 수정하지 않음.
		
		//방이동 처리
		model.addAttribute("room", roomName);
		
		return "chat.tiles";
	}
	*/
	 
	

  //친구 채팅
  
  @RequestMapping(value="FriendChat.mb",method=RequestMethod.GET) public String
  frichat(HttpSession session,Model model) { Member m = (Member)
  session.getAttribute("loginUser");
  
  model.addAttribute("m"+m); System.out.println("m333"+m);
  System.out.println("model11"+model); return "friends/frichat"; }
  
  
}