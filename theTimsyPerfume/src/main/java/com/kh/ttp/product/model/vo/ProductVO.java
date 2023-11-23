package com.kh.ttp.product.model.vo;


import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor
public class ProductVO {
	/*
	PDT_NO	NUMBER
	PDT_CATEG_NO	NUMBER
	PDT_NAME	VARCHAR2(500 BYTE)
	PDT_PRICE	NUMBER
	PDT_STOCK	NUMBER
	PDT_DATE	DATE
	PDT_INTRO	VARCHAR2(2000 BYTE)
	PDT_DESCRIPTION	VARCHAR2(2000 BYTE)
	PDT_INGREDIENT	VARCHAR2(2000 BYTE)
	PDT_SHIPPING	VARCHAR2(1000 BYTE)
	PDT_COUNT	NUMBER
	PDT_DISCOUNT	NUMBER
	PDT_STATUS	VARCHAR2(1 BYTE)
	PDT_GP_STATUS	VARCHAR2(1 BYTE)
	*/
	
	private int pdtNo;
	private int pdtCategNo;
	private String pdtName;
	private int pdtPrice;
	private int pdtStock;
	private String pdtDate;
	private String pdtIntro;
	private String pdtDescription;
	private String pdtIngredient;
	private String pdtShipping;
	private int pdtCount;
	private int pdtDiscount;
	private String pdtStatus;
	private String pdtGpStatus;
	
	private int orderPrice;
	private int orderQuantity;
	
	
	
	
	
	
	
	
}
