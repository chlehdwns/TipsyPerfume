package com.kh.ttp.product_mjy.controller;

import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.common.template.Pagination;
import com.kh.ttp.product_mjy.model.service.ProductService1;

@Controller
public class ProductController1 {

	@Autowired
	private ProductService1 productService;
	
	/**
	 * @param pdt : 주류 향수 구분(pdtCteg), 주류 : A, 향수 F
	 * @param mv
	 * @return
	 * 
	 * productMain.pr?pdtCteg=A&sort=New&pdtQuan=6
	 * productMain.pr?pdtCteg=A&sort=New&pdtQuan=12&currentPage=현재페이지
	 */
	@GetMapping("productMain.pr") // productMain.pr?pdtCteg=A&sort=New&pdtQuan=6
	public ModelAndView productMainList(@RequestParam(value="currentPage", defaultValue="1") int currentPage,
																					   String pdtCteg,
																					   String sort,
																					   int pdtQuan,
																					   ModelAndView mv) {
		// AF / 6개 12개 // New / BestSeller / Popular // 다 넘기고 전부 mybatis에서 검증
		Map<String, Object> pMap = null;
		pMap.put("pdtCteg", pdtCteg);
		pMap.put("sort", sort);
		
		int listCount = productService.selectProductCount(pdtCteg);
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pdtQuan, 10);
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		mv.addObject("productMainList", productService.productMainList(pMap, rowBounds))
		  .addObject("pi", currentPage)
		  .addObject("pdtCteg", pdtCteg)
		  .setViewName("product/productMain");
		return mv;
	}
	
}
