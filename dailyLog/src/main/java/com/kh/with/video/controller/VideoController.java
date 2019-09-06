package com.kh.with.video.controller;

import java.io.File;
import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.common.CommonUtils;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.member.model.service.MemberService;
import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.service.VideoService;
import com.kh.with.video.model.vo.Video;

@Controller
@SessionAttributes("loginUser")
public class VideoController {
	@Inject
	VideoService videoservice;

	@Autowired
	private VideoService vs;
	private MemberService ms;

	// 영상 클릭시 동영상 페이지로 이동
	@RequestMapping(value = "video.vd")
	public String showVideoView() {

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
	public String videoUpload() {

		return "video/videoUpload";
	}



	// 동영상 업로드 insert 메소드
	@RequestMapping(value = "insertvideo.vd")
	public String insertVideo(Model model, HttpServletRequest request,
			@RequestParam(name = "file1", required = false) MultipartFile file1 ) {

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
	public String insertVideoInfo(@ModelAttribute Member m, Model model,HttpServletRequest request, HttpSession session) {

		m = (Member) session.getAttribute("loginUser");


		String filepath = (String) session.getAttribute("filepath");
		String fileName = (String) session.getAttribute("fileName");
		String vTitle = request.getParameter("vTitle"); 
		String beforetag =request.getParameter("tag"); 
		String adultAut=request.getParameter("adultAut");
		String adYn =request.getParameter("adYn");
		String openTy =request.getParameter("openTy");
		String adInfo = request.getParameter("adInfo");
		int getUserNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();
		String chNm   = ((Member) request.getSession().getAttribute("loginUser")).getNickname(); //닉네임이 채널명


		if(adYn == null) {
			adYn = "N"; }



		//해시태그추가
		String tag = " ";

		String [] Tags = beforetag.split(",");
		for(int i =0; i <Tags.length; i++) { 
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



		System.out.println("정상적으로 출력이 되나요?" + video);

		int result = vs.insertVideoInfo(video);


		if(result > 0 ) {
			return "redirect:index.jsp";
		}else {
			model.addAttribute("msg", "동영상 업로드실패");
			return "common/errorPage";
		}

	}

	/*
	 * //썸네일 ATTACHMENT insert
	 * 
	 * @RequestMapping(value = "insertthumbNail.vd") public int insertthumbNail
	 * (@ModelAttribute Member m,Model model, HttpServletRequest request,
	 * HttpSession session ,
	 * 
	 * @RequestParam(name = "thumbNail", required = false) MultipartFile thumbNail)
	 * {
	 * 
	 * String root =
	 * request.getSession().getServletContext().getRealPath("resources");
	 * 
	 * String filepath = root + "\\uploadFiles";
	 * 
	 * // 파일명 변경 String originFileName = thumbNail.getOriginalFilename(); String ext
	 * = originFileName.substring(originFileName.lastIndexOf(".")); String fileName
	 * = CommonUtils.getRandomString(); try { thumbNail.transferTo(new File(filepath
	 * + "\\" + fileName + ext));
	 * 
	 * 
	 * HttpSession session = request.getSession();
	 * 
	 * session.setAttribute("filepath", filepath); session.setAttribute("fileName",
	 * fileName);
	 * 
	 * return "video/videoBasicInfo";
	 * 
	 * } catch (Exception e) { new File(filepath + "\\" + fileName + ext).delete();
	 * 
	 * model.addAttribute("msg", "동영상업로드실패"); return "common/errorPage"; }
	 * 
	 * }
	 */





	// 동영상업로드
	@RequestMapping("/upload")
	public String upload(Model model, @RequestParam("file1") MultipartFile file) {

		String url = vs.upload(file);
		model.addAttribute("url", url);
		return "result";
	}


}

/*
	//동영상 이미지 출력

	@RequestMapping(value="home.mb" ,method=RequestMethod.GET)
	public ModelAndView videoimagelist(ModelAndView mav)
	{
		mav.setViewName("/main/top");
		System.out.println("videocontroller:"+mav);
		mav.addObject("list", videoservice.videoimagelist());
		System.out.println("vid"+videoservice);
		System.out.println("mav"+mav);

		return mav;
	}



} */

