package com.kh.ttp.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ttp.user.model.service.UserService;
import com.kh.ttp.user.model.vo.User;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	
 
	@RequestMapping("loginForm.me")
	public String loginUser() {
		return "member/LoginForm";
	}
	
	
	
	@RequestMapping("login.me")
	public ModelAndView loginUser(User u,
									HttpSession session,
									ModelAndView mv) {
		
		System.out.println("userEmail : " + u.getUserEmail());
		System.out.println("userPwd : " + u.getUserPwd());
		
		User loginUser = userService.loginUser(u);
		
		
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:/");
		} else {
			// model.addAttribute
			mv.addObject("alertMsg", "로그인 실패ㅠ");
			mv.setViewName("common/errorPage");
		}
		System.out.println("왜 나만없어>>???");
		return mv;
	}

	
	
	
	
}
