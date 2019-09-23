package com.kh.with.video.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.common.CommonUtils;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.member.model.service.MemberService;
import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.service.VideoService;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Video;

@Controller
@SessionAttributes("loginUser")
public class VideoController {
	@Inject
	VideoService videoservice;
	private DataSource dataSource;
	@Autowired
	private VideoService vs;
	@Autowired
	private MemberService ms;


	// 썸네일 클릭시 동영상 페이지로 이동
	@RequestMapping(value = "video.vd")
	public String showVideoView(HttpServletRequest request, Model model, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int loginUser = m.getUserNo();
		int age = m.getAge();
		
		//썸네일 userNo, vNo
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		int vNo = Integer.parseInt(request.getParameter("vNo"));

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("userNo", userNo);
		map.put("vNo", vNo);
		map.put("loginUser", loginUser);
		
		System.out.println("needs : " + userNo + ", " + vNo);
		
		//정보 select
		List<Video> list1 = vs.selectVideoInfo(map);
		List<Loger> list2 = vs.selectLogerInfo(map);
		
		System.out.println("list1 : " + list1);
		System.out.println("list2 : " + list2);
		System.out.println("age : " + age);
		
		int chNo = (list2.get(0)).getChNo();
		map.put("chNo", chNo);
		System.out.println("chNo : " + chNo);
		
		//썸넬, 프로필
		String thumb = vs.selectThumb(map);
		String profile = vs.selectProfile(map);
		
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		model.addAttribute("age", age);
		model.addAttribute("thumb", thumb);
		model.addAttribute("profile", profile);
		model.addAttribute("chNo", chNo);
		
		return "video/videoMain";
	}
	
	//비디오 정기후원 상태 조회
	@RequestMapping(value = "regStatus.vd")
	@ResponseBody
	public String selectRegStatus(HttpServletRequest request, Model model, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int loginUser = m.getUserNo();
		int chNo = Integer.parseInt(request.getParameter("chNo"));		
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("loginUser", loginUser);
		map.put("chNo", chNo);
		
		int status = vs.selectRegStatus(map);
		System.out.println("status : " + status);
		model.addAttribute("status" + status);
		
		return Integer.toString(status);
	}
	
	// like
	@RequestMapping(value = "selectLike.vd")
	@ResponseBody
	public String selectLike(HttpServletRequest request, Model model, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int loginUser = m.getUserNo();
		int vNo = Integer.parseInt(request.getParameter("vNo"));

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("vNo", vNo);
		map.put("loginUser", loginUser);
		
		//좋/싫/북
		int like = vs.selectLike(map);
		int hate = vs.selectHate(map);
		
		System.out.println("## : " + hate);
		
		int result = 0;
		if(like > 0) {
			result = 1;
		}else {
			result = 0;
		}
		
		model.addAttribute("result", result);
		
		
		return Integer.toString(result);
	}
	// like
	@RequestMapping(value = "selectBook.vd")
	@ResponseBody
	public String selectBook(HttpServletRequest request, Model model, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int loginUser = m.getUserNo();
		int vNo = Integer.parseInt(request.getParameter("vNo"));

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("vNo", vNo);
		map.put("loginUser", loginUser);
		
		//좋/싫/북
		int book = vs.selectBook(map);
		
		System.out.println("## : " + book);
		
		model.addAttribute("book", book);
		
		
		return Integer.toString(book);
	}

	// 동영상 페이지 포인트 조회
	@RequestMapping(value = "selectPoint.vd")
	@ResponseBody
	public String selectPoint(HttpServletRequest request, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int userNo= m.getUserNo();
		
		int point = vs.selectPoint(userNo);
		System.out.println("point : " + point);
		
		return Integer.toString(point);
	}
	
