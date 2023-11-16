package com.kh.ttp.product_mjy.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.product.model.vo.ProductSelectVO;

@Repository
public class ProductDao1 {

	public ArrayList<ProductSelectVO> productMainList(SqlSessionTemplate sqlSession, String pdtCteg) {
		return (ArrayList)sqlSession.selectList("productMapper1.productMainList", pdtCteg);
	}
	

}