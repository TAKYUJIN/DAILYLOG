package com.kh.with.payment.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.with.payment.model.dao.PaymentDao;
import com.kh.with.payment.model.vo.Payment;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private PaymentDao pd;
	
	public ArrayList<Payment> selectPointList(Payment p) {
		// TODO Auto-generated method stub
		return pd.selectPayment(sqlSession, p);
	}



}
