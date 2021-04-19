package question;

public class Array {
	private int[]num = new int [5];
	private int x = 0;

	public int getNum(int i) {
		return num[i];
	}
	public void setNum(int []num) {
			this.num = num;
	}
	public int process(){
		for (int i = 0; i < 5; i++) {
			if(x<num[i]){
				x = num[i];
			}
		}
		return x;
	}
}
