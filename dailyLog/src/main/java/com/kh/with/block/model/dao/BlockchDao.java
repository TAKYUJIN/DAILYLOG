package com.kh.with.block.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.with.block.model.vo.Blockch;

public interface BlockchDao {

	int blockch(SqlSessionTemplate sqlSession, Blockch bc);

}
