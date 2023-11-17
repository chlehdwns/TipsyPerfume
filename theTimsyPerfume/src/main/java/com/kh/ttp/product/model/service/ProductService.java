package com.kh.ttp.product.model.service;


import java.util.ArrayList;

import com.kh.ttp.funding.model.vo.Funding;
import com.kh.ttp.product.model.vo.ProductSelectVO;
import com.kh.ttp.product.model.vo.ProductVO;
import com.kh.ttp.productCategory.model.vo.ProductCategory;
import com.kh.ttp.productFile.model.vo.ProductFile;
import com.kh.ttp.productOption.model.vo.ProductOption;

public interface ProductService {
	
	// 프로젝트 메인 조회 메소드(SELECT)
	public ArrayList<ProductSelectVO> productMain(String pdtIdenKey);

	int drinkFundingInsert(ProductVO p, ProductFile pf, ProductOption po, Funding f, ProductCategory pc);

	public ArrayList<ProductVO> selectNewFundingList();

}
