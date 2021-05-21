package db.shopBeans;

import java.sql.Timestamp;

/*
 * CREATE TABLE PURCHASES (
	    "USER_ID" NUMBER NOT NULL,
	    "PRODUCT_NUMBER" NUMBER NOT NULL,
	    "PURCHASE_DATE" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	    "PURCHASE_COUNT" NUMBER(4)
	);*/

public class PurchaseBean {
//	private int user_id;
	private int product_number;
	private Timestamp purchase_date;
	private int purchase_count;
	
//	public int getUser_id() {
//		return user_id;
//	}
	public int getProduct_number() {
		return product_number;
	}
	public Timestamp getPurchase_date() {
		return purchase_date;
	}
	public int getPurchase_count() {
		return purchase_count;
	}
//	public void setUser_id(int user_id) {
//		this.user_id = user_id;
//	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public void setPurchase_date(Timestamp purchase_date) {
		this.purchase_date = purchase_date;
	}
	public void setPurchase_count(int purchase_count) {
		this.purchase_count = purchase_count;
	}
}
