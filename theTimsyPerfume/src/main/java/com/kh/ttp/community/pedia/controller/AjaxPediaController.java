package com.kh.ttp.community.pedia.controller;

import java.util.HashMap;

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
	public String ajaxSelectPediaList(String pdtCteg, int userNo) {
		System.out.println("1");
		HashMap map = new HashMap();
		map.put("userNo", userNo);
		map.put("pdtCteg", pdtCteg);
		return new Gson().toJson(pediaService.selectPediaList(map));
	}
	
	@GetMapping(value = "selectPediaInfo", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String ajaxSelectPediaInfo(int pdtNo, int userNo) {
		HashMap map = new HashMap();
		map.put("userNo", userNo);
		map.put("pdtNo", pdtNo);
		return new Gson().toJson(pediaService.selectPediaInfo(map));
	}
}
