package com.kh.with.block.model.service;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.with.block.model.dao.BlockDao;
import com.kh.with.block.model.vo.Blockch;
import com.kh.with.block.model.vo.Blockvi;
@Service
public class BlockServiceImpl implements BlockService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private BlockDao vd;
	
	@Override
	public int blockvi(Blockvi vi) {
		 
		return vd.blockvi(sqlSession,vi);
	}

	@Override
	public int ublock(Blockvi vi) {
		System.out.println("vi"+vi);
		return vd.ublock(sqlSession,vi);
	}

	@Override
	public int cblock(Blockch bc) {
		// TODO Auto-generated method stub
		return vd.cblock(sqlSession,bc);
	}

}
