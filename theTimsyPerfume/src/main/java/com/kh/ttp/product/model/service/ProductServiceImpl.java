package com.kh.ttp.product.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ttp.funding.model.dao.FundingDao;
import com.kh.ttp.funding.model.vo.Funding;
import com.kh.ttp.product.model.dao.ProductDao;
import com.kh.ttp.product.model.vo.ProductSelectVO;
import com.kh.ttp.product.model.vo.ProductVO;
import com.kh.ttp.productCategory.model.dao.ProductCategoryDao;
import com.kh.ttp.productCategory.model.vo.ProductCategory;
import com.kh.ttp.productFile.model.dao.ProductFileDao;
import com.kh.ttp.productFile.model.vo.ProductFile;
import com.kh.ttp.productOption.model.dao.ProductOptionDao;
import com.kh.ttp.productOption.model.vo.ProductOption;


@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private FundingDao fundingDao;
	@Autowired
	private ProductDao productDao;
	@Autowired
	private ProductCategoryDao productCategoryDao;
	@Autowired
	private ProductFileDao productFileDao;
	@Autowired
	private ProductOptionDao productOptionDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public int drinkFundingInsert(ProductVO p, ProductFile pf, ProductOption po, Funding f, ProductCategory pc) {
		productCategoryDao.drinkFundingInsert(sqlSession,pc);
		return 0;
	}

	

	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	
	@Override
	public ArrayList<ProductSelectVO> productMain(String pdtIdenKey) {
		return productDao.productMain(sqlSession, pdtIdenKey);
	}

}
