package com.kh.with.video.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.with.common.CommonUtils;
import com.kh.with.member.model.service.MemberService;
import com.kh.with.member.model.vo.Member;
import com.kh.with.video.model.service.VideoService;

@Controller
@SessionAttributes("loginUser")
public class VideoController {

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

	// 동영상 업로드 페이지 이동
	@RequestMapping(value = "videoUpload.vd")
	public String videoUpload() {

		return "video/videoUpload";
	}

	// 동영상 업로드 insert 메소드
	@RequestMapping(value = "insertvideo.vd")
	public String insertVideo(Model model, HttpServletRequest request,
			@RequestParam(name = "file1", required = false) MultipartFile file1) {

		/* System.out.println(file1); */

		String root = request.getSession().getServletContext().getRealPath("resources");

		String filePath = root + "\\uploadFiles";

		// 파일명 변경
		String originFileName = file1.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();
		try {
			file1.transferTo(new File(filePath + "\\" + changeName + ext));
			model.addAttribute("changeName", changeName);
			model.addAttribute("filePath", filePath);

			HttpSession session = request.getSession();
			session.setAttribute("model", model);

			return "video/videoBasicInfo";

		} catch (Exception e) {
			new File(filePath + "\\" + changeName + ext).delete();

			model.addAttribute("msg", "동영상업로드실패");
			return "common/errorPage";
		}
	}

	// 업로드할동영상 정보 insert메소드
	@RequestMapping(value = "insertVideoInfo.vd", method=RequestMethod.POST)
	public String insertVideoInfo( 
			@RequestParam(value="allView[]",required=false) List<String> lists, Model model, HttpServletRequest request) {
		String titleName = request.getParameter("titleName");
		String videoTag = request.getParameter("videoTag");
		String[] listsa = request.getParameterValues("lists");
	
		System.out.println("allViews"+ listsa);
		 
		 
		 
		HttpSession session = request.getSession();

		model = (Model) session.getAttribute("model");
		/*
		 * System.out.println("va::: : " + model); System.out.println("model:::::" +
		 * model); System.out.println( "titleName : " + titleName + "videoTag" +
		 * videoTag + "model" + model+ "check1" + checkbokx1);
		 */
		
		/* System.out.println("list::::" + lists); */

		return " ";
	}
}
