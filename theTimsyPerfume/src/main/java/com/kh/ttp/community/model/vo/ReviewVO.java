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
	
	private String thumbnail;
	private String productImg;
	
	
	public void printLunch() {
		
		System.out.println("점심먹어야지~~~~");
		
	}
}
