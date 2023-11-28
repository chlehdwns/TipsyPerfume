package com.kh.ttp.product.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @NoArgsConstructor @ToString
public class ProductOption {
	
	/*
	PDT_OPTION_NO	NUMBER
	PDT_NO	NUMBER
	PDT_OPTION_FIRST	VARCHAR2(100 BYTE)
	PDT_OPTION_SECOND	VARCHAR2(100 BYTE)
	*/
	private int pdtOptionNo;
	private int pdtNo;
	private String pdtOptionFirst;
	private String pdtOptionSecond;

}
