package question;

import java.util.Random;

public class Array4 {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process() {
		Random random = new Random();
		StringBuffer stringBuffer = new StringBuffer();
		int [] ran = new int [num];

		for (int i = 0; i < num; i++) {
			
			ran[i] = random.nextInt(100)+1;
			
			for (int j = 0; j < num; j++) {
				if((ran[i]==ran[j])&&(i!=j)) {
					i--;
				}
			}
		}
		
		for (int i = 1; i <= num; i++) {
			if(i%10==0) {
				stringBuffer.append(ran[i-1] + "<br>");
			}
			else {
				stringBuffer.append(ran[i-1] + "\n");
			}
		}
		return stringBuffer.toString();
	}
}