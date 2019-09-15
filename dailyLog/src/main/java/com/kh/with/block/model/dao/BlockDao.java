package com.kh.with.block.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.block.model.vo.Blockch;
import com.kh.with.block.model.vo.Blockvi;

public interface BlockDao {

	int blockvi(SqlSessionTemplate sqlSession, Blockvi vi);

	int ublock(SqlSessionTemplate sqlSession, Blockvi vi);

	int cblock(SqlSessionTemplate sqlSession, Blockch bc);

}
