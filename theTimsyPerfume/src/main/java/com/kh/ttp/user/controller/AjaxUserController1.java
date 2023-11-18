package com.kh.ttp.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.kh.ttp.user.model.service.UserService1;
import com.kh.ttp.user.model.vo.User;

@Controller
public class AjaxUserController1 {
	
	@Autowired
	private UserService1 userService;
	
	@GetMapping("ajaxAdultValidation.ur")
	public String ajaxAdultValidation(String pdtNo, HttpSession session) {
//		System.out.println(pdtNo);
//		System.out.println((pdtNo != null) + "<= 밸리데이션넘버 넘어왔나");
//		System.out.println((pdtNo.matches("^[0-9]*$")) + "<= 밸리데이션넘버 숫자인가");
		if((session.getAttribute("loginUser") != null) && !(pdtNo == null || !(pdtNo.matches("^[0-9]*$")))) {
			// 성인인증 체크 후 성인 YN + adultValiPdtNo가 비어있지 않고 숫자면 같이 반환
			System.out.println("널아님");
			
			userService.isUserAdult(((User)session.getAttribute("loginUser")).getUserNo());
			
		} else {
			System.out.println("로그인이 필요한 서비스입니다");
			
		}
		return "";
	
	}
	
}
