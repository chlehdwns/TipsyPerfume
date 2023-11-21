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
import com.kh.ttp.community.model.vo.CommentVO;
import com.kh.ttp.community.model.vo.RecommendVO;
import com.kh.ttp.community.review.model.service.ReviewService;

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
		System.out.println(map);
		ArrayList<CommentVO> list = reviewService.selectCommentList(map);
		
		return new Gson().toJson(list);
	}
	@PostMapping(value = "insertComment", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String ajaxInsertComment(CommentVO comment) {
		return Integer.toString(reviewService.insertComment(comment));
	}
	
	@GetMapping(value = "reviewRecommend", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String ajaxReviewRecommend(RecommendVO rc) {
		
		String msg="";
		String flag = reviewService.selectRecommend(rc);
		if(rc.getLikeFlag().equals("L")) {
			if(flag!=null && flag.equals("L")) {
				msg="이미 추천한 게시글 입니다.";
			} else {
				if(reviewService.reviewRecommend(rc)>0) {
					msg="게시글을 추천 했습니다.";
				} else {
					msg="Error!";
				}
			}
		} else {
			if(flag!=null && flag.equals("D")) {
				msg="이미 비추천한 게시글 입니다.";
			} else {
				if(reviewService.reviewRecommend(rc)>0) {
					msg="게시글을 비추천 했습니다.";
				} else {
					msg="Error!";
				}
			}
		}
		return msg;
	}
	@GetMapping(value = "loadReviewRecommend", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String ajaxCountRecommend(int contentNo) {
		return new Gson().toJson(reviewService.countRecommend(contentNo));
	}
}
