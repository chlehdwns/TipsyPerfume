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
	
	//enroll폼 보내기
	@RequestMapping("adminAlcoholEnrollForm.me")
	public String adminEnrollForm() {
		return "adminManage/adminAlcoholEnrollForm";
	}
	
	//enroll해주는 거..4테이블 합체.insert와 join.
	@RequestMapping("adminAlcoholEnroll.me")
	public void adminEnroll() {
		return ;
	}
	
	
}
