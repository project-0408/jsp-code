package db.volunteerBeans;

/*
 * CREATE TABLE VOLUNTEERS (
	    "USER_ID" NUMBER NOT NULL,
	    "POST_NUMBER" NUMBER NOT NULL,
	    "STATE" NUMBER(1) DEFAULT 0 NOT NULL
	--     0 : CONSIDER , 1 : ACCEPT , 2 : FAIL
	);*/

public class VolunteerBean {
	private int post_number;
	private int state;
	
	public int getPost_number() {
		return post_number;
	}
	public int getState() {
		return state;
	}
	public void setPost_number(int post_number) {
		this.post_number = post_number;
	}
	public void setState(int state) {
		this.state = state;
	}
}
