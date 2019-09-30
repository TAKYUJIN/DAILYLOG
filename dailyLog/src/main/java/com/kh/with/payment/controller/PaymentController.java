
package com.kh.with.payment.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.weaver.ast.Call;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.api.client.googleapis.auth.clientlogin.ClientLogin.Response;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.with.member.model.vo.Member;
import com.kh.with.payment.model.service.PaymentService;
import com.kh.with.payment.model.vo.Payment;
import com.siot.IamportRestClient.Iamport;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.ScheduleData;
import com.siot.IamportRestClient.request.ScheduleEntry;
import com.siot.IamportRestClient.request.escrow.EscrowLogisInvoiceData;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.PaymentBalanceEntry;
import com.siot.IamportRestClient.response.Schedule;
import com.siot.IamportRestClient.response.escrow.EscrowLogisInvoice;
import com.siot.IamportRestClient.serializer.BalanceEntrySerializer;
import com.siot.IamportRestClient.serializer.EscrowInvoiceEntrySerializer;
import com.siot.IamportRestClient.serializer.ScheduleEntrySerializer;

import okhttp3.OkHttpClient;
import retrofit2.Converter.Factory;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

@Controller
public class PaymentController {

   

   @Autowired
   private PaymentService ps;

   IamportClient importClient = new IamportClient("0737210203808908",
         "Wdkzj93nWo8exbwAxpFnlJbSV00aPuJLI3l1dop9NynkJUVgkBDFkPxfPxqF2aqKdMMqabAYJYjsSfJc");

   // 포인트충전페이지

   @RequestMapping(value = "point.me", method = { RequestMethod.GET,
  RequestMethod.POST })
  
  public String PointList(Model model, Payment p,HttpSession session,
  HttpServletRequest request) {
      Member m = (Member)session.getAttribute("loginUser"); 
      String impUid = request.getParameter("IMP_UID"); 
      String merchantUid =  request.getParameter("MERCHANT_UID");
      String paidAmount = request.getParameter("PAID_AMOUNT");
      String buyerName =  request.getParameter("BUYER_NAME") == null ||
               request.getParameter("BUYER_NAME").equals("") ? m.getUserNm() : request.getParameter("BUYER_NAME"); 
      String buyerId =request.getParameter("BUYER_ID"); 
      String buyerPhone =request.getParameter("BUYER_PHONE") == null ||
               request.getParameter("BUYER_PHONE").equals("") ? m.getPhone() : request.getParameter("BUYER_PHONE"); 
      String paidAt =request.getParameter("PAID_AT");
  
  // 처음 충전 페이지 클릭시는 현재 로그인한 사람의 이름과 전화번호로 테이블 조회
  // 결제 완료후 해당 페이지 이동 시 결제자의 이름과 전화번호로 테이블 조회 
  // 주문자명, 주문자 전화번호로 멤버테이블에서 userNo 채널테이블에서 채널Nm을 가져와 payment 테이블insert 
  HashMap map = new HashMap(); 
  map.put("IMP_UID", impUid);
  map.put("MERCHANT_UID", merchantUid); map.put("PAID_AMOUNT", paidAmount);
  map.put("BUYER_NAME", buyerName); map.put("BUYER_ID", buyerId);
  map.put("BUYER_PHONE", buyerPhone); map.put("PAID_AT", paidAt);
  
  ArrayList list = ps.selectPayment(map);
  
  System.out.println("list ::::::" + map);
  
  HashMap map1 = (HashMap) list.get(0); 
  
  map1.put("PAID_AMOUNT", paidAmount);
  
  System.out.println("list1 ::::::" + map1);
  
  if (impUid != null && !impUid.equals("")) { 
     ps.insertPayment(map1); }
  
  // payment 테이블에서 해당 사용자 포인트 내역 조회 후 jsp에 표시
  
  ArrayList<Payment> paylist =ps.selectPointList(p);
  
      
       
  
  
  model.addAttribute("paylist", paylist); model.addAttribute("Payment",p);
  
  System.out.println("pay ;;;;;;;" +paylist);
  
  return "payment/supportandPoint";
  
  }

   // 결제창 모듈

   @RequestMapping(value = "pay.me", method = { RequestMethod.GET, RequestMethod.POST })
   public String PayList(Model model, Payment p, HttpSession session) {

      return "payment/pay";
   }

   // 정기결제 모듈

   @RequestMapping(value = "pay1.me", method = { RequestMethod.GET, RequestMethod.POST })
   public String PayList1(Model model, Payment p, HttpSession session) {

      return "payment/pay1";
   }

   

}