package db.userBeans;

import java.sql.Timestamp;

/*
 * CREATE TABLE POINTS (
	    "USER_ID" NUMBER NOT NULL ,
	    "VALUE" NUMBER(6),
	    "BOUGHT_AT" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	    "DETAIL" CLOB,

	    FOREIGN KEY (USER_ID) REFERENCES USERS(NO)
	);*/

public class PointBean {
//	private int user_id;
	private int value;
	private Timestamp bought_at;
	private String detail;
	
//	public int getUser_id() {
//		return user_id;
//	}
	public int getValue() {
		return value;
	}
	public Timestamp getBought_at() {
		return bought_at;
	}
	public String getDetail() {
		return detail;
	}
//	public void setUser_id(int user_id) {
//		this.user_id = user_id;
//	}
	public void setValue(int value) {
		this.value = value;
	}
	public void setBought_at(Timestamp bought_at) {
		this.bought_at = bought_at;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
}
