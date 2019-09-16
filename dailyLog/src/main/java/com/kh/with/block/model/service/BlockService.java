package com.kh.with.block.model.service;

import org.springframework.stereotype.Service;

import com.kh.with.block.model.vo.Blockch;
import com.kh.with.block.model.vo.Blockrep;
import com.kh.with.block.model.vo.Blockvi;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.member.model.vo.Member;

@Service
public interface BlockService {

	int blockvi(Blockvi vi);
	//회원 블락
	int ublock(Blockrep rep);
	//채널 블락
	int cblock(Blockch bc);
	//동영상 블락
	int vblock(Blockvi vi);
	//status->1
	int cblockstatus(Loger l);
	int vblockstatus(Loger l);
	int ublockstatus(Member m);
	

}
