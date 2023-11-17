package com.kh.ttp.adminManage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.ttp.user.model.service.UserService;

@Controller
public class adminController {

	
	//admin폼 보내기
	@RequestMapping("adminForm.me")
	public String adminForm() {
		return "adminManage/adminMain";
	}
	
	
	
}
