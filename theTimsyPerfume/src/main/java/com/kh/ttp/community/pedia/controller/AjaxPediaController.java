package com.kh.ttp.community.pedia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.ttp.community.pedia.model.service.PediaService;

@Controller
public class AjaxPediaController {
	@Autowired
	PediaService pediaService;
	
	@GetMapping(value = "selectPediaList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String ajaxSelectPediaList(String pdtCteg) {
		return new Gson().toJson(pediaService.selectPediaList(pdtCteg));
	}
}
