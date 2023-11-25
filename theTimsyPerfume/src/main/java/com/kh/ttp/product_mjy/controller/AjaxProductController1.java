package com.kh.ttp.product_mjy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.ttp.product.model.service.ProductService;
import com.kh.ttp.user.model.vo.User;

public class AjaxProductController1 {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("ajaxChangeWishlist.pa")
	public String ajaxChangeWishlist(int pdtNo, HttpSession session) {
		if((session.getAttribute("loginUser") != null) && (pdtNo > 0)) { // 자동초기화0
			int userNo = ((User)(session.getAttribute("loginUser"))).getUserNo();
			
		}
		return "";
	}
	
	@PostMapping("ajaxChangeWishOne.pa")
	public void ajaxChangeWishOne(int pdtNo, HttpSession session) {
		// LoginInterceptor
	}
	
	
	
	
}
