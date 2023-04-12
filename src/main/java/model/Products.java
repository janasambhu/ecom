package model;

import java.util.ArrayList;

public class Products {
	
	private int productId;
	private String productname;
	private String productprice;	
	private String productquantity;
	private String productdetails;
	private String producttags;
	private String productimage1;
	private String productimage2;
	private String productimage3;
	private String productimage4;
	private String sellerId;
	private ArrayList<String> pname;
	private ArrayList<String> pprice;	
	private ArrayList<String> pquantity;
	private ArrayList<String> pdetails;
	private ArrayList<String> pimage1;
	private ArrayList<String> pimage2;
	private ArrayList<String> pimage3;
	private ArrayList<String> pimage4;
	private ArrayList<String> pid;
	
	public String getProducttags() {
		return producttags;
	}
	public void setProducttags(String producttags) {
		this.producttags = producttags;
	}
	public ArrayList<String> getPimage1() {
		return pimage1;
	}
	public void setPimage1(ArrayList<String> pimage1) {
		this.pimage1 = pimage1;
	}
	public ArrayList<String> getPimage2() {
		return pimage2;
	}
	public void setPimage2(ArrayList<String> pimage2) {
		this.pimage2 = pimage2;
	}
	public ArrayList<String> getPimage3() {
		return pimage3;
	}
	public void setPimage3(ArrayList<String> pimage3) {
		this.pimage3 = pimage3;
	}
	public ArrayList<String> getPimage4() {
		return pimage4;
	}
	public void setPimage4(ArrayList<String> pimage4) {
		this.pimage4 = pimage4;
	}
	
	public ArrayList<String> getPid() {
		return pid;
	}
	public void setPid(ArrayList<String> pid) {
		this.pid = pid;
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
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
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
	public String getSellerId() {
		return sellerId;
	}
	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}
	public String getProductimage1() {
		return productimage1;
	}
	public void setProductimage1(String productimage1) {
		this.productimage1 = productimage1;
	}
	public String getProductimage2() {
		return productimage2;
	}
	public void setProductimage2(String productimage2) {
		this.productimage2 = productimage2;
	}
	public String getProductimage3() {
		return productimage3;
	}
	public void setProductimage3(String productimage3) {
		this.productimage3 = productimage3;
	}
	public String getProductimage4() {
		return productimage4;
	}
	public void setProductimage4(String productimage4) {
		this.productimage4 = productimage4;
	}
}
