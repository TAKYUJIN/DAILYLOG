package com.kh.with.block.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.block.model.vo.Blockch;
import com.kh.with.block.model.vo.Blockrep;
import com.kh.with.block.model.vo.Blockvi;
import com.kh.with.loger.model.vo.Loger;
import com.kh.with.member.model.vo.Member;

public interface BlockDao {

	int blockvi(SqlSessionTemplate sqlSession, Blockvi vi);
	//채널,동영상,댓글 블락
	int cblock(SqlSessionTemplate sqlSession, Blockch bc);
	int vblock(SqlSessionTemplate sqlSession, Blockvi vi);
	int ublock(SqlSessionTemplate sqlSession, Blockrep rep);
	//블락 status->1
	int cblockstatus(SqlSessionTemplate sqlSession, Loger l);
	int vblockstatus(SqlSessionTemplate sqlSession, Loger l);
	int ublockstatus(SqlSessionTemplate sqlSession, Member m);

}
