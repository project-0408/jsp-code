package db.volunteerBeans;

public class MyVolunteerBean {
	private int post_no;
	private String job_day;
	private String job_time_start;
	private String job_time_end;
	private String job_title;
	private String my_state;
	
	public String getTime() {
		return String.format("%s ~ %s", job_time_start, job_time_end);
	}
	
	public int getPost_no() {
		return post_no;
	}
	public String getJob_day() {
		return job_day;
	}
	public String getJob_time_start() {
		return job_time_start;
	}
	public String getJob_time_end() {
		return job_time_end;
	}
	public String getJob_title() {
		return job_title;
	}
	public String getMy_state() {
		return my_state;
	}
	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}
	public void setJob_day(String job_day) {
		this.job_day = job_day;
	}
	public void setJob_time_start(String job_time_start) {
		this.job_time_start = job_time_start;
	}
	public void setJob_time_end(String job_time_end) {
		this.job_time_end = job_time_end;
	}
	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}
	public void setMy_state(String my_state) {
		this.my_state = my_state;
	}
}
