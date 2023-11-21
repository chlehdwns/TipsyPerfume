package com.kh.ttp.community.review.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.community.review.model.vo.CommentVO;
import com.kh.ttp.community.review.model.vo.ReviewVO;

public interface ReviewService {
	
	public int countReviewList();
	public ArrayList<ReviewVO> seletcReviewList(PageInfo pi);
	
	public ReviewVO selectReviewDetail(int reviewNo);
	public ArrayList<String> selectReviewImage(int reviewNo);
	
	public ArrayList<CommentVO> selectCommentList(HashMap<String, Integer>map);
	public int insertComment(CommentVO comment);
	
	public int selectRecommend(HashMap map);
	public int reviewRecommend(HashMap map);
}
