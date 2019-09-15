package com.kh.with.block.model.service;

import org.springframework.stereotype.Service;

import com.kh.with.block.model.vo.Blockch;
import com.kh.with.block.model.vo.Blockvi;

@Service
public interface BlockService {

	int blockvi(Blockvi vi);
	//회원 블락
	int ublock(Blockvi vi);
	//채널 블락
	int cblock(Blockch bc);

}
