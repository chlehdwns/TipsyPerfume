package com.kh.ttp.product_mjy.model.service;

import java.util.ArrayList;

import com.kh.ttp.product.model.vo.ProductSelectVO;

public interface ProductService1 {
	
	// 프로젝트 메인 조회 메소드(SELECT)
	public ArrayList<ProductSelectVO> productMainList(ProductSelectVO pdt);


}
