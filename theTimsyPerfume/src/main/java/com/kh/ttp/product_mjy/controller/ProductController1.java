package com.kh.ttp.product_mjy.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.common.template.Pagination;
import com.kh.ttp.product_mjy.model.service.ProductService1;

@Controller
public class ProductController1 {

	@Autowired
	private ProductService1 productService;
	
	
	
	// AF / 6개 12개 // New / BestSeller / Popular // 다 넘기고 전부 mybatis에서 검증
	/**
	 * @param pdtCteg : 주류 향수 구분, 주류 = A, 향수 = F
	 * @return
	 * ModelAndView의 pdtCteg : 주류/향수 구분 식별자<br>
	 * ModelAndView의 pMap :<br>
	 * 식별자(pdtCteg)에 따라 주류/향수를 각각 최신순, 베스트셀러순, 위시리스트순으로 조회한다<br>
	 * 각 정렬 기준 별 조회 결과를 각각 ArrayList(ProductSelectVO리터럴)에 담은 후<br>
	 * 만들어진 3개의 ArrayList를 HashMap<String, Object>에 담고,<br>
	 * 이 HashMap을 ModelAndView에 pMap이라는 키값으로 담는다
	 */
	@GetMapping("productMain.pr") // productMain.pr?pdtCteg=A&sort=New&pdtQuan=6
	public ModelAndView productMainList(String pdtCteg, ModelAndView mv) {
		
		
		int listCount = productService.selectProductCount(pdtCteg);
		PageInfo pi = Pagination.getPageInfo(listCount, 1, 6, 10);
		RowBounds rowBounds = new RowBounds(0, pi.getBoardLimit());
		
		mv.addObject("pMap", productService.productMainList(pdtCteg, rowBounds))
		  .addObject("pdtCteg", pdtCteg) // 주류 / 향수 식별자
		  .setViewName("product/productMain");
		return mv;
	}
	
}
