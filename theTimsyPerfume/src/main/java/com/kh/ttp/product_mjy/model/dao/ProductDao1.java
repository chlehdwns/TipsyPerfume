package com.kh.ttp.product_mjy.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.product.model.vo.ProductSelectVO;

@Repository
public class ProductDao1 {

	
	public int selectProductCount(SqlSessionTemplate sqlSession, String pdtCteg) {
		return sqlSession.selectOne("productMapper1.selectProductCount", pdtCteg);
	}

	
	public ArrayList<ProductSelectVO> productMainList(SqlSessionTemplate sqlSession, ProductSelectVO pdt) {
		return (ArrayList)sqlSession.selectList("productMapper1.productMainList", pdt);
	}

	

}