package com.kh.ttp.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PediaController {
	
	@GetMapping("pedia")
	public String noticeWriteForm() {
		return "community/pedia";
	}
}
