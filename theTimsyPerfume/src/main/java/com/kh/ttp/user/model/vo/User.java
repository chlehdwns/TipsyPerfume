package com.kh.ttp.user.model.vo;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class User {

	private int userNo;
	private String userEmail;
	private String userPwd;
	private String userName;
	private String nickName;
	private Date birthDate;
	private String status;
	
	private String memberType;
	private String businessReg;
	private String adultStatus;
	private Date enrollDate;
	private String userProfile;
	
	
	private String phone;
	private String address;
	private String addressDetail;
	private int postalCode;
	
	
	
	


	
	
	
	
}
