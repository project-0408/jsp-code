package question;

public class Money {
	private int mon;

	public int getMon() {
		return mon;
	}
	public void setMon(int mon) {
		this.mon = mon;
	}
	
	public String process() {
		int fm = mon/50000;
		int om = mon%50000/10000;
		int os = mon%50000%10000/1000;
		int oh = mon%50000%10000%1000/100;
		int ot = mon%50000%10000%1000%100/10;
		int o = mon%50000%10000%1000%100%10;
		
		return "50000원 짜리 : " + fm + "개" + "<br>"
			+  "10000원 짜리 : " + om + "개" + "<br>"
			+  "1000원 짜리 : " + os + "개" + "<br>"
			+  "100원 짜리 : " + oh + "개" + "<br>"
			+  "10원 짜리 : " + ot + "개" + "<br>"
			+  "1원 짜리 : " + o + "개";
	}
	
}
