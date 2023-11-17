package com.kh.ttp.product_mjy.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ttp.product.model.vo.ProductSelectVO;
import com.kh.ttp.product_mjy.model.dao.ProductDao1;

@Service
public class ProductServiceImpl1 implements ProductService1 {

	@Autowired
	private ProductDao1 productDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int selectProductCount(String pdtCteg) {
		return productDao.selectProductCount(sqlSession, pdtCteg);
	}

	@Override
	public ArrayList<ProductSelectVO> productMainList(Map<String, Object> pMap, RowBounds rowBounds) {
		return productDao.productMainList(sqlSession, pMap, rowBounds);
	}



}

