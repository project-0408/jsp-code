package question;

public class Season {
	private String month;
	private int mon;

	public int getMon() {
		return mon;
	}
	public void setMon(int mon) {
		this.mon = mon;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String process() {
		
		switch (mon) {
		case 12 : case 1 : case 2 :
		month = "겨울" ;
		break;
		case 3 : case 4 : case 5 :
		month = "봄" ;
		break;
		case 6 : case 7 : case 8 :
		month = "여름" ;
		break;
		case 9 : case 10 : case 11 :
		month = "겨울" ;
		break;
		
		default :
		month = "다시 입력하세요";
		}
		return month;
	}

}
