package com.kh.with.payment.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.payment.model.vo.Payment;

@Repository
public class PaymentDaoImpl implements PaymentDao{

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Payment> selectPayment(SqlSessionTemplate sqlSession, Payment p) {
		// TODO Auto-generated method stub
		ArrayList<Payment> pointlist = null;
		
		pointlist = (ArrayList)sqlSession.selectList("Payment.selectPayment",p);
		return pointlist;
	}

}
