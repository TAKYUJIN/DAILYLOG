package com.kh.with.admin.model.service;



import java.util.ArrayList;

import com.kh.with.admin.model.vo.Board;

public interface AdminService {

	//공지사항 리스트 select
	ArrayList<Board> adminNoticeList(Board board);


	//공지사항 작성 isnert 
	int noticeWriteAdmin(Board board);



}
