package com.kh.with.main.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.main.model.service.BoardService;
import com.kh.with.main.model.service.MailSendService;
import com.kh.with.main.model.service.MainService;
import com.kh.with.main.model.service.regService;
import com.kh.with.main.model.vo.MailVo;
import com.kh.with.main.model.vo.Subscribe;
import com.kh.with.main.model.vo.SubscribeVideo;
import com.kh.with.main.model.vo.Video;
import com.kh.with.main.model.vo.VideoLike;
import com.kh.with.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser") 
public class MainController {

	/*
	 * @Autowired private JavaMailSender Sender;
	 */
	
	
	
	@Autowired
	private regService reg_service;
	@Autowired
	private MailSendService mailSender;
	
	@Autowired
	private MainService ms;
	 
	@Inject
	 BoardService service;
	// 북마크페이지로 이동
	@RequestMapping(value="bookmark.mb")
	public String showBoomark(Model model, HttpSession session, VideoLike vl) {
		Member m = (Member) session.getAttribute("loginUser");
		// 북마크 조회
		ArrayList<VideoLike> bList = ms.showBookmark(m);

		model.addAttribute("bList", bList);		
		
		return "main/bookmark";
	}
	
	//북마크 동영상 제목으로 검색
	@RequestMapping(value="selectBookmark.mb")
	public String selectBookmark(Model model, HttpSession session, VideoLike vl, @RequestParam(value="title", required=true) String title) {
		Member m = (Member) session.getAttribute("loginUser");
		
		int userNo = m.getUserNo();
		vl.setUserNo(userNo);
		vl.setvTitle(title);
		
		ArrayList<VideoLike> list = ms.selectBookmark(vl);
		
		model.addAttribute("list", list);
		
		
		
		return "main/selectBookmark";
	}
	
	// 구독페이지로 이동
	@RequestMapping(value="subscribe.mb")

	public String subscribeList(ModelAndView mv,HttpSession session, HttpServletRequest request, Model model){
		int userNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();

	
		
		Subscribe subscribe = new Subscribe();
		subscribe.setUserNo(userNo);
		
		/* System.out.println("유저가 담겼니?::: " +subscribe ); */
		
		
		//구독한채널명
		ArrayList<Subscribe> subscribeList = ms.subscribeList(subscribe);
		
		//구독한채널비디오
		ArrayList<SubscribeVideo> subscribeVideoList = ms.subscribeVideoList(subscribe);
		 

		
		
		
		
		
		model.addAttribute("subscribeList", subscribeList);
		
		
		return "subscribe/subscribeList";
	}
	
	
	

	// 영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value="video.mb")

	public String showVideoView() {

		return "video/videoMain";
	}

	// 메일 보내기
 
	
	  
	@RequestMapping(value = "mailSending.mb",method=RequestMethod.GET)
	  public String mailSending(MailVo MailVo,Model model,HttpServletRequest request) {
		  String userId = request.getParameter("userId");
		  
		  MailVo.setUserId(userId);
	  reg_service.userReg_service(MailVo);
	  
	  mailSender.mailSendWithUserKey(MailVo.getFriId(),MailVo.getUserId(), request);
	  
	  return "forward:/List.mb"; 
	  
	  }
	  
	 
	  @RequestMapping(value = "frimail.mb", method = RequestMethod.GET) 
	  public String key_alterConfirm(@RequestParam(value="userId", required=false) String userId, @RequestParam(value="status_yn", required=false) String status_yn) {
	  System.out.println("key_alterConfirm");
	  mailSender.alter_userKey_service(userId, status_yn); // mailsender의 경우 @Autowired
	  
	  return "friends/emailConfirm"; 
	  }
	
	
	
	
	  @RequestMapping(value = "List.mb", method = RequestMethod.GET) 
	  public String friendlist(Model model,Member m,HttpSession session) throws Exception{
		   m = (Member) session.getAttribute("loginUser");
		  
 		    System.out.println("m"+m);
 		   List<Member> user=  service.user(m);
 		   List<MailVo> list=  service.FriendList(m);
 		   System.out.println("user"+user);
 		  model.addAttribute("user",  service.user(m));
			model.addAttribute("list", service.FriendList(m));
			return "friends/friendslist";
	  }

	 
	  
	// home 클릭시 페이지로 이동
	@RequestMapping(value = "loger.mb")
	public String showLoger() {
		return "loger/logerHomeChannel";
	}

	
	//알림이요...
//	@RequestMapping(value="notification1.mb")
//	public String showNotification(Model model,HttpSession session) {
//		Member m = (Member) session.getAttribute("loginUser");
//		model.addAttribute("m", m);
//		
//		return "main/notification";
//	}
//	
//	@RequestMapping(value="notification.mb")
//	@ResponseBody
//	public HashMap<String, Object> showNotification(HttpSession session, Member m) {
//		m = (Member) session.getAttribute("loginUser");
//		System.out.println(m);
//		
//		HashMap<String, Object> map = new HashMap<String, Object>();
//		map.put("m", m);
//		
//		return map;
//	}
	
	//최근영상이동
		@RequestMapping(value="newAction.mb")
		public String selectnewAction() {
			
			return "main/newAction";
		}
	
		
		
		@RequestMapping("home.mb")
		public String home(SessionStatus status) {

			status.setComplete();

			return "index.jsp";
		}
		
		
		
		
		//검색
		@RequestMapping(value="search.mb")

		/*public String search(HttpServletRequest request,Model model,HttpSession session) {
				Video v =new Video();
				
				String searchId=request.getParameter("searchId");
				v.setvTitle(searchId);
				v.setChNm(searchId);
				v.setTag(searchId);
				
				
				List<Video>  searchch =ms.searchch(v); 
				List<Video> searchtitle  =ms.searchtitle(v); 
				List<Video> searchtag =ms.searchtag(v); 
				
				model.addAttribute("searchch", searchch);
				model.addAttribute("searchtitle", searchtitle);
				model.addAttribute("searchtag", searchtag);
			return "main/search";
		}*/
		
		public ModelAndView search(@RequestParam(defaultValue="") String search) {
			
			List<Video>  searchch =ms.searchch(search); 
			List<Video> searchtitle  =ms.searchtitle(search); 
			List<Video> searchtag =ms.searchtag(search); 
			
			ModelAndView mav =new ModelAndView();
			
			Map<String,Object>map =new HashMap<String,Object>();
			map.put("searchch",searchch);
			System.out.println("searchch"+searchch);
			map.put("searchtitle",searchtitle);
			System.out.println("searchtitle:"+searchtitle);
			map.put("searchtag",searchtag);
			System.out.println("searchtag:"+searchtag);
			
			map.put("search",search);
			mav.addObject("map",map);
			System.out.println("map:"+map);
			mav.setViewName("main/search");
			
			return mav;
					
		}
		
		
}
