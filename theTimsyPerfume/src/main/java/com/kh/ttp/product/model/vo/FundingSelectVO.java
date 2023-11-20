package com.kh.ttp.product.model.vo;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor
public class FundingSelectVO {
	private int pdtNo;
	private int pdtCategNo;
	private String pdtName;
	private int pdtPrice;
	private int pdtStock;
	private Date pdtDate;
	private String pdtIntro;
	private String pdtDescription;
	private String pdtIngredient;
	private String pdtShipping;
	private int pdtCount;
	private int pdtFileNo;
	private String pdtFilePath;
	private String pdtFileOrigin;
	private String pdtFileUpload;
	private String pdtManufac;
	private String pdtGroup;
	private int pdtOptionNo;
	private String pdtOptionFirst;
	private String pdtOptionSecond;
	private int fundingNo;
	private Date cuttingDate;
	private int fundingFee;
	private int cuttingPrice;
	

}
