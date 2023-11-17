package com.kh.ttp.product_mjy.model.service;

import java.util.ArrayList;
import java.util.HashMap;
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
	public HashMap<String, Object> productMainList(String pdtCteg, RowBounds rowBounds) {
		
		HashMap<String, Object> pMap = new HashMap();
		pMap.put("pdtCteg", pdtCteg);
		
		// 최신순
		pMap.put("sort", "New");
		pMap.put("pMainListNew", productDao.productMainList(sqlSession, pMap, rowBounds));
		// 판매량순		
		pMap.put("sort", "BestSeller");
		pMap.put("pMainListBestSeller", productDao.productMainList(sqlSession, pMap, rowBounds));
		// 위시리스트순
		pMap.put("sort", "Popular");
		pMap.put("pMainListPopular", productDao.productMainList(sqlSession, pMap, rowBounds));

		return pMap;
	}



}

