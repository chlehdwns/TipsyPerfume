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
	
	@GetMapping("productMain.prr") // @@@@@@pr로 수정
	public String productMainList(@RequestParam("pdtCteg") String pdtCteg,
											 		   ModelAndView mv) {
		
		ArrayList<ProductSelectVO> productMainList = productService.productMainList(pdtCteg);
		
		mv.addObject("pdtCteg", pdtCteg); // 얘도 나중에 돌려줘야함
		System.out.println("저는 Product Controller예용 " + productMainList); // common/errorPage  ${ errorMsg }

		//mv.addObject("errorMsg", "상품 메인화면 이동에 실패했습니다")
		//  .setViewName("common/errorPage");
		
		// pdtIdenKey 같이 넘겨줘야함 (식별자 보고 div띄워줄 것) 
		return "product/productMain";
	}
	
}
