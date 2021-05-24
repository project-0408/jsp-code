package db.notifyBoardBeans;

import java.sql.Timestamp;

/*
 * CREATE TABLE NOTIFY_BOARD (
	"NO" NUMBER PRIMARY KEY,
	    "CREATED_AT" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        "CATEGORY" NUMBER,
	    "CREATOR" VARCHAR2(20) NOT NULL,
	    "NOTIFY_TITLE" VARCHAR2(200 BYTE) NOT NULL,
        "NOTIFY_DETAIL" CLOB,
	    "NOTIFY_HITS" NUMBER(6) DEFAULT 0
	    CONSTRAINT CATEGORY_CK CHECK("CATEGORY" IN(0,1,2))

	    FOREIGN KEY (CREATOR) REFERENCES USERS(NO)
	);*/

public class NoticeDTO {
	private int no;
	private Timestamp created_at;
	private String category;
	private int creator_no;
	private String title;
	private int hits;
	private String detail;
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

	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getCreator_no() {
		return creator_no;
	}
	public void setCreator_no(int creator_no) {
		this.creator_no = creator_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	
}
