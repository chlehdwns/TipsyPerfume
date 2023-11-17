package com.kh.ttp.product_mjy.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.kh.ttp.product.model.vo.ProductSelectVO;

public interface ProductService1 {

	// 상품 개수 조회
	int selectProductCount(String pdtCteg);
	
	// 프로젝트 메인 조회 메소드(SELECT)
	ArrayList<ProductSelectVO> productMainList(String pdtCteg, RowBounds rowBounds);




}
