package question;

public class Array2 {
	private int [] num;
	private int [] x;

	public int getNum(int i) {
		return num[i];
	}

	public void setNum(int[] num) {
		this.num = num;
	}
	public String process () {
		
		for (int i = 0; i < num.length; i++) {
			if(num[i] % 3== 0) {
				x[i] = num[i];
			}
		}
		return x[0] + " " + x[1] + " " +x[2] + " " +x[3] + " " +x[4] + " " ;
	}
}
