package question;

public class DivAndRemains {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String process() {
		if(num % 10 == num /10) {
			return "10의 자리와 1의자리가 같습니다.";
		}
		else {
			return "10의 자리와  1의자리가 같지않습니다.";
		}
	}
}
