package com.kh.ttp.orderKinds.model.vo.prepay;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder(builderMethodName = "PayKakaoReady")
@ToString
public class PayKakaoReady /*extends PayKakaoVO*/ {
	
	
	private String userEmail;
 	private String payKakaoNo;
	private String tid;
	private List<String> itemCode;
	 
	
	private String itemName;
	private int quantity;
	private int totalAmount;
	private int pdtShipping;
	private int taxFreeAmount;
	
	
}
