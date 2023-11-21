package com.kh.ttp.product.model.vo;


import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor
public class ProductSelectVO extends ProductVO {
	
	private float reviewAvg;
	private String pdtCteg;
	private String pdtManufac;
	private String pdtImgSrc;

}
