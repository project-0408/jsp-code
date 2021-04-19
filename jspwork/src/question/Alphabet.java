package question;

public class Alphabet {
	private String str;

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}
	
	public String process(String str) {
		StringBuffer strbuBuffer = new StringBuffer();
		char c = 'a';
		char c2 = str.charAt(0);
		
		do {
			strbuBuffer.append(c);
			
			c = (char)(c+1);
			
		}while(c <= c2);
		return strbuBuffer.toString();
	}
}
