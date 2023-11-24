package com.kh.ttp.product_mjy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.kh.ttp.product.model.service.ProductService;
import com.kh.ttp.user.model.vo.User;

public class AjaxProductController1 {
	
	@Autowired
	private ProductService productService;
	
	public String ajaxChangeHeart(int pdtNo, HttpSession session) {
		if((session.getAttribute("loginUser") != null) && (pdtNo > 0)) { // 자동초기화0
			int userNo = ((User)(session.getAttribute("loginUser"))).getUserNo();
			
		}
		return "";
	}
	
	
	
}