	//정기후원
	@RequestMapping(value = "regSub.vd")
	@ResponseBody
	public int regSub(HttpServletRequest request, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");

		int chNo = Integer.parseInt(request.getParameter("chNo"));
		int userNo = m.getUserNo();
		int price = Integer.parseInt(request.getParameter("price"));
		int remain = Integer.parseInt(request.getParameter("remain"));
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("userNo", userNo);
		map.put("chNo", chNo);
		map.put("price", price);
		map.put("remain", remain);
		
		//포인트차감
		int result = vs.regSub(map);
		
		//정기후원내역 insert, status = 1
		int status = vs.insertReg(map);
		
		System.out.println("result : " + result + ", status : " + status);
		
		
		return result;
	}
	
	//일시후원
	@RequestMapping(value = "onceSub.vd")
	@ResponseBody
	public int onceSub(HttpServletRequest request, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");

		int chNo = Integer.parseInt(request.getParameter("chNo"));
		int userNo = m.getUserNo();
		int price = Integer.parseInt(request.getParameter("price"));
		int remain = Integer.parseInt(request.getParameter("remain"));
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("userNo", userNo);
		map.put("chNo", chNo);
		map.put("price", price);
		map.put("remain", remain);
		
		//포인트차감
		int result = vs.onceSub(map);
		
		//정기후원내역 insert, status = 1
		int status = vs.insertOnce(map);
		
		System.out.println("result : " + result + ", status : " + status);
		
		
		return result;
	}

	//좋아요
	@RequestMapping(value = "insertLike.vd")
	@ResponseBody
	public String insertLike(HttpSession session, HttpServletRequest request) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		System.out.println(chNo);
		int userNo = loginUser.getUserNo();
		System.out.println(userNo);
		int vNo = Integer.parseInt(request.getParameter("vNo"));
		System.out.println(vNo);
		System.out.println(userNo + "::" + vNo + "::" + chNo);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("userNo", userNo);
		map.put("vNo", vNo);
		map.put("chNo", chNo);
		
