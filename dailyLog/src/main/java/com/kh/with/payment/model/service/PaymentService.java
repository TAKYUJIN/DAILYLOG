package com.kh.with.payment.model.service;

import java.util.ArrayList;

import com.kh.with.payment.model.vo.Payment;

public interface PaymentService {

	ArrayList<Payment> selectPointList(Payment p);

}
