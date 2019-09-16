package com.kh.with.block.model.service;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.with.block.model.dao.BlockDao;
import com.kh.with.block.model.vo.Blockch;
import com.kh.with.block.model.vo.Blockrep;
import com.kh.with.block.model.vo.Blockvi;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.member.model.vo.Member;
@Service
public class BlockServiceImpl implements BlockService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private BlockDao bd;
	
	@Override
	public int blockvi(Blockvi vi) {
		 
		return bd.blockvi(sqlSession,vi);
	}

	@Override
	public int ublock(Blockrep rep) {
		System.out.println(rep);
		return bd.ublock(sqlSession,rep);
	}

	@Override
	public int cblock(Blockch bc) {
		// TODO Auto-generated method stub
		return bd.cblock(sqlSession,bc);
	}

	@Override
	public int vblock(Blockvi vi) {
		// TODO Auto-generated method stub
		return bd.vblock(sqlSession,vi);
	}

	 
	@Override
	public int cblockstatus(Loger l) {
		// TODO Auto-generated method stub
		return bd.cblockstatus(sqlSession,l);
	}

	@Override
	public int vblockstatus(Loger l) {
		// TODO Auto-generated method stub
		return bd.vblockstatus(sqlSession,l);
	}

	@Override
	public int ublockstatus(Member m) {
		// TODO Auto-generated method stub
		return  bd.ublockstatus(sqlSession,m);
	}

	 
}
