package com.kh.ttp.user.controller;

import java.text.DecimalFormat;
import java.text.Format;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ttp.order.model.vo.Receiver;
import com.kh.ttp.user.model.service.UserService;
import com.kh.ttp.user.model.vo.AuthVO;
import com.kh.ttp.user.model.vo.User;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private BCryptPasswordEncoder bcrypt;
 
	@Autowired
	private JavaMailSender sender;
	
	
	
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
			//System.out.println(bcrypt.encode(u.getUserPwd()));
			if(loginUser != null && bcrypt.matches(u.getUserPwd(), loginUser.getUserPwd())) {
				session.setAttribute("loginUser", loginUser);
				mv.setViewName("redirect:/");
			} else {
				mv.addObject("errorMsg", "로그인 실패ㅠ");
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
	
		
		//회원가입폼 보내기
		@RequestMapping("enrollForm.me")
		public String enrollForm() {
			return "member/memberEnrollForm";
		}
	
		
		//회원가입
		@RequestMapping("insert.me")
		public String insertUser(User u, Model model, HttpSession session) { //, Model model ) {
			
			//System.out.println(u + "컨트롤러ㅓㅓㅓㅓ");
			String encPwd = bcrypt.encode(u.getUserPwd());
			
			u.setUserPwd(encPwd);
			u.setUserNo(u.getUserNo());
			
			if(userService.insertUser(u) > 0) { // 성공=>메인페이지
				return "redirect:/";
			} else { // 실패 => 에러메세지 담아서 에러페이지로 포워딩
				model.addAttribute("errorMsg", "회원가입 실패");
				// /WEB-INF/views/			common/errorPage			.jsp
				return "common/errorPage";
		}
	}
		
		
	@ResponseBody
	@RequestMapping("emailCheck.me")
	public String emailCheck(String checkEmail) {
		//System.out.println(checkEmail);
		return userService.emailCheck(checkEmail) > 0 ? "NNNNNNNNNNNNNNN" : "NNNNNNNNNNNNNNY";
	}
	
	
	
	@GetMapping("inputmail")
	public String inputMail() {
		return "member/input";
	}
	
	
	
	//메일인증
	@PostMapping("mail")
	public String mail(String email , HttpServletRequest request ) throws MessagingException{ 
			
			//System.out.println(email);
			
		MimeMessage message = sender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			
			String ip = request.getRemoteAddr();
			
			Random r = new Random();
			int i = r.nextInt(100000);
			Format f = new DecimalFormat("000000");
			String secret = f.format(i);
			
			AuthVO authVo = AuthVO.builder()
							.authEmail(ip)
							.authCode(secret)
							.build();
			
			userService.sendMail(authVo);
			
			
			
			
			helper.setTo(email);
			helper.setSubject("인증번호 보내드립니다");
			helper.setText("인증번호 : " + secret);
			
			sender.send(message);
			
			return "redirect:checkPage";
	
		}
	
	
	
	@RequestMapping("myPage.me")
	public ModelAndView myPage(ModelAndView mv, HttpSession session) {
		//System.out.println("1");
		int userNo = ((User)session.getAttribute("loginUser")).getUserNo();
		//서비스에서 넘버를 주고 거기서 리시버를 셀렉트 
		Receiver rc = userService.selectReceiver(userNo);
		
		mv.addObject("rc", rc).
		setViewName("member/myPage");
		
		return mv;
	} 
	
	/*
	@RequestMapping("update.me")
	public String updateMember(User u, Model model, HttpSession session) {
		
		if(userService.updateUser(u) > 0) {
			
			session.setAttribute("loginUser", userService.loginUser(u));


			session.setAttribute("alertMsg", "정보 수정에 성공하였습니다.");
			return "redirect:myPage.me";
			
		} else {
			
			model.addAttribute("errorMsg", "정보 수정에 실패했습니다.");
			// /WEB-INF/views/		common/errorPage		.jsp
			return "common/errorPage";
		}
		
	}
	
	
	@RequestMapping("delete.me")
	public String deleteUser(String userPwd, HttpSession session) {
		
		User loginUser = ((User)session.getAttribute("loginUser"));
				
		String encPwd = loginUser.getUserPwd();
		
		if(bcrypt.matches(userPwd, encPwd)) {
			
			String userEmail = loginUser.getUserEmail();
			
			if(userService.deleteUser(userEmail) > 0) {
				session.removeAttribute("loginUser");
				session.setAttribute("alertMsg", "탈퇴되었습니다.");
				return "redirect:/";
		} else {
				session.setAttribute("errorMsg", "탈퇴 처리 실패되었습니다.");
				return "common/errorPage";
		}

	} else {
		session.setAttribute("alertMsg", "비밀번호가 틀렸습니다.");
		return "redirect:myPage.me";
	}	
		
		
		
		
		
		
		
		
		
	}
	
	@RequestMapping("update1.me")
	*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	}