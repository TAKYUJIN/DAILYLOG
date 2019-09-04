package com.kh.with.main.model.service;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.kh.with.main.model.dao.MailDao;
import com.kh.with.main.model.vo.MailVo;

@Service
public class MailSendService {
	 
	
	  @Autowired 
	  private JavaMailSender mailSender;
	  
	  @Autowired 
	  private SqlSessionTemplate sqlSession; 
	  private MailDao userDao;
	  
	  private String init() { Random ran =new Random(); 
	  StringBuffer sb=new StringBuffer(); int num=0;
	  
	  do { num=ran.nextInt(75)+48; if((num >=48 && num <= 57) || (num >=65 && num <=90)||(num >=97 && num<=122)) {
	  
	  sb.append((char)num); }else { continue; } }while(sb.length()<size);
	  if(lowerCheck) { return sb.toString().toLowerCase(); }return sb.toString();
	  
	  }
	  
	  private boolean lowerCheck; private int size; public String getKey(boolean
	  lowerCheck,int size) {
	  
	  this.lowerCheck=lowerCheck; this.size=size; return init(); }
	  
	  public void mailSendWithUserKey(String friId,String userId,HttpServletRequest request) {
		  
		  System.out.println("mailSendWithUserKey"+userId);
		  
	  String status_yn = getKey(false, 20); 
	  userDao = sqlSession.getMapper(MailDao.class); 
	  userDao.GetKey(userId, status_yn); 
	  MimeMessage mail = mailSender.createMimeMessage(); 
	  String htmlStr ="<h2>안녕하세요 :Daily Log 입니다</h2><br><br>" + "<h3>" + friId + "님 친구 요청이 도착 하였습니다.</h3>" +
	  "<p>요청보기 버튼을 누르시면 친구 요청을 보실 수 있습니다 : " + "<a href='http://localhost:8001" +
	  request.getContextPath() + "/home.mb?userId="+ userId
	  +"&status_yn="+status_yn+"'>요청 보기</a></p>" + "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";
	  try { mail.setSubject("[친구추가] :친구추가 메일 입니다", "utf-8"); mail.setText(htmlStr,
	  "utf-8", "html"); mail.addRecipient(RecipientType.TO, new
	  InternetAddress(friId)); mailSender.send(mail); } catch (MessagingException
	  e) { e.printStackTrace(); }
	  
	  
	  
	  }
	  
	  public int alter_userKey_service(String userId, String status_yn) {
	  
	  int resultCnt = 0;
	  
	  userDao = sqlSession.getMapper(MailDao.class); 
	  resultCnt = userDao.alter_userKEY(userId, status_yn);
	  
	  return resultCnt; }
	 
	 
	
	/*
	 * @Transactional
	 * 
	 * @Override public void create(MailVo vo) { dao.create(vo); // 회원가입 DAO String
	 * key = new TempKey().getKEy(50, false); // 인증키 생성
	 * dao.createAuthKey(vo.getFriId(), key); // 인증키 DB저장 MailHandler sendMail = new
	 * MailHandler(mailSender); sendMail.setSubject("[홈페이지 이메일 인증]");
	 * sendMail.setText( new StringBuffer().append("<h1>메일인증</h1>").
	 * append("<a href='http://localhost/user/emailConfirm?userEmail=").append(vo.
	 * getUserEmail()).append("&key=").append(key).
	 * append("' target='_blenk'>이메일 인증 확인</a>").toString());
	 * sendMail.setFrom("heejung9655@gmail.com", "보낼사람 이름");
	 * sendMail.friId(vo.getFriId()); sendMail.send(); }
	 * 
	 * @Override public void userAuth(String FRI_ID) throws Exception {
	 * dao.userAuth(FRI_ID); }
	 */

	 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
