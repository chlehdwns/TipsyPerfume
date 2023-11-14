package com.kh.ttp.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {
	

	/**
	 * 상품 메인페이지 조회 기능
	 * @return
	 */
	@GetMapping("productMain.pr")
	public ModelAndView productMain(@RequestParam (value="pdtIdenKey", defaultValue="M") String pdtIdenKey, ModelAndView mv) { // Q.알아서 관리하니까 불변객체 자원소모는 신경 안써도 되나?
		System.out.println("향수");
		
		if("A".equals(pdtIdenKey)) {
			
		}
		else if("P".equals(pdtIdenKey)) {
			
		}
		else if("M".equals(pdtIdenKey)) {
			
		} else {
			return "common/errorPage";
		}
		switch(pdtIdenKey) {
			case "A" : /* 성인인증 시행 후 성인이면 향수용 메인페이지 <-> 성인인증 안됐으면 성인인증 페이지로 */ break;
			case "P" : /* 향수용 메인페이지 */ break;
			case "M" : break;
			default : return "errorPage";
		}
		
		return "";
	}

}
