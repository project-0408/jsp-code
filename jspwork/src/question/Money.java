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
		
		return "50000�� ¥�� : " + fm + "��" + "<br>"
			+  "10000�� ¥�� : " + om + "��" + "<br>"
			+  "1000�� ¥�� : " + os + "��" + "<br>"
			+  "100�� ¥�� : " + oh + "��" + "<br>"
			+  "10�� ¥�� : " + ot + "��" + "<br>"
			+  "1�� ¥�� : " + o + "��";
	}
	
}
