/*
 * package com.kh.with.payment.model.dao;
 * 
 * import java.util.ArrayList; import java.util.HashMap;
 * 
 * import org.mybatis.spring.SqlSessionTemplate; import
 * org.springframework.stereotype.Repository;
 * 
 * import com.kh.with.payment.model.vo.Payment;
 * 
 * @Repository public class PaymentDaoImpl implements PaymentDao{
 * 
 * @SuppressWarnings("unchecked")
 * 
 * @Override public ArrayList selectPointList(SqlSessionTemplate sqlSession,
 * Payment p) { // TODO Auto-generated method stub ArrayList pointlist = null;
 * System.out.println("test!!!!!!!!!!!!!!!!!"); pointlist =
 * (ArrayList)sqlSession.selectList("Payment.selectPoint",p);
 * 
 * return pointlist; }
 * 
 * @Override public ArrayList selectPayment(SqlSessionTemplate sqlSession,
 * HashMap map) { // TODO Auto-generated method stub
 * System.out.println("in55????"); return (ArrayList)
 * sqlSession.selectList("Payment.selectPayment", map); }
 * 
 * @Override public int insertPayment(SqlSessionTemplate sqlSession, HashMap
 * map) { // TODO Auto-generated method stub return
 * sqlSession.insert("Payment.insertPayment", map); }
 * 
 * }
 */