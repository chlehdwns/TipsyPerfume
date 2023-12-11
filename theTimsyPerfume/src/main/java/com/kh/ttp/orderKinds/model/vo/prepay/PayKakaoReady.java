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
public class PayKakaoReady extends PayKakaoVO {
	
	/*
	private String userEmail(Prepay클래스의 필드) = partner_user_id
	private String payKakaoNo; // partner_order_id PAY_KAKAO_NO 유저 이메일 insert 후 결과
	private String tid; // tid 추후 발급된 tid
	private List<String> itemCode;
	*/
	private String itemName;
	private int quantity;
	private int totalAmount;
	private int pdtShipping;
	private int taxFreeAmount;
	
	//private String url;
	//private String approvalUrl;
	//private String errorUrl;
	
}
