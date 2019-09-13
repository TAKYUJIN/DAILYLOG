package com.kh.with.block.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.with.block.model.dao.BlockchDao;
import com.kh.with.block.model.vo.Blockch;
@Service
public class BlockchServiceImpl implements BlockchService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private BlockchDao vd;
	
	@Override
	public int blockch(Blockch bc) {
		 
		return vd.blockch(sqlSession,bc);
	}

}
