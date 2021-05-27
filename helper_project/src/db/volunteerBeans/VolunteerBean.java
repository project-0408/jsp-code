package db.volunteerBeans;

public class VolunteerBean {
	
	private int user_no;
	private int post_no;
	private int state;

	public VolunteerBean(int user_no, int post_no, int state) {
		this.user_no = user_no;
		this.post_no = post_no;
		this.state = state;
	}
	
	public boolean setVolunteerBean(String user_no, String post_no, String state) {
		
		boolean isSuccess = false;
		
		try {
			this.user_no = Integer.valueOf(user_no);
			this.post_no = Integer.valueOf(post_no);
			this.state = Integer.valueOf(state);
			
			isSuccess = true;
		} catch (NumberFormatException e) {
			System.out.println("The string cannot be parsedas an integer.");
		}
		
		return isSuccess;
	}
	
	public int getUser_no() {
		return user_no;
	}
	public int getPost_no() {
		return post_no;
	}
	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	public void setState(String state) {
		this.state = Integer.valueOf(state);
	}

}
