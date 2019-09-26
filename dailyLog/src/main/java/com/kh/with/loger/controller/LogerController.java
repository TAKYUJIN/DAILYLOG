package com.kh.with.loger.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.admin.model.vo.Board;
import com.kh.with.common.CommonUtils;
import com.kh.with.loger.model.service.LogerService;
import com.kh.with.loger.model.vo.Calculate;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.loger.model.vo.Loger2;
import com.kh.with.loger.model.vo.MyVideo;
import com.kh.with.loger.model.vo.SubUserInfo;
import com.kh.with.loger.model.vo.Support;
import com.kh.with.main.model.service.MainService;
import com.kh.with.main.model.vo.Subscribe;
import com.kh.with.main.model.vo.SubscribeVideo;
import com.kh.with.main.model.vo.VideoLike;
import com.kh.with.member.model.vo.Member;
import com.kh.with.report.model.vo.Report;
import com.kh.with.video.model.service.VideoService;
import com.kh.with.video.model.vo.Attachment;
import com.kh.with.video.model.vo.Video;

@Controller
public class LogerController {
	@Autowired
	private LogerService ls;
	private DataSource dataSource;
	@Autowired
	private VideoService vs;


	// 로거 동영상 페이지로 이동
	@RequestMapping(value="logerVideo.lo")
	public String selectLogerVideo(Model model, HttpSession session, Video v) {
		Member m = (Member) session.getAttribute("loginUser");

		ArrayList<Video> vList = ls.showLogerVideo(m);

		model.addAttribute("vList", vList);	


		return "loger/searchLogerVideo";
	}

