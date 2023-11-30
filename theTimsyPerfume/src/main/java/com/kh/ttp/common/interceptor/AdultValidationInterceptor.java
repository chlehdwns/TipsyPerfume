package com.kh.ttp.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.ttp.user.model.vo.User;

public class AdultValidationInterceptor extends HandlerInterceptorAdapter {
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		if(((User)session.getAttribute("loginUser")).getAdultStatus() == "Y") {
			return true;
		} else {
			session.setAttribute("result", "N");
			response.sendRedirect();
			return false;
		}
	}
	
}
