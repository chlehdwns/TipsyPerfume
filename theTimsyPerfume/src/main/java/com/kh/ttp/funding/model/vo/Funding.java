package com.kh.ttp.funding.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
@Data @AllArgsConstructor
public class Funding {
	private int fundingNo;
	private int pdtNo;
	private int fundingViewCount;
	private Date cuttingDate;
	private int fundingFee;
	private int cuttingprice;

}
