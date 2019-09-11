package com.kh.with.video.controller;

import java.io.File;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.common.CommonUtils;
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

	// 영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value = "video.vd")
	public ModelAndView showVideoView(HttpServletRequest request) {

		int userNo = Integer.parseInt(request.getParameter("no"));
		System.out.println("LL : " + userNo);

		List<Video> list = vs.selectVideoInfo(userNo);
		System.out.println("list : " + list);

		return new ModelAndView("redirect:/videoMain.vd");
	}

	@RequestMapping(value = "videoMain.vd")
	public String showVideo(HttpServletRequest request) {

		System.out.println("videoMain");

		return "video/videoMain";
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

	// 영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value = "imgCheck.vd")
	public String imgCheck() {

		// ms.imgCheck();

		return "video/videoMain";
	}

	// 동영상 페이지 포인트 조회
	@RequestMapping(value = "selectPoint.vd")
	public String selectPoint(HttpSession session, Model model) {
		System.out.println("selectPoint in !");

		Member m = (Member) session.getAttribute("loginUser");

		int point = vs.selectPoint(m);

		model.addAttribute("point", point);

		return "video/videoMain";
	}

	// 정기후원
	@RequestMapping(value = "regSub.vd")
	@ResponseBody
	public HashMap<String, Object> regSub(Model model, HttpServletRequest request, HttpSession session) {
		int price = Integer.parseInt(request.getParameter("remain"));

		Member m = (Member) session.getAttribute("loginUser");
		m.setRemainPT(price);

		int result = vs.regSub(m);
		System.out.println("result : " + result);
		// System.out.println("money ::: " + price);

		// model.addAttribute("msg", "정기후원중");

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("msg", "정기후원중");

		return map;
	}

	// 동영상 업로드 페이지 이동
	@RequestMapping(value = "videoUpload.vd")
	public String videoUpload(HttpServletRequest request) {

		String chYN = ((Member) request.getSession().getAttribute("loginUser")).getChYN();

		System.out.println("페이지이동의 로그인유저정보 가지고 왔니?:::" + chYN);

		if (chYN.equals("Y")) {
			return "video/videoBasicInfo";
		} else {
			return "loger/createChannel";

		}

	}

	// 동영상 업로드 insert 메소드
	@RequestMapping(value = "insertvideo.vd")
	public String insertVideo(Model model, HttpServletRequest request,
			@RequestParam(name = "file1", required = false) MultipartFile file1) {

		/* System.out.println(file1); */

		String root = request.getSession().getServletContext().getRealPath("resources");

		String filepath = root + "\\uploadFiles";

		// 파일명 변경
		String originFileName = file1.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String fileName = CommonUtils.getRandomString();
		try {
			file1.transferTo(new File(filepath + "\\" + fileName + ext));

			HttpSession session = request.getSession();
			session.setAttribute("filepath", filepath);
			session.setAttribute("fileName", fileName);

			return "video/videoBasicInfo";

		} catch (Exception e) {
			new File(filepath + "\\" + fileName + ext).delete();

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
		String enrollNm = CommonUtils.getRandomString();

		/* System.out.println(enrollNm + filepath1 ); */

		// 파일 업로드 하는 구문
		try {
			file2.transferTo(new File(filepath1 + "\\" + enrollNm + ext));
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		m = (Member) session.getAttribute("loginUser");

		String filepath = (String) request.getSession().getAttribute("filepath");
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

		Video video = new Video();
		video.setvTitle(vTitle);
		video.setTag(tag);
		video.setAdultAut(adultAut);
		video.setAdYn(adYn);
		video.setOpenTy(openTy);
		video.setUserNo(getUserNo);
		video.setFilepath(filepath);
		video.setAdInfo(adInfo);
		video.setChNm(chNm);

		int result = vs.insertVideoInfo(video);

		Attachment attachment = new Attachment();
		attachment.setEnrollNm(enrollNm);
		attachment.setFilepath(filepath1);
		attachment.setUserNo(getUserNo);

		int result1 = vs.insertAttachment(attachment);

		if (result > 0 && result1 > 0) {
			return "admin/adminNoticeList";
		} else {
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

	// 동영상 이미지 출력

	/*
	 * @RequestMapping(value="/" ,method=RequestMethod.GET) public ModelAndView
	 * videoimagelist(@ModelAttribute("vl") ModelAndView mav) {
	 * mav.setViewName("main/main"); mav.addObject("list",
	 * videoservice.videoimagelist()); System.out.println("list"+mav);
	 * System.out.println("vl"); return mav; }
	 */
	/*
	 * @GetMapping("/") public String imagelist(Model model) { List<Video> list=
	 * videoservice.videoimagelist(); model.addAttribute("list",list);
	 * 
	 * System.out.println("vl"); return "main/top"; }
	 */

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
	 * public String selectLogerCalculate(Calculate c, Support s, Model model,
	 * HttpSession session) { Member m = (Member) session.getAttribute("loginUser");
	 * // 로거 정산내역 조회 ArrayList<Calculate> cList = ls.selectLogerCalculate(c, m); //
	 * 로거 후원내역 조회 ArrayList<Support> sList = ls.selectLogerSupport(s, m); // 로거 마지막
	 * 계좌 조회 ArrayList<Calculate> aList = ls.logerLastAccount(c, m);
	 * 
	 * model.addAttribute("sList", sList); model.addAttribute("cList", cList);
	 * model.addAttribute("aList", aList); model.addAttribute("s", s);
	 * model.addAttribute("c", c);
	 * 
	 * return "loger/logerCalculate"; }
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
		public ModelAndView mainlist(ModelAndView mav) {
			 mav.setViewName("main/main");
			 mav.addObject("list", videoservice.videoimagelist());
			 System.out.println(mav);
			 return mav;
		 }
		
	
	
}
