package com.kh.ttp.product.model.vo;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString
public class ProductSelectVO extends ProductVO {
	
	private float reviewAvg;
	private String pdtCteg;
	private String pdtManufac;
	private String pdtImgSrc;
	

}
