package com.kh.ttp.community.review.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.ttp.community.review.model.service.ReviewService;
import com.kh.ttp.community.review.model.vo.CommentVO;

@Controller
public class AjaxReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@GetMapping(value = "commentList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String ajaxCommentList(
			@RequestParam(value = "boardNo", defaultValue = "0")int boardNo, 
			@RequestParam(value = "reviewNo", defaultValue = "0")int reviewNo,
			@RequestParam(value = "commentGroup", defaultValue = "0")int commentGroup) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("boardNo",boardNo);
		map.put("reviewNo",reviewNo);
		map.put("commentGroup",commentGroup);
		ArrayList<CommentVO> list = reviewService.selectCommentList(map);
		
		return new Gson().toJson(list);
	}
	@PostMapping(value = "insertComment", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String ajaxInsertComment(CommentVO comment) {
		return Integer.toString(reviewService.insertComment(comment));
	}
}
