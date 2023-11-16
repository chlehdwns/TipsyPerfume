package com.kh.ttp.product_mjy.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ttp.product.model.vo.ProductSelectVO;
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
	@GetMapping("productMain.prr") // @@@@@@pr로 수정
	public ModelAndView productMainList(ProductSelectVO pdt,
											 		   ModelAndView mv) {
		if("A".equals(pdt.getPdtCteg()) || "F".equals(pdt.getPdtCteg())) {
			pdt.setPickQuantity(6);
			ArrayList<ProductSelectVO> productMainList = productService.productMainList(pdt);
			mv.addObject("pdtCteg", pdt.getPdtCteg())
			  .addObject("productMainList", productMainList) // 얘도 나중에 돌려줘야함
			  .setViewName("product/productMain");
		} else {
			mv.addObject("errorMsg", "상품 메인화면 이동에 실패했습니다")
			  .setViewName("common/errorPage");
		}
		return mv;
	}
	
}
