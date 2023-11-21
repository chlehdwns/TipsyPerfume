package com.kh.ttp.community.model.vo;

import lombok.Data;

@Data
public class RecommendVO {
	private String userNo;
	private String contentNo;
	private String likeFlag;
	
	private String likeCount;
	private String dislikeCount;
}
