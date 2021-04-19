package question;

public class Capital {
	private String str;

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}
	
	public String process(String str) {
		StringBuffer strBuffer = new StringBuffer();
		char c = 'A';
		char c2 = str.charAt(0);
		
		for (char i = c2; i >= c; i--) {
			for (char j = c; j <= i ; j++) {
				strBuffer.append(j);
			}
			strBuffer.append("<br>");
		}
		return str;
	}

}
