package com.kh.with.payment.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.with.member.model.vo.Member;
import com.kh.with.payment.model.service.PaymentService;
import com.kh.with.payment.model.vo.Payment;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService ps;
	
	//포인트충전페이지
	@RequestMapping(value ="point.me", method = {RequestMethod.GET, RequestMethod.POST})

	public String PointList(Model model, HttpSession session, HttpServletRequest request) {
		Member m = (Member) session.getAttribute("loginUser");
		String impUid = request.getParameter("IMP_UID");
		String merchantUid = request.getParameter("MERCHANT_UID");
		String paidAmount = request.getParameter("PAID_AMOUNT");
		String buyerName = 
				request.getParameter("BUYER_NAME") == null || request.getParameter("BUYER_NAME").equals("") ? m.getUserNm() : request.getParameter("BUYER_NAME");
		String buyerId = request.getParameter("BUYER_ID");
		String buyerPhone =
				request.getParameter("BUYER_PHONE")== null || request.getParameter("BUYER_PHONE").equals("") ? m.getPhone():request.getParameter("BUYER_PHONE");
		String paidAt = request.getParameter("PAID_AT");
		
		// 처음 충전 페이지 클릭시는 현재 로그인한 사람의 이름과 전화번호로 테이블 조회
				// 결제 완료후 해당 페이지 이동 시 결제자의 이름과 전화번호로 테이블 조회
				// 주문자명, 주문자 전화번호로 멤버테이블에서 userNo 채널테이블에서 채널Nm을 가져와 payment 테이블 insert
		HashMap map = new HashMap();
		map.put("IMP_UID",impUid);
		map.put("MERCHANT_UID",merchantUid);
		map.put("PAID_AMOUNT",paidAmount);
		map.put("BUYER_NAME",buyerName);
		map.put("BUYER_ID",buyerId);
		map.put("BUYER_PHONE",buyerPhone);
		map.put("PAID_AT",paidAt);
		
		ArrayList list = ps.selectPayment(map);
		
		System.out.println("list ::::::" +map);
		
		HashMap map1 = (HashMap) list.get(0);
		map1.put("PAID_AMOUNT",paidAmount);
		
		System.out.println("list1 ::::::" +map1);
		
		if(impUid != null && !impUid.equals("")) {
			ps.insertPayment(map1);
		}
		
		// payment 테이블에서 해당 사용자 포인트 내역 조회 후 jsp에 표시

		return "payment/supportandPoint";
	}
	//결제창 모듈
		@RequestMapping(value ="pay.me", method = {RequestMethod.GET, RequestMethod.POST})
		public String PayList(Model model, Payment p, HttpSession session) {

			return "payment/pay";
		}

}
