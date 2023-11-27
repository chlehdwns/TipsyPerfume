package com.kh.ttp.product_mjy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@GetMapping("productMain.pr") // productMain.pr?pdtCteg=A
	public ModelAndView productMainList(String pdtCteg, ModelAndView mv) {
		if("A".equals(pdtCteg) || "F".equals(pdtCteg)) {
			int listCount = productService.selectProductCount(pdtCteg);
			PageInfo pi = Pagination.getPageInfo(listCount, 1, 6, 10);
			
			mv.addObject("pMap", productService.productMainList(pdtCteg, pi))
			  .addObject("pdtCteg", pdtCteg) // 주류 / 향수 식별자
			  .setViewName("product/productMain");
		} else {
			mv.addObject("errorMsg", "상품 메인화면 이동 실패...")
			  .setViewName("common/errorPage");
		}
		return mv;
	}
	
	
	// 향수 전체조회
	@GetMapping("selectPerfumePdtList.pr")
	public String selectPerfumePdtList(@RequestParam(value="currentPage", defaultValue="1") int currentPage,
									   @RequestParam(value="sort", defaultValue="") String sort,
									   Model m) {
		int listCount = productService.selectProductCount("F");
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 12, 10);
		System.out.println(sort + "넘어오나");
		System.out.println(productService.selectPerfumePdtList(sort, pi));
		
		m.addAttribute("pdtCteg", "F") // 향수도 식별자 넘겨야함(사이드바 정렬보기 요청 시 필요)
		 .addAttribute("pdtList", productService.selectPerfumePdtList(sort, pi))
		 .addAttribute("pi", pi);
		return "product/productList";
	}
	
	
	// 향수 디테일조회
	@GetMapping("perfumePdtDetail.pr") // pdtNo, F
	public void perfumePdtDetail(@RequestParam(value="pdtNo", defaultValue="0") int pdtNo,
								 ModelAndView mv) {
		//
	}
	
	// 주류전체조회
	@GetMapping("selectAlcoholPdtList.pr")
	public String selectAlcoholPdtList(@RequestParam(value="currentPage", defaultValue="1") int currentPage,
									   String sort,
									   Model m) {
		System.out.println(sort);
		int listCount = productService.selectProductCount("A");
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 12, 10);
		
		System.out.println(productService.selectAlcoholPdtList(sort, pi));
		
		m.addAttribute("pdtCteg", "A")
		 .addAttribute("sort", sort)
		 .addAttribute("pdtList", productService.selectAlcoholPdtList(sort, pi))
		 .addAttribute("pi", pi);
		return "product/productList";
	}
	
	// 주류 디테일조회
	@GetMapping("alcoholPdtDetail.pr")
	public void alcoholPdtDetail(@RequestParam(value="pdtNo", defaultValue="0") int pdtNo) {
		if(pdtNo > 0) {
			
		} else {
			
		}
	}
	
	
	@GetMapping("cartMain.ca")
	public String cartMain() {
		return "orderKinds/cartMain";
	}
	
	
	
	
	
}
