package com.kh.ttp.productOption.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString @Builder
public class ProductOption {
	
	private int pdtOptionNo;
	private int pdtNo;
	private String pdtOptionFirst;
	private String pdtOptionSecond;
	
	private int pdtOptionPrice;
	private int pdtOptionStock;

}
