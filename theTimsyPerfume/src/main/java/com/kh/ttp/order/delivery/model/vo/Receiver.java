package com.kh.ttp.order.delivery.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data @AllArgsConstructor
public class Receiver {

	private int receiverNo;
	private int userNo;
	private String receiverName;
	private String phone;
	private String address;
	private String addressDetail;
	private int postalCode;
	private String placeAlias;
	private String primaryStatus;
	
}
