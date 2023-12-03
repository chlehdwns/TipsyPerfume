package com.kh.ttp.product.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString
public class ProductDetailSelectVO extends ProductVO {
	   /*
	   PDT_CATEG_NO,
	   PDT_MANUFAC,
	   PDT_GROUP,
	   PDT_FILE_NO,
	   PDT_FILE_INDEX,
	   PDT_FILE_PATH || '/' || PDT_FILE_UPLOAD "PDT_DETAIL_IMG_SRC",
	   PDT_OPTION_NO,
	   PDT_OPTION_FIRST,
	   PDT_OPTION_SECOND,
	   PDT_OPTION_PRICE,
	   PDT_OPTION_STOCK
	   */
	private int pdtCategNo;
	private String pdtManufac;
	private String pdtGroup;
	
	private int pdtFileNo;
	private int pdtFileIndex;
	private String pdtDetailImgSrc;
	
	private int pdtOptionNo;
	private String pdtOptionFirst;
	private String pdtOptionSecond;
	private int pdtOptionPrice;
	private int pdtOptionStock;
	
	
	
}
