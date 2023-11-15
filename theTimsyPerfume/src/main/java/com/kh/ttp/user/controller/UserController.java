package com.kh.ttp.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ttp.user.model.service.UserService;
import com.kh.ttp.user.model.vo.User;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
 
	@RequestMapping("loginForm.me")
	public String loginUser() {
		return "member/LoginForm";
	}
	
	
	//로그인 + 중복이메일체크
	@RequestMapping("login.me")
	public ModelAndView loginUser(User u,
									HttpSession session,
									ModelAndView mv) {
		
		User loginUser = userService.loginUser(u);
		
		if(loginUser != null && bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:/");
		} else {
			mv.addObject("alertMsg", "로그인 실패ㅠ");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

	//로그아웃
	@RequestMapping("logout.me")
	public String logoutUser(HttpSession session) {
		session.invalidate();
		return "redirect:/";
		
	}
	
	
	@RequestMapping("enrollForm.me")
	public String enrollForm() {
		
		return "member/memberEnrollForm";
	}
	
	
	@RequestMapping("insert.me")
	public String insertUser(User u, Model model ) {
		String encPwd = bcryptPasswordEncoder.encode(u.getUserPwd());
		
		u.setUserPwd(encPwd);
		
		if(userService.insertUser(u) > 0) { // 성공=>메인페이지
			return "redirect:/";
		} else { // 실패 => 에러메세지 담아서 에러페이지로 포워딩
			model.addAttribute("errorMsg", "회원가입 실패");
			// /WEB-INF/views/			common/errorPage			.jsp
			return "common/errorPage";
		
	}
	
	
	
	
	
	/*나중에 마지막에 할것
	@ResponseBody
	@RequestMapping("emailCheck.me")
	public String emailCheck(String checkEmail) {
		
		return userService.emailCheck(checkEmail) > 0 ? "NNNNN" : "NNNNY";
	}
	*/
	
	
	
	
	
	
}
