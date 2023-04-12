package model;

import java.util.ArrayList;

public class Cart {
	private String customerId;
	private String productId;
	private String productname;
	private String productprice;
	private String productquantity;
	private String productdetails;
	private String productimage;
	private ArrayList<String> pname;
	private ArrayList<String> pprice;
	private ArrayList<String> pquantity;
	private ArrayList<String> pdetails;
	private ArrayList<String> pimage;
	private ArrayList<String> pid;
	
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getProductprice() {
		return productprice;
	}
	public void setProductprice(String productprice) {
		this.productprice = productprice;
	}
	public String getProductquantity() {
		return productquantity;
	}
	public void setProductquantity(String productquantity) {
		this.productquantity = productquantity;
	}
	public String getProductdetails() {
		return productdetails;
	}
	public void setProductdetails(String productdetails) {
		this.productdetails = productdetails;
	}
	public String getProductimage() {
		return productimage;
	}
	public void setProductimage(String productimage) {
		this.productimage = productimage;
	}
	
	public ArrayList<String> getPname() {
		return pname;
	}
	public void setPname(ArrayList<String> pname) {
		this.pname = pname;
	}
	public ArrayList<String> getPprice() {
		return pprice;
	}
	public void setPprice(ArrayList<String> pprice) {
		this.pprice = pprice;
	}
	public ArrayList<String> getPquantity() {
		return pquantity;
	}
	public void setPquantity(ArrayList<String> pquantity) {
		this.pquantity = pquantity;
	}
	public ArrayList<String> getPdetails() {
		return pdetails;
	}
	public void setPdetails(ArrayList<String> pdetails) {
		this.pdetails = pdetails;
	}
	public ArrayList<String> getPimage() {
		return pimage;
	}
	public void setPimage(ArrayList<String> pimage) {
		this.pimage = pimage;
	}
	public ArrayList<String> getPid() {
		return pid;
	}
	public void setPid(ArrayList<String> pid) {
		this.pid = pid;
	}	
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}	
}
