package com.kh.ttp.product_mjy.model.service;

import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;

public interface ProductService1 {

	// 상품 개수 조회
	int selectProductCount(String pdtCteg);
	
	// 프로젝트 메인 조회 메소드(SELECT)
	/**
	 * 주류/향수 식별자(pdtCteg)를 받아 해당되는 상품을 각각 최신순, 베스트셀러순, 위시리스트순으로 조회한다
	 * @param pdtCteg   : 주류 향수 구분, 주류 = A, 향수 = F
	 * @param rowBounds : 페이지네이션을 위한 RowBounds객체
	 * @return
	 * 식별자(pdtCteg)에 따라 주류/향수를 각 정렬 기준별로, 즉 3회 조회한다<br> 
	 * 그 후 결과를 각각 ArrayList(ProductSelectVO리터럴)에 담은 후<br>
	 * 만들어진 3개의 ArrayList를 아래의 키값과 함께 HashMap<String, Object>에 담아 반환한다<br> 
	 * 최신순ArrayList	  : pMainListNew<br>
	 * 판매량순ArrayList    : pMainListBestSeller<br>
	 * 위시리스트순ArrayList : pMainListPopular<br>
	 */
	HashMap<String, Object> productMainList(String pdtCteg, RowBounds rowBounds);




}
