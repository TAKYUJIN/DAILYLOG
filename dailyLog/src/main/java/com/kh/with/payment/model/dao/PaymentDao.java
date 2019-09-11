package com.kh.with.payment.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.payment.model.vo.Payment;

public interface PaymentDao {

	ArrayList<Payment> selectPayment(SqlSessionTemplate sqlSession, Payment p);

}
