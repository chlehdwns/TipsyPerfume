package com.kh.ttp.product.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.product.model.vo.ProductSelectVO;
import com.kh.ttp.product.model.vo.ProductVO;
import com.kh.ttp.productCategory.model.vo.ProductCategory;

@Repository
public class ProductDao {
	

	
	public ArrayList<ProductSelectVO> productMain(SqlSessionTemplate sqlSession, String pdtIdenKey) {
		return null; //@@@@@@@@@@@@null해둠!!!주의*******
	}

	public int drinkFundingInsert(SqlSessionTemplate sqlSession, ProductVO p) {
		return sqlSession.insert("productMapper.insertProduct", p);
	}

	public int drinkFundingSelect(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("productMapper.selectProduct");
	}

	public ArrayList<ProductVO> selectNewFundingListP() {
		return null;
	}

	public ArrayList<ProductCategory> selectFundingListPC(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("productMapper.selectFundingListPC");
		 
	}
	

}
