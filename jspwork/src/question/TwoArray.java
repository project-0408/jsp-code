package question;

import java.util.Random;

public class TwoArray {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process () {
		Random random = new Random();
		StringBuffer stringBuffer = new StringBuffer();
		int ran [][] = new int [num][num];
		
		for (int i = 0; i < num ; i++) {
			for (int j = 0; j < ran.length; j++) {
				ran [i][j] = random.nextInt(10)+1;
				if(j == num-1){
					stringBuffer.append(ran[i][j]+"<br>");
				}
				else {					
					stringBuffer.append(ran[i][j]+"\n");
				}
			}
		}
		return stringBuffer.toString();
	
	}
}