		int result = vs.insertLike(map);
		System.out.println("result imgCheck : " + result);
		return Integer.toString(result);
	}
	
	//
	@RequestMapping(value = "deleteLike.vd")
	@ResponseBody
	public String deleteLike(HttpSession session, HttpServletRequest request) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		int userNo = loginUser.getUserNo();
		int vNo = Integer.parseInt(request.getParameter("vNo"));
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("userNo", userNo);
		map.put("vNo", vNo);
		map.put("chNo", chNo);
		
		int result = vs.deleteLike(map);
		System.out.println("result imgCheck : " + result);
		return Integer.toString(result);
	}
	
	//싫어요 insert
	@RequestMapping(value = "insertHate.vd")
	@ResponseBody
	public String insertHate(HttpSession session, HttpServletRequest request) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		System.out.println(chNo);
		int userNo = loginUser.getUserNo();
		System.out.println(userNo);
		int vNo = Integer.parseInt(request.getParameter("vNo"));
		System.out.println(vNo);
		System.out.println(userNo + "::" + vNo + "::" + chNo);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("userNo", userNo);
		map.put("vNo", vNo);
		map.put("chNo", chNo);
		
		int result = vs.insertHate(map);
		System.out.println("result imgCheck : " + result);
		return Integer.toString(result);
	}
	
	//싫어요 delete
	@RequestMapping(value = "deleteHate.vd")
	@ResponseBody
	public String deleteHate(HttpSession session, HttpServletRequest request) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		int userNo = loginUser.getUserNo();
		int vNo = Integer.parseInt(request.getParameter("vNo"));
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("userNo", userNo);
		map.put("vNo", vNo);
		map.put("chNo", chNo);
		
		int result = vs.deleteHate(map);
		System.out.println("result imgCheck : " + result);
		return Integer.toString(result);
	}
	
	//북마크 insert
	@RequestMapping(value = "insertBookmark.vd")
	@ResponseBody
	public String insertBookmark(HttpSession session, HttpServletRequest request) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		System.out.println(chNo);
		int userNo = loginUser.getUserNo();
		System.out.println(userNo);
		int vNo = Integer.parseInt(request.getParameter("vNo"));
		System.out.println(vNo);
		System.out.println(userNo + "::" + vNo + "::" + chNo);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("userNo", userNo);
		map.put("vNo", vNo);
		map.put("chNo", chNo);
		
		int result = vs.insertBookmark(map);
		System.out.println("result imgCheck : " + result);
		return Integer.toString(result);
	}
	
	//북마크 delete
	@RequestMapping(value = "deleteBookmark.vd")
	@ResponseBody
	public String deleteBookmark(HttpSession session, HttpServletRequest request) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		int userNo = loginUser.getUserNo();
		int vNo = Integer.parseInt(request.getParameter("vNo"));
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("userNo", userNo);
		map.put("vNo", vNo);
		map.put("chNo", chNo);
		
		int result = vs.deleteBookmark(map);
		System.out.println("result imgCheck : " + result);
		return Integer.toString(result);
	}
	
	//report
	@RequestMapping(value = "report.vd")
	@ResponseBody
	public String report(HttpSession session, HttpServletRequest request) {
		Member m = (Member) session.getAttribute("loginUser");
		int loginUser = m.getUserNo();
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		int vNo = Integer.parseInt(request.getParameter("vNo"));
		String check = request.getParameter("check");
		String chNm = request.getParameter("chNm");
		String vTitle = request.getParameter("vTitle");
		System.out.println(loginUser + ", " + vNo + ", " + userNo +", " + check + ", " + chNm + ", " + vTitle);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userNo", userNo);
		map.put("loginUser", loginUser);
		map.put("check", check);
		map.put("vNo", vNo);
		map.put("chNm", chNm);
		map.put("vTitle", vTitle);
		
		int result = vs.report(map);
		System.out.println("result : " + result);
		
		int alram = vs.videoAlram(map);
		
		return Integer.toString(result);
	}
	
	//block
	@RequestMapping(value = "block.vd")
	@ResponseBody
	public String block(HttpSession session, HttpServletRequest request) {
		Member m = (Member) session.getAttribute("loginUser");
		int loginUser = m.getUserNo();
		int vNo = Integer.parseInt(request.getParameter("vNo"));
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("loginUser", loginUser);
		map.put("vNo", vNo);
		map.put("chNo", chNo);
		
		int result = vs.block(map);
		System.out.println("result : " + result);
		return Integer.toString(result);
	}
	
	//구독
	@RequestMapping(value = "subInsert.vd")
	@ResponseBody
	public String subInsert(HttpSession session, HttpServletRequest request) {
		Member m = (Member) session.getAttribute("loginUser");
		int loginUser = m.getUserNo();
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		String nickName = m.getNickname();
		String chNm = request.getParameter("chNm");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("loginUser", loginUser);
		map.put("chNo", chNo);
		map.put("nickName", nickName);
		map.put("chNm", chNm);
		map.put("userNo", userNo);
		
		int result = vs.subInsert(map);
		System.out.println("result : " + result);
		
		int alram = vs.insertSubAlram(map);
		
		return Integer.toString(result);
	}
	
	//구독
	@RequestMapping(value = "subDelete.vd")
	@ResponseBody
	public String subDelete(HttpSession session, HttpServletRequest request) {
		Member m = (Member) session.getAttribute("loginUser");
		int loginUser = m.getUserNo();
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		String nickName = m.getNickname();
		String chNm = request.getParameter("chNm");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("loginUser", loginUser);
		map.put("chNo", chNo);
		map.put("nickName", nickName);
		map.put("chNm", chNm);
		map.put("userNo", userNo);
		
		int result = vs.subDelete(map);
		System.out.println("result : " + result);
		
		int alram = vs.deleteSubAlram(map);
		
		return Integer.toString(result);
	}
	
	// 영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value = "age.vd")
	public String age() {

		return "video/age";
	}
	// 영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value = "age2.vd")
	public String age2() {

		return "video/age2";
	}
	
	// 영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value = "regular.vd")
	public String regularView() {

		return "video/videoMain";
	}

	// 영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value = "once.vd")
	public String onceView() {

		return "video/videoMain";
	}

	// 영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value = "test.vd")
	public String test() {

		return "video/test22";
	}
	
	// 더보기 입력 페이지로 이동
		@RequestMapping(value = "addInfo.vd")
		public String showAddInfo() {

			return "video/videoAddInfo";
		}





	// 동영상 업로드 페이지 이동
	@RequestMapping(value = "videoUpload.vd")
	public String videoUpload(HttpServletRequest request) {

		String chYN = ((Member) request.getSession().getAttribute("loginUser")).getChYN();

		System.out.println("페이지이동의 로그인유저정보 가지고 왔니?:::" + chYN);

		if(chYN.equals("Y")) {
			return"video/videoUpload";
		}else {
			
			return "loger/createChannel";

		}
		 
	}

	// 동영상 업로드 insert 메소드
	@RequestMapping(value = "insertvideo.vd")
	public String insertVideo(Model model, HttpServletRequest request,
			@RequestParam(name = "file1", required = false) MultipartFile file1) {


		String root = request.getSession().getServletContext().getRealPath("resources");

		String filepath = root + "\\uploadFiles";

		// 파일명 변경
		String originFileName = file1.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String fileName = CommonUtils.getRandomString()+ext;
		try {
			file1.transferTo(new File(filepath + "\\" + fileName));

			HttpSession session = request.getSession();
			session.setAttribute("filepath", filepath);
			session.setAttribute("fileName", fileName);

			return "video/videoBasicInfo";

		} catch (Exception e) {
			new File(filepath + "\\" + fileName).delete();

			model.addAttribute("msg", "동영상업로드실패");
			return "common/errorPage";
		}
	}

	// 업로드할동영상 정보 insert메소드
	@RequestMapping(value = "insertVideoInfo.vd")
	public String insertVideoInfo(@ModelAttribute Member m, Model model, HttpServletRequest request,
			HttpSession session, @RequestParam("file2") MultipartFile file2) {
		
			

		// 썸네일 업로드 및 파일이름바꾸기
		String root = request.getSession().getServletContext().getRealPath("resources");

		String filepath1 = root + "\\uploadFiles";

		String beforeenrollNm = file2.getOriginalFilename();
		String ext = beforeenrollNm.substring(beforeenrollNm.lastIndexOf("."));
		String enrollNm = CommonUtils.getRandomString()+ext;

	

		// 파일 업로드 하는 구문
		try {
			file2.transferTo(new File(filepath1 + "\\" + enrollNm));
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		m = (Member) session.getAttribute("loginUser");
		String fileName = (String) session.getAttribute("fileName");
		String vTitle = request.getParameter("vTitle");
		String beforetag = request.getParameter("tag");
		String adultAut = request.getParameter("adultAut");
		String adYn = request.getParameter("adYn");
		String openTy = request.getParameter("openTy");
		String adInfo = request.getParameter("adInfo");
		int getUserNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();
		String chNm = ((Member) request.getSession().getAttribute("loginUser")).getNickname(); // 닉네임이 채널명

		if (adYn == null) {
			adYn = "N";
		}

		// 해시태그추가
		String tag = " ";

		String[] Tags = beforetag.split(",");
		for (int i = 0; i < Tags.length; i++) {
			tag += "#" + Tags[i];
		}

		//동영상 
		Video video = new Video();
		video.setvTitle(vTitle);
		video.setTag(tag);
		video.setAdultAut(adultAut);
		video.setAdYn(adYn);
		video.setOpenTy(openTy);
		video.setUserNo(getUserNo);
		video.setFileNm(fileName);
		video.setAdInfo(adInfo);
		video.setChNm(chNm);


		int result = vs.insertVideoInfo(video);
		
	
		//동영상번호 select 
		int UserNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();
		Video result2 = vs.selectvNo(UserNo);

		//썸네일
		Attachment attachment = new Attachment();
		attachment.setFileNm(enrollNm);
		attachment.setUserNo(getUserNo);
		attachment.setvNo(result2.getvNo());
	
		int result1 = vs.insertAttachment(attachment);

		System.out.println("result1" + result1);

		if(result > 0  && result1 > 0 ) {
			
			return "redirect:index.jsp";
		}else {
			model.addAttribute("msg", "동영상 업로드실패");
			return "common/errorPage";
		}


	}

	// 동영상업로드
	@RequestMapping("/upload")
	public String upload(Model model, @RequestParam("file1") MultipartFile file) {

		String url = vs.upload(file);
		model.addAttribute("url", url);
		return "result";
	}

	// 메인 썸네일
	/*
	 * @RequestMapping(value="home.mb") public String mainlist(Attachment a,Model
	 * model) throws Exception {
	 * 
	 * // List<Attachment> list= videoservice.videoimagelist();
	 * //System.out.println("list:"+list);
	 * 
	 * 
	 * mv.setViewName("main/main"); mv.addObject("list",
	 * videoservice.videoimagelist()); System.out.println("mv:"+mv); return mv;
	 * 
	 * 
	 * ArrayList<Attachment> list=videoservice.videoimagelist();
	 * System.out.println("list"+list);
	 * 
	 * return "main/main"; }
	 */
 

	/*
	 * @RequestMapping("home.mb") public String videoimagelist(@ModelAttribute("vl")
	 * Video video,Model model) {
	 * 
	 * System.out.println("video:"+video); return "main/main"; }
	 *//*
		 * @RequestMapping("guest") public String guest(@RequestParam("vNo")int
		 * V_NO,@RequestParam("userNo")int USER_NO,
		 * 
		 * @RequestParam("vTitle")String V_TITLE,@RequestParam("chNm")String CH_NM,
		 * 
		 * @RequestParam("filepath")String FILEPATH ,Model model) {
		 * 
		 * 
		 * Video video=new Video(); video.setvNo(V_NO); video.setUserNo(USER_NO);
		 * video.setvTitle(V_TITLE); video.setChNm(CH_NM); video.setFilepath(FILEPATH);
		 * System.out.println("video:"+video);
		 * 
		 * return "main/main"; }
		 */
	
	
	/*
	 * @RequestMapping(value="logo.mb",method=RequestMethod.GET) public ModelAndView
	 * logolist(ModelAndView mav) { mav.setViewName("main/top1");
	 * mav.addObject("list", videoservice.videoimagelist());
	 * System.out.println(mav); return mav; }
	 */
	
	 @RequestMapping(value="home.mb",method=RequestMethod.GET)
		public ModelAndView mainlist( HttpSession session,ModelAndView mav ) {
		 	Member m = (Member) session.getAttribute("loginUser");
			 mav.setViewName("main/top1");
			 mav.addObject("list", videoservice.videoimagelist(m));
			 mav.addObject("videopop", videoservice.videopop(m));
			 mav.addObject("videonew", videoservice.videonew(m));
			 mav.addObject("videobook", videoservice.videobook(m));
			 mav.addObject("videosub", videoservice.videosub(m));
			 mav.addObject("videolike", videoservice.videolike(m));
			 System.out.println(mav);
			 return mav;
	 }
	 @RequestMapping(value="guest.mb",method=RequestMethod.GET)
		public ModelAndView guest( HttpSession session,ModelAndView mav ) {
			 mav.setViewName("main/top");
			 mav.addObject("list", videoservice.videoimagelist());
			 mav.addObject("videopop", videoservice.videopop1());
			 mav.addObject("videonew", videoservice.videonew1());
			 mav.addObject("videotak", videoservice.videotak());
			 mav.addObject("videokim1", videoservice.videokim1());
			 mav.addObject("videokim2", videoservice.videokim2());
			 mav.addObject("videopark", videoservice.videopark());
			 mav.addObject("videoji", videoservice.videoji());
			 mav.addObject("videojeong", videoservice.videojeong());
			 
			 
			 System.out.println(mav);
			 return mav;
	 }	
	
	 
	 
	 
	
}
