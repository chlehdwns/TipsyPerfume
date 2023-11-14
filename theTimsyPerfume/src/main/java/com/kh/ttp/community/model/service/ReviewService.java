package com.kh.ttp.community.model.service;

import java.util.ArrayList;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.community.model.vo.ReviewVO;

public interface ReviewService {
	
	public int countReviewList();
	public ArrayList<ReviewVO> seletcReviewList(PageInfo pi);
}
