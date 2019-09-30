package com.kh.with.payment.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.with.payment.model.vo.Payment;

public interface PaymentService {

   ArrayList<Payment> selectPointList(Payment p);

   ArrayList selectPayment(HashMap map);

   int insertPayment(HashMap map1);

}