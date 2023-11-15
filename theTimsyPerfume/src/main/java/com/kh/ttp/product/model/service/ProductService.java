package com.kh.ttp.product.model.service;

import java.util.ArrayList;

import com.kh.ttp.product.model.vo.ProductSelectVO;

public interface ProductService {
	
	// 프로젝트 메인 조회 메소드(SELECT)
	public ArrayList<ProductSelectVO> productMain(String pdtIdenKey);
	
}
