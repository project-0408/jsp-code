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
			return "3�� ����Դϴ�";
		}
		else {
			return "3�� ����� �ƴմϴ�";
		}
	}
}
