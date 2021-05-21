package db.shopBeans;

/*
 * CREATE TABLE PRODUCTS (
	    "NO" NUMBER PRIMARY KEY,
	    "NAME" VARCHAR2(100 BYTE) NOT NULL,
	    "AMOUNT" NUMBER(4) DEFAULT 0,
	    "PRICE" NUMBER(6) NOT NULL,
	    "BRAND" NUMBER NOT NULL,
	    "PRODUCT_IMAGE" BLOB,
	    "DETAIL" CLOB,

	    FOREIGN KEY (BRAND) REFERENCES BRANDS(NO)
	);*/

public class ProductBean {
	private int no;
	private String name;
	private int amount;
	private int price;
	private int brand;
	private String image_url;
	private String detail;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getBrand() {
		return brand;
	}
	public void setBrand(int brand) {
		this.brand = brand;
	}
	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
}
