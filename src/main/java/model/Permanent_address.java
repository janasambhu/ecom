package model;

public class Permanent_address {
	private int permanentaddressId;
	private int customerId;
	private String line1;
	private String city;
	private String district;
	private String state;
	private String pincode;
	private String landmark;
	
	public int getPermanentaddressId() {
		return permanentaddressId;
	}
	public void setPermanentaddressId(int permanentaddressId) {
		this.permanentaddressId = permanentaddressId;
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
}
