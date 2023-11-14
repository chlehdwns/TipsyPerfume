package com.kh.ttp.community.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.common.template.Pagination;
import com.kh.ttp.community.model.service.ReviewService;
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
		
		ReviewVO review = reviewService.selectReview(reviewNo);
		
		mv.addObject("review", review).
		setViewName("community/reviewDetail");
		
		return mv;
	}
}
