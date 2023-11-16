package com.kh.ttp.product.model.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor
public class ProductSelectVO {
	
	/*
	PDT_NO,
	PDT_NAME,
	PDT_INTRO,
	PDT_DESCRIPTION,
	PDT_MANUFAC,
	REVIEW_AVG,
	PDT_IMG_SRC
	*/
	
	private int pdtNo;
	private float reviewAvg;
	private String pdtName;
	private String pdtIntro;
	private String pdtDescription;
	private String pdtManufac;
	private String pdtImgSrc;

}
