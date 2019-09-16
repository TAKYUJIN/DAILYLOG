package com.kh.with.block.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.block.model.vo.Blockch;
import com.kh.with.block.model.vo.Blockrep;
import com.kh.with.block.model.vo.Blockvi;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.member.model.vo.Member;

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
	public int ublock(SqlSessionTemplate sqlSession, Blockrep rep) {
		 System.out.println("ublock"+rep);
		return sqlSession.insert("Block.ublock",rep);
	}
//채널 블락
	@Override
	public int cblock(SqlSessionTemplate sqlSession, Blockch bc) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Block.cblock",bc);
	}
	//동영상 블락
	@Override
	public int vblock(SqlSessionTemplate sqlSession, Blockvi vi) {
		return sqlSession.insert("Block.vblock",vi);
	}
	//회원 status->1
	 
	
	@Override
	public int cblockstatus(SqlSessionTemplate sqlSession, Loger l) {
		// TODO Auto-generated method stub
		return sqlSession.update("Loger.cblockstatus",l);
	}
	@Override
	public int vblockstatus(SqlSessionTemplate sqlSession, Loger l) {
		// TODO Auto-generated method stub
		return sqlSession.update("Loger.vblockstatus",l);
	}
	@Override
	public int ublockstatus(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("Member.ublockstatus",m);
	}

}
