package com.kh.ttp.product_mjy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.ttp.product.model.vo.WishlistVO;
import com.kh.ttp.product_mjy.model.service.ProductService1;
import com.kh.ttp.user.model.vo.User;

@Controller
public class AjaxProductController1 {
	
	@Autowired
	private ProductService1 productService;
	
	/**
	 * 유저의 위시리스트에 이미 추가되어있는 상품인지 체크 후<br>
	 * 이미 있으면 위시리스트 취소(DELETE), 없으면 추가(INSERT)
	 * @param pdtNo : 위시리스트를 추가하려는 상품 번호(PK)
	 * @param session : 로그인 유저 번호(PK)를 뽑기위한 세션
	 * @return
	 * 성공 시 문자열 "true", 실패 시 문자열 "false"반환 (가독성을 위해 "1", "0"대신 boolean반환) 
	 */
	@PostMapping("ajaxChangeWishOne.pa")
	public String ajaxChangeWishOne(int pdtNo, HttpSession session) {
		// @@@Ajax는 LoginInterceptor를 따로 만들어야..! @@@일단 그냥 session에서 뽑음
		System.out.println(pdtNo + "pdt넘버ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ");
		boolean result = false;
		if(null != session.getAttribute("loginUser") && (pdtNo > 0)) {
			WishlistVO wishlist = new WishlistVO();
			wishlist.setPdtNo(pdtNo);
			wishlist.setUserNo(((User)session.getAttribute("loginUser")).getUserNo());
			result = productService.ajaxChangeWishOne(wishlist);
		}
		System.out.println(result + " <<< 반환반환반환!!!!!!!!!!!!!!!!!!!!!!!!");
		return result + "";
	}
	
	
	
	
}
