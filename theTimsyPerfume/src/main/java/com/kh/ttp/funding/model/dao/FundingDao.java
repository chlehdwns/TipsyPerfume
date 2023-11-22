package com.kh.ttp.funding.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.funding.model.vo.Funding;

@Repository
public class FundingDao {

	public int drinkFundingInsert(SqlSessionTemplate sqlSession, Funding f) {
		return sqlSession.insert("productMapper.insertFunding",f);
	}

	public int updateDrinkFundingF(SqlSessionTemplate sqlSession, Funding f) {
		return sqlSession.update("productMapper.updateDrinkFundingF",f);
	}

}
