package com.kh.ttp.productCategory.model.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductCategory {
	private int pdtCategNo; 
	private String pdtCteg; //주류 향수 구분 주류 : A 향수 : F
	private String pdtFamily;	// 기성제품 커스텀 제품 기성 : B  커스텀 :C 
	private String pdtManufac; //브랜드 OR 제조자 이름
	private String pdtGroup; // 제품군 분류 

}
