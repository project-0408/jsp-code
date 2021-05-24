package db.reviewBeans;

import java.sql.Timestamp;

public class ReviewBoard {
	private String review;
	private Timestamp createdat;
	private int hits;
	private int no;
	private String title;
	private int creator_no;
	private int job_post_no;
	public int getJob_post_no() {
		return job_post_no;
	}
	public void setJob_post_no(int job_post_no) {
		this.job_post_no = job_post_no;
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
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public Timestamp getCreatedat() {
		return createdat;
	}
	public void setCreatedat(Timestamp createdat) {
		this.createdat = createdat;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
}
