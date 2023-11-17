package com.kh.ttp.productFile.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.productFile.model.vo.ProductFile;

@Repository
public class ProductFileDao {

	public int drinkFundingInsert(SqlSessionTemplate sqlSession, ProductFile pf) {
		return sqlSession.insert("productMapper.insertProductFile",pf);
	}

}
