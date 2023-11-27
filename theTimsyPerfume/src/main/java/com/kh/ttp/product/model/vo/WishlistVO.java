package com.kh.ttp.product.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter @NoArgsConstructor
public class WishlistVO {
	/*
	PDT_NO	NUMBER
	USER_NO	NUMBER
	WISHLIST_DATE	DATE
	*/
	private int pdtNo;
	private int userNo;
	private String wishlistDate;
}
