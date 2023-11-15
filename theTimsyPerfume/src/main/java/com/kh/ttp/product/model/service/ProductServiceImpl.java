package com.kh.ttp.product.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ttp.product.model.dao.ProductDao;
import com.kh.ttp.product.model.vo.ProductSelectVO;

@Service
public class ProductServiceImpl implements ProductService {

	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	
	@Override
	public ArrayList<ProductSelectVO> productMain(String pdtIdenKey) {
		return productDao.productMain(sqlSession, pdtIdenKey);
	}

}