	// 로거 동영상 수정 페이지로 이동
	@RequestMapping(value = "selectLogerVideo.lo")
	public String selectLogerVideo(HttpSession session, Model model, HttpServletRequest request,
			@RequestParam(value="vNo") int vNo) {
		Member m = (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();
		ArrayList<Loger> loger = ls.selectLogerInfo(m);

		Loger l = new Loger();
		l.setUserNo(userNo);
		l.setvNo(vNo);
		ArrayList<Video> vList = ls.selectLogerVideo(l);

		String adultAut = vList.get(0).getAdultAut();
		String adYN = vList.get(0).getAdYn();
		String openTY = vList.get(0).getOpenTy();

		model.addAttribute("vList", vList);
		model.addAttribute("adultAut", adultAut);
		model.addAttribute("adYN", adYN);
		model.addAttribute("openTY", openTY);

		return "loger/updateLogerVideo";
	}
	
	// 로거 동영상 수정 update
		@RequestMapping(value = "updateLogerVideo.lo")
		public String updateLogerVideo(HttpSession session, Model model, HttpServletRequest request,
				@RequestParam (value = "vNo", required=false) Integer vNo) {
			Member m = (Member) session.getAttribute("loginUser");
			int userNo = m.getUserNo();
			
			System.out.println(vNo);
			String vTitle = request.getParameter("vTitle");
			String tag = request.getParameter("vTag");
			String adultAut = request.getParameter("adultAut");
			String adYn = request.getParameter("adYN");
			String openTy = request.getParameter("openTY");
			String adInfo = request.getParameter("adInfo");
			
			if (adYn == null) {
				adYn = "N";
			}
			
			Video v = new Video();
			v.setvNo(vNo);
			v.setUserNo(userNo);
			v.setvTitle(vTitle);
			v.setTag(tag);
			v.setOpenTy(openTy);
			v.setAdultAut(adultAut);
			v.setAdYn(adYn);
			v.setAdInfo(adInfo);
			
			System.out.println("vvvvV:::::::::" + v);
					
			int result = ls.updateLogerVideo(v);
			
			return "loger/updateLogerVideo";
		}



	// 로거 동영상 삭제
	@RequestMapping(value="videoDelete.lo")
	public String videoDelete(HttpServletRequest request, Model model, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int loginUser = m.getUserNo();
		int vNo = Integer.parseInt(request.getParameter("vNo"));


		int result1 = ls.videoDelete(vNo);
		int result2 = ls.attachmentDelete(vNo);

		if(result1 > 0 && result2 > 0) {
			return "forward:/logerVideo.lo";			
		}else {
			model.addAttribute("msg", "알 수 없는 에러입니다.");
			return "common/errorPage";
		}
	}
	// 로거 -> 분석
	@RequestMapping(value = "analysis.lo")
	public String analysisView() {
		return "loger/analysis";
	}

	// 로거 분석 -> 수익
	@RequestMapping(value = "anal_cal.lo")
	public String calView() {
		return "loger/anal_cal";
	}

	// 로거 정산 페이지로 이동
	@RequestMapping(value = "logerCalculate.lo")
	public String selectLogerCalculate(Calculate c, Support s, Model model, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		// 로거 정산내역 조회
		ArrayList<Calculate> cList = ls.selectLogerCalculate(c, m);
		// 로거 후원내역 조회
		ArrayList<Loger> loger = ls.selectLogerInfo(m);
		int chNo = loger.get(0).getChNo();
		m.setChNo(chNo);
		ArrayList<Support> sList = ls.selectLogerSupport(s, m);
		// 로거 마지막 계좌 조회
		ArrayList<Calculate> aList = ls.logerLastAccount(c, m);

		model.addAttribute("sList", sList);
		model.addAttribute("cList", cList);
		model.addAttribute("aList", aList);
		model.addAttribute("s", s);
		model.addAttribute("c", c);

		return "loger/logerCalculate";
	}

	// 계좌 api로 연결
	@RequestMapping(value = "accountApi.lo")
	public String selectLogerAccount() {

		return "loger/accountApi";
	}

	// 계좌인증 후 후원 내역으로 연결 계좌 내역 저장
	@RequestMapping(value = "logerLastAccount.lo")
	public String logerCalculateApply(@RequestParam(value = "account", required = false) String account,
			@RequestParam(value = "accountNm", required = false) String accNm,
			@RequestParam(value = "bankcode", required = false) String bankNm, Support s, Model model,
			HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		m.setAccount(account);
		m.setAccNm(accNm);

		if (bankNm.equals("020")) {
			m.setBankNm("우리은행");
		} else if (bankNm.equals("003")) {
			m.setBankNm("기업은행");
		} else if (bankNm.equals("004")) {
			m.setBankNm("국민은행");
		} else if (bankNm.equals("011")) {
			m.setBankNm("농협중앙회");
		} else if (bankNm.equals("081")) {
			m.setBankNm("하나은행");
		} else if (bankNm.equals("088")) {
			m.setBankNm("신한은행");
		}

		int result = ls.updateLogerAccount(m);

		return "loger/selectLogerCalculate";
	}

	// 후원 내역 기간 선택 테스트용
	@RequestMapping(value="selectSupport.lo")
	public String selectLogerCalculate() {

		return "loger/selectLogerCalculate";
	}

	// 로거 기간별 후원 내역 조회
	@RequestMapping(value="datepic.lo", produces="application/text; charset=UTF-8")
	public ModelAndView datepic(HttpSession session, HttpServletRequest request,
			@RequestParam(value = "monthDate", required = false) Date mon,
			@RequestParam(value = "todayDate", required = false) Date day, Support s, ModelAndView mv,
			HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
		Member m = (Member) session.getAttribute("loginUser");

		ArrayList<Loger> loger = ls.selectLogerInfo(m);
		int chNo = loger.get(0).getChNo();

		m.setChNo(chNo);
		m.setMon(mon);
		m.setDay(day);

		ArrayList<Support> dateList = ls.selectLogerSupportDate(s, m);

		mv.addObject("dateList", dateList);
		mv.setViewName("jsonView");

		return mv;
	}


	// 후원 내역 기간 선택 후 정산 신청
	@RequestMapping(value="logerCalculateApply.lo")
	public String selectLogerCalculateApply(HttpSession session, HttpServletRequest request,
			@RequestParam(value = "monthDate", required = false) Date mon,
			@RequestParam(value = "todayDate", required = false) Date day, Support s, Calculate c, Model model,
			HttpServletResponse response) {

		response.setContentType("text/html;charset=UTF-8");
		Member m = (Member) session.getAttribute("loginUser");
		m.setMon(mon);
		m.setDay(day);

		//기간별 후원내역 조회의 총 금액
		ArrayList<Support> pList = ls.selectLogerSupportPrice(s, m);

		//loger정보 가져오기
		ArrayList<Loger> loger = ls.selectLogerInfo(m);

		int calPrice = 0;
		for(int i =0; i < pList.size(); i++){

			calPrice += pList.get(i).getSupPrice();

		}

		int calVAT = (int) (calPrice * 0.3);	//수수료
		int amountPrice = (int) (calPrice * 0.7);	//실수령액
		int userNo = m.getUserNo();
		int chNo = loger.get(0).getChNo();
		String accNm = loger.get(0).getAccNm();
		String bankNm = loger.get(0).getBankNm();
		String account = loger.get(0).getAccount();

		c.setUserNo(userNo);
		c.setCalPrice(calPrice);
		c.setCalVAT(calVAT);
		c.setAmountPrice(amountPrice);
		c.setAccNm(accNm);
		c.setBankNm(bankNm);
		c.setAccount(account);
		c.setChNo(chNo);

		//정산내역 insert
		int result = ls.insertLogerCalculate(c);

		//후원내역에 정산유무 update
		int result2 = ls.updateSupportCalculate(m);
		System.out.println(result2);

		if (result > 0 && result2 > 0) {
			model.addAttribute("msg", "정산 신청이 완료되셨습니다.");
		} 

		return "forward:/logerCalculate.lo";
	}



	// 로거스튜디오
	@RequestMapping(value = "newHomeChannel.lo")
	public ModelAndView  newHomeChannel(ModelAndView mv,HttpSession session, 
			HttpServletRequest request, Model model,@ModelAttribute Member m){

		int userNo = Integer.parseInt(request.getParameter("userNo")); 


		int getUserNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();

		//로거스튜디오채널번호 받기 
		Loger loger = new Loger();
		Loger chNos = ls.selectChNo(userNo);


		int chNo = chNos.getChNo();


		System.out.println("채널번호:::" + chNo + "로그인한 유저번호:::" + getUserNo);

		Subscribe subscibe = new Subscribe();
		subscibe.setChNo(chNo);
		subscibe.setUserNo(getUserNo);


		//구독유무확인
		int subcount = ls.subcount(subscibe);
		System.out.println("subcount구독유무확인" + subcount);


		//채널타이틀이미지 
		Attachment attachment = new Attachment();
		attachment.setUserNo(userNo);

		Attachment logertitleimg = ls.logertitleimg(attachment);

		System.out.println("logertitleimg" + logertitleimg);


		//프로필정보
		Loger2 loger2 = new Loger2();
		loger2.setUserNo(userNo);

		System.out.println("loger2:::" + loger2);

		Loger2 result = ls.newHomeChannel(userNo); 



		//로거스튜디오 홈 하단의 동영상정보
		MyVideo myvideo = new MyVideo();
		myvideo.setUserNo(userNo);

		//최근동영상
		ArrayList<MyVideo> newHomeChannellVideo = ls.newHomeChannellVideo(myvideo);



		//인기동영상
		ArrayList<MyVideo> favHomeChannellVideo = ls.favHomeChannellVideo(myvideo);




		//최신동영상 1개 
		Video favOne = ls.favOne(myvideo);

		System.out.println("최신동영상" + favOne);

		//최신동영상 1개 썸네일 

		Attachment favOnesum = ls.favOnesum(myvideo);

		System.out.println("최신동영상" + favOne);


		HttpSession session1 = request.getSession();
		session.setAttribute("userNo", userNo);


		mv.addObject("result", result); 
		mv.addObject("newHomeChannellVideo", newHomeChannellVideo); 
		mv.addObject("favHomeChannellVideo", favHomeChannellVideo); 
		mv.addObject("logertitleimg", logertitleimg); 
		mv.addObject("favOne", favOne); 
		mv.addObject("favOnesum", favOnesum); 
		mv.addObject("subcount", subcount); 




		mv.setViewName("loger/newHomeChannel"); 


		return mv; 




	}

	// 로거스튜디오내 동영상으로 이동
	@RequestMapping(value = "logerHomeAllVideo.lo")
	public String  logerHomeAllVideo(ModelAndView mv,HttpSession session, 
			HttpServletRequest request, Model model){

		/* int userNo = Integer.parseInt(request.getParameter("userNo")); */

		int userNo =  (int) session.getAttribute("userNo");

		int getUserNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();	

		//프로필 

		Loger2 loger2 = new Loger2();
		loger2.setUserNo(userNo);
		Loger2 result = ls.homeProfile(loger2); 

		int chNo = result.getChNo();

		System.out.println("채널번호:::" + chNo + "로그인한 유저번호:::" + getUserNo);

		Subscribe subscibe = new Subscribe();
		subscibe.setChNo(chNo);
		subscibe.setUserNo(getUserNo);


		//구독유무확인
		int subcount = ls.subcount(subscibe);
		System.out.println("subcount구독유무확인" + subcount);



		//모든영상
		MyVideo myvideo = new MyVideo();
		myvideo.setUserNo(userNo);

		ArrayList<MyVideo> logerHomeAllVideo = ls.logerHomeAllVideo(myvideo);




		//채널타이틀이미지 
		Attachment attachment = new Attachment();
		attachment.setUserNo(userNo);

		Attachment logertitleimg = ls.logertitleimg(attachment);


		HttpSession session2 = request.getSession();

		session.setAttribute("userNo", userNo);

		model.addAttribute("logerHomeAllVideo", logerHomeAllVideo);
		model.addAttribute("result", result);
		model.addAttribute("logertitleimg", logertitleimg);
		model.addAttribute("subcount", subcount); 


		return "loger/logerHomeAllVideo";
	}

	// 로거스튜디오내 정보로 이동
	@RequestMapping(value = "logerHomeInfo.lo")
	public String logerHomeInfo(ModelAndView mv,HttpSession session, 
			HttpServletRequest request, Model model){

		int userNo =  (int) session.getAttribute("userNo");
		
		int getUserNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();	



		Loger2 loger2 = new Loger2();
		loger2.setUserNo(userNo);

		Loger2 logerHomeInfo = ls.logerHomeInfo(loger2);
		
		int chNo = logerHomeInfo.getChNo();
		
		
		System.out.println("채널번호:::" + chNo + "로그인한 유저번호:::" + getUserNo);

		Subscribe subscibe = new Subscribe();
		subscibe.setChNo(chNo);
		subscibe.setUserNo(getUserNo);


		//구독유무확인
		int subcount = ls.subcount(subscibe);
		System.out.println("subcount구독유무확인" + subcount);

		
		

		//채널타이틀이미지 
		Attachment attachment = new Attachment();
		attachment.setUserNo(userNo);

		Attachment logertitleimg = ls.logertitleimg(attachment);



		model.addAttribute("logerHomeInfo", logerHomeInfo);
		model.addAttribute("logertitleimg", logertitleimg);
		model.addAttribute("subcount", subcount); 


		return "loger/logerHomeInfo";

	}

	// 로거스튜디오 - 채널설정으로 이동
	@RequestMapping(value = "logerChannelSet.lo")
	public String logerChannelSet() {
		return "loger/logerChannelSet";
	}
	
	//로거스튜디오 - 채널정보변경으로 이동
	@RequestMapping(value = "goChannelChangeInfo.lo")
	public String goChannelChangeInfo() {
		
		
		
		return "loger/logerChannelChangeInfo";
	}
	

	// 로거스튜디오 - 채널정보변경으로 이동
	@RequestMapping(value = "logerChannelChangeInfo.lo")
	public String logerChannelChangeInfo(@ModelAttribute Member m, Model model, HttpServletRequest request,
			HttpSession session, @RequestParam(name = "file3", required = false) MultipartFile file3) {
		
		System.out.println("로거스튜디오 채널정보변경으로 이동되었니?");
		int userNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();
		String chInfo = request.getParameter("chInfo");
		
		
		  //채널설명 변경 
			Loger loger = new Loger();
			loger.setUserNo(userNo);
			loger.setChInfo(chInfo);
		 
		 int result = ls.updateInfo(loger);
		 

		System.out.println(result);
		

		

		// 썸네일 업로드 및 파일이름바꾸기
		String root = request.getSession().getServletContext().getRealPath("resources");

			String filepath1 = root + "\\uploadFiles";
			String beforeenrollNm = file3.getOriginalFilename();
			String ext = beforeenrollNm.substring(beforeenrollNm.lastIndexOf("."));
			String fileNm = CommonUtils.getRandomString()+ext;

			
		System.out.println(userNo + chInfo + fileNm + fileNm );

			//채널타이틀 이미지 update
			Attachment attachment = new Attachment();
			attachment.setFileNm(fileNm);
			attachment.setUserNo(userNo);
			
			System.out.println("어태치 담겼니? " + attachment);
			
			
			int result1 = ls.updatetitle(attachment);
			
			
			System.out.println("result1" + result1);
	
			
		
			if (result>0 && result1 > 0 ) {
			return "redirect:index.jsp";
			/* return "forward:/logerHomeInfo.lo?userNo="+userNo; */
			} else {
				model.addAttribute("msg", "정보수정실패");
				return "common/errorPage";
			}
	}
	
	// 로거채널개설
	@RequestMapping(value = "createChannel.lo")
	public String insertcreateChannel(@ModelAttribute Member m, Model model, HttpServletRequest request,
			HttpSession session , @RequestParam("file2") MultipartFile file2) {

		// 썸네일 업로드 및 파일이름바꾸기
		String root = request.getSession().getServletContext().getRealPath("resources");

			String filepath1 = root + "\\uploadFiles";
			String beforeenrollNm = file2.getOriginalFilename();
			String ext = beforeenrollNm.substring(beforeenrollNm.lastIndexOf("."));
			String fileNm = CommonUtils.getRandomString()+ext;

			// 파일 업로드 하는 구문
			try {
				file2.transferTo(new File(filepath1 + "\\" + fileNm));
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		int userNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();
		String chNm = request.getParameter("chNm");
		String chInfo = request.getParameter("chInfo");
		
	

		//로거채널 inset
		Loger loger = new Loger();
		loger.setUserNo(userNo);
		loger.setChNm(chNm);
		loger.setChInfo(chInfo);
		int result = ls.insertcreateChannel(loger);

		//member채널유무 update 
		Member member = new Member();
		member.setUserNo(userNo);
		member.setNickname(chNm);
		int result1 = ls.updatechyn(member); 

		//채널타이틀 이미지 insert
		Attachment attachment = new Attachment();
		attachment.setFileNm(fileNm);
		attachment.setUserNo(userNo);
		
		System.out.println("파일이름:" +fileNm + "유저넘버" + userNo);
	
		int result2 = ls.insertAttachmentTitle(attachment);
		
		

		if (result > 0 && result1 > 0 && result2 > 0) {
			return "redirect:index.jsp";
		} else {
			model.addAttribute("msg", "채널개설 실패");
			return "common/errorPage";
		}
	}


	//로거 신고내역
	@RequestMapping(value="logerdeclarationlist.lo")
	public String declarationlist(Report report,Model model,HttpSession session)
	{
		Member m = (Member) session.getAttribute("loginUser");

		// ArrayList<Report> reportcount =ls.reportcount(report,m);
		ArrayList<Report> reportlist =ls.reportlist(report,m);
		model.addAttribute("reportlist", reportlist);
		// model.addAttribute("reportcount", reportcount);
		// System.out.println("reportcount"+reportcount);
		return "loger/declarationlist";

	}
	//채널 정지
	@RequestMapping(value="cstop.lo", method = RequestMethod.GET )
	public String cstop(@ModelAttribute Loger r,Model model,HttpServletRequest request,
			@RequestParam(name="userNo", required=false)int userNo,HttpSession session) {

		userNo=Integer.parseInt(request.getParameter("userNo"));
		r.setUserNo(userNo);
		ls.cstop(r);

		return "redirect:/cblacklist.ad";

	}		

	//구독등록
	@RequestMapping(value="subOk.lo")
	public String subOk(Model model,HttpServletRequest request,HttpSession session,@ModelAttribute Member m) {


		int userNo =  (int) session.getAttribute("userNo");
		System.out.println("로거의 유저넘버 " + userNo);

		//로그인한 유저번호 
		int loginUserNo = ((Member) request.getSession().getAttribute("loginUser")).getUserNo();	
		String nickName =  ((Member) request.getSession().getAttribute("loginUser")).getNickname();	

		System.out.println("로그인의 유저넘버 " + loginUserNo);

		
		 if(userNo == loginUserNo) { model.addAttribute("msg", "자신의 채널은 구독 불가 입니다");
		  
		 return "forward:/newHomeChannel.lo?userNo="+userNo; }
		


		SubUserInfo subUserInfo = new SubUserInfo();
		subUserInfo.setUserNo(userNo);


		SubUserInfo result = ls.subUserInfo(subUserInfo); 

		int chNo = result.getChNo();
		String chNm = result.getChNm(); 


		HttpSession session1 = request.getSession();
		session.setAttribute("loginUserNo", loginUserNo);
		session.setAttribute("userNo", userNo);
		session.setAttribute("chNo", chNo);
		session.setAttribute("nickName", nickName);
		session.setAttribute("chNm", chNm);

		return  "forward:/studeioSubInsert.vd" ;
	}

	


}


























