package db.reviewBeans;

import java.sql.Timestamp;

/*
 * CREATE TABLE REVIEW_BOARD (
	    "NO" NUMBER PRIMARY KEY,
	    "CREATED_AT" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	    "CREATOR" NUMBER NOT NULL,
	    "REVIEW_TITLE" VARCHAR2(200 BYTE) NOT NULL,
	    "REVIEW_HITS" NUMBER(5) DEFAULT 0,
	    "REVIEW_SCORE" NUMBER(1) DEFAULT 0,
	    "REVIEW_DETAIL" CLOB,
	    "JOB_POST" NUMBER NOT NULL,

	    FOREIGN KEY (CREATOR) REFERENCES USERS(NO),
	    FOREIGN KEY (JOB_POST) REFERENCES JOB_BOARD(NO)
	);*/

public class ReviewPostBean {
	private int no;
	private Timestamp created_at;
	private int creator;
	private String review_titile;
	private int review_hits;
	private int review_score;
	private String review_detail;
	private int job_post;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public Timestamp getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}
	public int getCreator() {
		return creator;
	}
	public void setCreator(int creator) {
		this.creator = creator;
	}
	public String getReview_titile() {
		return review_titile;
	}
	public void setReview_titile(String review_titile) {
		this.review_titile = review_titile;
	}
	public int getReview_hits() {
		return review_hits;
	}
	public void setReview_hits(int review_hits) {
		this.review_hits = review_hits;
	}
	public int getReview_score() {
		return review_score;
	}
	public void setReview_score(int review_score) {
		this.review_score = review_score;
	}
	public String getReview_detail() {
		return review_detail;
	}
	public void setReview_detail(String review_detail) {
		this.review_detail = review_detail;
	}
	public int getJob_post() {
		return job_post;
	}
	public void setJob_post(int job_post) {
		this.job_post = job_post;
	}
}
