package question;

public class Arithmetic {
	private int x;
	private int y;
	private String meth;
	
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	public String getMeth() {
		return meth;
	}
	public void setMeth(String meth) {
		this.meth = meth;
	}
	
	public String process() {
		if(meth.equals("+")) {
			return x + "+" + y +"�� ��� ��� : " + (x+y);
		}
		else if(meth.equals("-")) {
			return x + "-" + y +"�� ��� ��� : " + (x-y);
		}
		else if(meth.equals("*")) {
			return x + "*" + y +"�� ��� ��� : " + (x*y);
		}
		else if(meth.equals("/")) {
			return x + "/" + y +"�� ��� ��� : " + ((double)x/(double)y);
		}
		else {
			return "�����ڸ� �߸� �Է� �Ͽ����ϴ�.";
		}
	}

}
