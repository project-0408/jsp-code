package question;

public class Three {
	private int th;
	
	public int getTh() {
		return th;
	}
	public void setTh(int th) {
		this.th = th;
	}
	
	public String process() {
		if(th % 3 ==0) {
			return "3의 배수입니다";
		}
		else {
			return "3의 배수가 아닙니다";
		}
	}
}
