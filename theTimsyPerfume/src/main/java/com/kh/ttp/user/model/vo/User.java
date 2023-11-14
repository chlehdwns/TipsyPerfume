package com.kh.ttp.user.model.vo;

import java.sql.Date;

public class User {

	private int userNo;
	private String userId;
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
	
	
	public User() {
		super();
	}


	//receiver없는거
	public User(int userNo, String userId, String userPwd, String userName, String nickName, Date birthDate,
			String status, String memberType, String businessReg, String adultStatus, Date enrollDate,
			String userProfile) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickName = nickName;
		this.birthDate = birthDate;
		this.status = status;
		this.memberType = memberType;
		this.businessReg = businessReg;
		this.adultStatus = adultStatus;
		this.enrollDate = enrollDate;
		this.userProfile = userProfile;
	}


	//receiver잇는거
	public User(int userNo, String userId, String userPwd, String userName, String nickName, Date birthDate,
			String status, String memberType, String businessReg, String adultStatus, Date enrollDate,
			String userProfile, String phone, String address, String addressDetail, int postalCode) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickName = nickName;
		this.birthDate = birthDate;
		this.status = status;
		this.memberType = memberType;
		this.businessReg = businessReg;
		this.adultStatus = adultStatus;
		this.enrollDate = enrollDate;
		this.userProfile = userProfile;
		this.phone = phone;
		this.address = address;
		this.addressDetail = addressDetail;
		this.postalCode = postalCode;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserPwd() {
		return userPwd;
	}


	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getNickName() {
		return nickName;
	}


	public void setNickName(String nickName) {
		this.nickName = nickName;
	}


	public Date getBirthDate() {
		return birthDate;
	}


	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getMemberType() {
		return memberType;
	}


	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}


	public String getBusinessReg() {
		return businessReg;
	}


	public void setBusinessReg(String businessReg) {
		this.businessReg = businessReg;
	}


	public String getAdultStatus() {
		return adultStatus;
	}


	public void setAdultStatus(String adultStatus) {
		this.adultStatus = adultStatus;
	}


	public Date getEnrollDate() {
		return enrollDate;
	}


	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}


	public String getUserProfile() {
		return userProfile;
	}


	public void setUserProfile(String userProfile) {
		this.userProfile = userProfile;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getAddressDetail() {
		return addressDetail;
	}


	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}


	public int getPostalCode() {
		return postalCode;
	}


	public void setPostalCode(int postalCode) {
		this.postalCode = postalCode;
	}


	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", nickName=" + nickName + ", birthDate=" + birthDate + ", status=" + status + ", memberType="
				+ memberType + ", businessReg=" + businessReg + ", adultStatus=" + adultStatus + ", enrollDate="
				+ enrollDate + ", userProfile=" + userProfile + ", phone=" + phone + ", address=" + address
				+ ", addressDetail=" + addressDetail + ", postalCode=" + postalCode + "]";
	}
	
	


	
	
	
	
}
