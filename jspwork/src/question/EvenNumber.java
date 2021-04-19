package question;

public class EvenNumber {
	private int num;
	private int sum;

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	
	public int process(){
		for (int i = 0; i <= num ; i++) {
			if(i%2==0){
				sum+=i;
			}
		}
		return sum;
	}
}
