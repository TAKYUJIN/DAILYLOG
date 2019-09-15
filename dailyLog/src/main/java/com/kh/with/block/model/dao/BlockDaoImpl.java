package com.kh.with.block.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.block.model.vo.Blockch;
import com.kh.with.block.model.vo.Blockvi;

@Repository
public class BlockDaoImpl implements BlockDao{
//동영상 차단
	@Override
	public int blockvi(SqlSessionTemplate sqlSession, Blockvi vi) {
		 System.out.println("blockdao"+vi);
		return sqlSession.insert("Block.mainblockvi",vi);
	}
	//회원 블락
	@Override
	public int ublock(SqlSessionTemplate sqlSession, Blockvi vi) {
		 System.out.println("ublock"+vi);
		return sqlSession.insert("Block.ublock",vi);
	}
//채널 블락
	@Override
	public int cblock(SqlSessionTemplate sqlSession, Blockch bc) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Block.cblock",bc);
	}

}
