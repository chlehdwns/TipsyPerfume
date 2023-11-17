package com.kh.ttp.product_mjy.controller;

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
	 */
	@GetMapping("productMain.pr") // productMain.pr?pdtCteg=A&sort=New&pdtQuan=6 // 리퀘스트 옛날버전
	
	public ModelAndView productMainList(@RequestParam(value="cPage", defaultValue="1") int currentPage,
																					   String pdtCteg,
																					   String sort,
																					   int pdtQuan,
																					   ModelAndView mv) {
		// AF / 6개 12개 // New / BestSeller / Popular
		// 다 넘기고 전부 mybatis
		//Map<String, Object> pMap = null;
		//pMap.put("pdtCteg", pdtCteg);
		//pMap.put("sort", sort);
		int listCount = productService.selectProductCount(pdtCteg);
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, boardLimit, 10);
		
		if("A".equals(pdtCteg) || "F".equals(pdtCteg)) {
			/*
			pdt.setPickQuantity(6);
			ArrayList<ProductSelectVO> productMainList = productService.productMainList(pdt);
			mv.addObject("pdtCteg", pdt.getPdtCteg())
			  .addObject("productMainList", productMainList) // 얘도 나중에 돌려줘야함
			  .setViewName("product/productMain");
			*/
			mv.addObject("", "").setViewName("product/productMain");
		} else {
			mv.addObject("errorMsg", "상품 메인화면 이동에 실패했습니다")
			  .setViewName("common/errorPage");
		}
		return mv;
	}
	
}
