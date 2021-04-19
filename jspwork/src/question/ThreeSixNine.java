package question;

public class ThreeSixNine {
	private int num;
	private String a="";
	private String b="";
	private String c="";

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String process() {
		
		if(num%10==3||num%10==6||num%10==9){
			a = "Â¦";
		}
		else {
			c = "¾øÀ½";
		}
		if(num/10%10==3||num/10%10==6||num/10%10==9){
			b = "Â¦";
		}
		else {
			c = "¾øÀ½";
		}
	
		return a + b + c;
	}
}
