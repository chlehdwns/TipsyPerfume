package com.kh.ttp.productOption.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.productOption.model.vo.ProductOption;

@Repository
public class ProductOptionDao {

	public int drinkFundingInsert(SqlSessionTemplate sqlSession, ProductOption po) {
		return sqlSession.insert("productMapper.insertProductOption",po);
	}

}
