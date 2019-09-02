package com.kh.with.admin;

import org.springframework.web.bind.annotation.RequestMapping;


/**
 *adminController.java
 * @author user
 * @Date 2019. 9. 2.
 *
 */
public class adminController {
	/**
	 *adminController.java
	 * @author user
	 * @Date 2019. 9. 2.
	 * TODO
		관리자 공지사항 리스트
	 */
	@RequestMapping(value="noticeList.ad")

	public String noticeList() {
		
		
		return "admin/noticeList";
	}
	
	
	

}
