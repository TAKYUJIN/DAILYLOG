package com.kh.with.payment.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.with.payment.model.service.PaymentService;
import com.kh.with.payment.model.vo.Payment;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService ps;
	
	//포인트충전페이지
	@RequestMapping(value ="point.me", method = {RequestMethod.GET, RequestMethod.POST})

	public String PointList(Model model, Payment p, HttpSession session) {

		return "payment/supportandPoint";
	}

}
