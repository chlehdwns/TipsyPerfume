package com.kh.ttp.user.model.vo;

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
	
	
	public Receiver() {
		super();
	}


	public Receiver(int receiverNo, int userNo, String receiverName, String phone, String address, String addressDetail,
			int postalCode, String placeAlias, String primaryStatus) {
		super();
		this.receiverNo = receiverNo;
		this.userNo = userNo;
		this.receiverName = receiverName;
		this.phone = phone;
		this.address = address;
		this.addressDetail = addressDetail;
		this.postalCode = postalCode;
		this.placeAlias = placeAlias;
		this.primaryStatus = primaryStatus;
	}


	public int getReceiverNo() {
		return receiverNo;
	}


	public void setReceiverNo(int receiverNo) {
		this.receiverNo = receiverNo;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public String getReceiverName() {
		return receiverName;
	}


	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
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


	public String getPlaceAlias() {
		return placeAlias;
	}


	public void setPlaceAlias(String placeAlias) {
		this.placeAlias = placeAlias;
	}


	public String getPrimaryStatus() {
		return primaryStatus;
	}


	public void setPrimaryStatus(String primaryStatus) {
		this.primaryStatus = primaryStatus;
	}


	@Override
	public String toString() {
		return "Receiver [receiverNo=" + receiverNo + ", userNo=" + userNo + ", receiverName=" + receiverName
				+ ", phone=" + phone + ", address=" + address + ", addressDetail=" + addressDetail + ", postalCode="
				+ postalCode + ", placeAlias=" + placeAlias + ", primaryStatus=" + primaryStatus + "]";
	}
	
	
	
	
}
