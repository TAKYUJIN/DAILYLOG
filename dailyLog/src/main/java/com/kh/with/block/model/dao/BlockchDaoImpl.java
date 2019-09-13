package com.kh.with.block.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.with.block.model.vo.Blockch;

@Repository
public class BlockchDaoImpl implements BlockchDao{

	@Override
	public int blockch(SqlSessionTemplate sqlSession, Blockch bc) {
		 System.out.println("blockdao"+bc);
		return sqlSession.insert("Report.mainblockch",bc);
	}

}
