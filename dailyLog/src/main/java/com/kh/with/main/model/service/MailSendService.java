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

import com.kh.with.main.model.dao.MailDao;
 
public class MailSendService {

	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private SqlSessionTemplate sqlSession;
	private MailDao userDao;
	
	private String init() {
		Random ran =new Random();
		StringBuffer sb=new StringBuffer();
		int num=0;
		
		do {
			num=ran.nextInt(75)+48;
			if((num >=48 && num <= 57) || (num >=65 && num <=90)||(num >=97 && num<=122)) {
				
				sb.append((char)num);
			}else {
				continue;
			}
		}while(sb.length()<size);
		if(lowerCheck) {
			return sb.toString().toLowerCase();
		}return sb.toString();
		
	}
	
	private boolean lowerCheck;
	private int size;
	public String getKey(boolean lowerCheck,int size) {
		
		this.lowerCheck=lowerCheck;
		this.size=size;
		return init();
	}
	
	public void mailSendWithUserKey(String FriId,HttpServletRequest request) {
		String key = getKey(false, 20);
		userDao = sqlSession.getMapper(MailDao.class);
		userDao.GetKey(FriId, key); 
		MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>안녕하세요 :Daily Log 입니다</h2><br><br>" 
				+ "<h3>" + FriId + "님</h3>" + "<p>친구추가 버튼을 누르시면 로그인을 하실 수 있습니다 : " 
				+ "<a href='http://localhost:8001" + request.getContextPath() + "/user/key_alter?FriId="+ FriId +"&user_key="+key+"'>친구추가</a></p>"
				+ "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";
		try {
			mail.setSubject("[친구추가] :친구추가 메일 입니다", "utf-8");
			mail.setText(htmlStr, "utf-8", "html");
			mail.addRecipient(RecipientType.TO, new InternetAddress(FriId));
			mailSender.send(mail);
		} catch (MessagingException e) {
			e.printStackTrace();
		}

		
		
	}
	
	public int alter_userKey_service(String FriId, String key) {
		
		int resultCnt = 0;
		
		userDao = sqlSession.getMapper(MailDao.class);
		resultCnt = userDao.alter_userKEY(FriId, key);
		
		return resultCnt;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
