package com.kh.ttp.product.model.vo;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString @Builder
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
