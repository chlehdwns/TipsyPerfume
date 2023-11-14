package com.kh.ttp.community.model.vo;

import lombok.Data;

@Data
public class ReviewVO {
	private int reviewNo;
	private String userNo;
	private String reviewScore;
	private String reviewContent;
	private String reviewCreateDate;
	private String reviewModifyDate;
	private String reviewState;
	private String pdtNo;
	
	private String userProfile;
	private String thumbnail;
	private String productImg;
	private String productPrice;
}
