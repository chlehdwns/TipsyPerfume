package com.kh.ttp.product.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.product.model.vo.ProductSelectVO;
import com.kh.ttp.product.model.vo.ProductVO;

@Repository
public class ProductDao {
	

	
	public ArrayList<ProductSelectVO> productMain(SqlSessionTemplate sqlSession, String pdtIdenKey) {
		return null; //@@@@@@@@@@@@null해둠!!!주의*******
	}

	public int drinkFundingInsert(SqlSessionTemplate sqlSession, ProductVO p) {
		return sqlSession.insert("productMapper.insertProduct", p);
	}
	

}
