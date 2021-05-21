package db.userBeans;

import java.sql.Timestamp;

/*
 * CREATE TABLE USERS (
	    "NO" NUMBER PRIMARY KEY,
	    -- auto-increment
	    "NAME" VARCHAR2(10 BYTE) NOT NULL,
	    "NICK" VARCHAR2(12 BYTE) UNIQUE NOT NULL,
	    "ID" VARCHAR2(20 BYTE) UNIQUE NOT NULL,
	    "PW" VARCHAR2(20 BYTE) NOT NULL,
	    "GENDER" NUMBER(1) DEFAULT 2 NOT NULL,
	    -- 0 : 남, 1 : 여, 2: 선택안함
	    "BIRTHDAY" TIMESTAMP NOT NULL,
	    "EMAIL" VARCHAR2(100 BYTE) NOT NULL,
	    "POINT" NUMBER(6) DEFAULT 0,
	    "GRADE" NUMBER(1) DEFAULT 0,
	    -- 0 : USER, 1 : ADMIN
	    "CREATED_AT" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	    "COUNTRY_CODE" NUMBER,
	
	    FOREIGN KEY (COUNTRY_CODE) REFERENCES COUNTRIES(CODE)
	);*/

public class UserBean {
	private int no;
	private String name;
	private String nick;
	private String id;
	private String pw;
	private int gender;
	private int birth_yy;
	private int birth_mm;
	private int birth_dd;
	private String email;
	private int point;
	private String grade;
	private String location_first_name;
	private String location_second_name;
	private String location_addr;
	private String location_detail;
	private Timestamp created_at;
	private int country_code;
	
	public int getNo() {
		return no;
	}
	public String getName() {
		return name;
	}
	public String getNick() {
		return nick;
	}
	public String getId() {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public int getGender() {
		return gender;
	}
	public int getBirth_yy() {
		return birth_yy;
	}
	public int getBirth_mm() {
		return birth_mm;
	}
	public int getBirth_dd() {
		return birth_dd;
	}
	public String getEmail() {
		return email;
	}
	public int getPoint() {
		return point;
	}
	public String getGrade() {
		return grade;
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
	public Timestamp getCreated_at() {
		return created_at;
	}
	public int getCountry_code() {
		return country_code;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public void setBirth_yy(int birth_yy) {
		this.birth_yy = birth_yy;
	}
	public void setBirth_mm(int birth_mm) {
		this.birth_mm = birth_mm;
	}
	public void setBirth_dd(int birth_dd) {
		this.birth_dd = birth_dd;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public void setGrade(String grade) {
		this.grade = grade;
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
	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}
	public void setCountry_code(int country_code) {
		this.country_code = country_code;
	}
}