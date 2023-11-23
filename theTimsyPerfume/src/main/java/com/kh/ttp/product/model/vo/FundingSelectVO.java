package com.kh.ttp.product.model.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class FundingSelectVO extends ProductVO {

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
