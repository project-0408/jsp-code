package db.jobBoardBeans;

public class JobPostSubBean {
	
	private int no;
	
	private int creator_no;
	private String creator_nick;
	
	private String job_titile;
	private int job_pay;
	private String job_day;
	private String job_time_start;
	private String job_time_end;
	private String job_location_first_name;
	private String job_location_second_name;
	private String created_at;
	
	public String getTime() {
		return String.format("%s ~ %s", job_time_start, job_time_end);
	}
	public String getLocation() {
		return String.format("%s %s", job_location_first_name, job_location_second_name);
	}
	
	public int getNo() {
		return no;
	}
	public int getCreator_no() {
		return creator_no;
	}
	public String getCreator_nick() {
		return creator_nick;
	}
	public String getJob_titile() {
		return job_titile;
	}
	public int getJob_pay() {
		return job_pay;
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
	public String getJob_location_first_name() {
		return job_location_first_name;
	}
	public String getJob_location_second_name() {
		return job_location_second_name;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public void setCreator_no(int creator_no) {
		this.creator_no = creator_no;
	}
	public void setCreator_nick(String creator_nick) {
		this.creator_nick = creator_nick;
	}
	public void setJob_titile(String job_titile) {
		this.job_titile = job_titile;
	}
	public void setJob_pay(int job_pay) {
		this.job_pay = job_pay;
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
	public void setJob_location_first_name(String job_location_first_name) {
		this.job_location_first_name = job_location_first_name;
	}	
	public void setJob_location_second_name(String job_location_second_name) {
		this.job_location_second_name = job_location_second_name;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	
}
