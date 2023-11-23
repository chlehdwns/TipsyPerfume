package com.kh.ttp.product.model.vo;

import com.kh.ttp.user.model.vo.User;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class CartVO {
	
	/*
	CART_NO	NUMBER
	USER_NO	NUMBER
	PDT_NO	NUMBER
	CART_QUANTIRY	NUMBER
	*/
	private int cartNo;
	private User user;
	ProductVO product;
	private int CartQuantity;
	
	
}
