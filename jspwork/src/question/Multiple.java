package question;

public class Multiple {
	private int num;
	private String a = "";
	private String b = "";
	private String c = "";
	private String d = "";
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	public String process() {
		
		if((num%3==0)) {
			a = "3 �� ����̴� ";
		}
		if((num%5==0)) {
			b = "5 �� ����̴� ";
		}
		if((num%8==0)) {
			c = "8 �� ����̴� ";
		}
		if((num%3!=0)&&(num%5!=0)&&(num%8!=0)){
			d = "�ش�Ǵ� ����� �����ϴ�.";
		}
		return a + b + c + d;
	}
}
