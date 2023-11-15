package com.kh.ttp.community.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.common.template.Pagination;
import com.kh.ttp.community.model.service.ReviewService;
import com.kh.ttp.community.model.vo.CommentVO;
import com.kh.ttp.community.model.vo.ReviewVO;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	@GetMapping("review")
	public ModelAndView reviewList(@RequestParam(value = "page", defaultValue = "1")int page, ModelAndView mv) {
		int listCount = reviewService.countReviewList();
		PageInfo pi = Pagination.getPageInfo(listCount, page, 9, 5);
		ArrayList<ReviewVO> list = reviewService.seletcReviewList(pi);
		mv.addObject("list", list).
		addObject("pi", pi).
		setViewName("community/review");
		
		return mv;
	}
	@GetMapping("reviewViewer")
	public ModelAndView reviewViewer(int reviewNo, ModelAndView mv) {
		
		ReviewVO review = reviewService.selectReviewDetail(reviewNo);
		review.setReviewImages(reviewService.selectReviewImage(reviewNo));
		
		mv.addObject("review", review).
		setViewName("community/reviewDetail");
		
		return mv;
	}
	@GetMapping(value = "commentList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String ajaxCommentList(
			@RequestParam(value = "boardNo", defaultValue = "0")int boardNo, 
			@RequestParam(value = "reviewNo", defaultValue = "0")int reviewNo) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("boardNo",boardNo);
		map.put("reviewNo",reviewNo);
		ArrayList<CommentVO> list = reviewService.selectCommentList(map);
		
		return new Gson().toJson(list);
	}
}
