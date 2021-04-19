package question;

public class Median {
	private int num1;
	private int num2;
	private int num3;
	
	public int getNum1() {
		return num1;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public int getNum2() {
		return num2;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	public int getNum3() {
		return num3;
	}
	public void setNum3(int num3) {
		this.num3 = num3;
	}
	
	public String process() {
		
		if(num1<num3 && num1>num2) {
			return num3 + " , "  +  num2 + "의 중간 값은" + num1;
		}
		else if(num1<num2 && num1>num3) {
			return num2 + " , "  +  num3 + "의 중간 값은" + num1;
		}
		else if(num2<num3 && num2>num1) {
			return num3 + " , "  +  num1 + "의 중간 값은" + num2;
		}
		else if(num2<num1 && num2>num3) {
			return num1 + " , "  +  num3 + "의 중간 값은" + num2;
		}
		else if(num3<num1 && num3>num2) {
			return num1 + " , "  +  num2 + "의 중간 값은" + num3;
		}
		else if(num3<num2 && num3>num1) {
			return num2 + " , "  +  num1 + "의 중간 값은" + num3;
		}
		else {
			return "같은수가 있거나 입력이 완료되지 않아 구할 수 없습니다.";
		}
	}
}
