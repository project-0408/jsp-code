package magic;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class BoardBean {
	
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	Calendar cal = Calendar.getInstance();
	String today = formatter.format(cal.getTime());
	
	private String name;
	private String email;
	private String title;
	private String content;
	private int number;
	private Timestamp date = Timestamp.valueOf(today);
	
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
