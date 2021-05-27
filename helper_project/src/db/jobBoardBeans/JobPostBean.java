package db.jobBoardBeans;

/*
 * CREATE TABLE JOB_BOARD (
	    "NO" NUMBER PRIMARY KEY ,
	    "CREATED_AT" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	    "CREATOR" NUMBER NOT NULL,
	    "CATEGORY" NUMBER,
	--     select just one category
	    "JOB_TITLE" VARCHAR2(200 BYTE) NOT NULL,
	    "JOB_TIME_START" TIMESTAMP NOT NULL,
	    "JOB_TIME_END" TIMESTAMP NOT NULL,
	    "JOB_LOCATION_ZIP_CODE" NUMBER NOT NULL,
	    "JOB_LOCATION" NUMBER NOT NULL,
	    "JOB_LOCATION_DETAIL" VARCHAR2(200 BYTE) NOT NULL,
	    "JOB_PAY" NUMBER(7) NOT NULL,
	    "JOB_NUM_OF_PEOPLE" NUMBER(1),
	--     maximum is five
	    "JOB_DETAIL" CLOB,
	    "JOB_PEOPLE" VARCHAR2(30),
	
	    FOREIGN KEY (CREATOR) REFERENCES USERS(NO),
	    FOREIGN KEY (CATEGORY) REFERENCES CATEGORIES(NO),
	    FOREIGN KEY (JOB_LOCATION) REFERENCES LOCATIONS(NO)
	);*/

public class JobPostBean {
	private String job_title;
	private String created_at;
	private int creator_no;
	private String creator_nick;
	private String creator_grade;
	private int category;
	private String job_day;
	private String job_time_start;
	private String job_time_end;
	private String location_first_name;
	private String location_second_name;
	private String location_addr;
	private String location_detail;
	private int job_num_of_people;
	private int job_pay;
	private String job_detail;
	private String job_people;
	private int worker_count;
	private String my_state;
	
	public String getTime() {
		return String.format("%s ~ %s", job_time_start, job_time_end);
	}
	
	public String getLocation() {
		return String.format("%s, %s", location_addr, location_detail);
	}

	public String getJob_title() {
		return job_title;
	}

	public String getCreated_at() {
		return created_at;
	}

	public int getCreator_no() {
		return creator_no;
	}

	public String getCreator_nick() {
		return creator_nick;
	}

	public String getCreator_grade() {
		return creator_grade;
	}

	public int getCategory() {
		return category;
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

	public String getLocation_first_name() {
		return location_first_name;
	}

	public String getLocation_second_name() {
		return location_second_name;
	}

	public String getLocation_addr() {
		return location_addr;
	}

	public String getLocation_detail() {
		return location_detail;
	}

	public int getJob_num_of_people() {
		return job_num_of_people;
	}

	public int getJob_pay() {
		return job_pay;
	}

	public String getJob_detail() {
		return job_detail;
	}

	public String getJob_people() {
		return job_people;
	}

	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public void setCreator_no(int creator_no) {
		this.creator_no = creator_no;
	}

	public void setCreator_nick(String creator_nick) {
		this.creator_nick = creator_nick;
	}

	public void setCreator_grade(String creator_grade) {
		this.creator_grade = creator_grade;
	}

	public void setCategory(int category) {
		this.category = category;
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

	public void setLocation_first_name(String location_first_name) {
		this.location_first_name = location_first_name;
	}

	public void setLocation_second_name(String location_second_name) {
		this.location_second_name = location_second_name;
	}

	public void setLocation_addr(String location_addr) {
		this.location_addr = location_addr;
	}

	public void setLocation_detail(String location_detail) {
		this.location_detail = location_detail;
	}

	public void setJob_num_of_people(int job_num_of_people) {
		this.job_num_of_people = job_num_of_people;
	}

	public void setJob_pay(int job_pay) {
		this.job_pay = job_pay;
	}

	public void setJob_detail(String job_detail) {
		this.job_detail = job_detail;
	}

	public void setJob_people(String job_people) {
		this.job_people = job_people;
	}

	public int getWorker_count() {
		return worker_count;
	}

	public String getMy_state() {
		return my_state;
	}

	public void setWorker_count(int worker_count) {
		this.worker_count = worker_count;
	}

	public void setMy_state(String my_state) {
		this.my_state = my_state;
	}
}
