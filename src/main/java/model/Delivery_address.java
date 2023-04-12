package model;

public class Delivery_address {
	private int deliveryaddressId;
	private int customerId;
	private String line1;
	private String city;
	private String district;
	private String state;
	private String pincode;
	private String landmark;
	private String phno;
	
	public int getDeliveryaddressId() {
		return deliveryaddressId;
	}
	public void setDeliveryaddressId(int deliveryaddressId) {
		this.deliveryaddressId = deliveryaddressId;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getLine1() {
		return line1;
	}
	public void setLine1(String line1) {
		this.line1 = line1;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
}
