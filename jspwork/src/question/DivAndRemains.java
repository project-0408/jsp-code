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
			return "10�� �ڸ��� 1���ڸ��� �����ϴ�.";
		}
		else {
			return "10�� �ڸ���  1���ڸ��� �����ʽ��ϴ�.";
		}
	}
}
