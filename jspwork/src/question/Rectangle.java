package question;

public class Rectangle {
	private int x;
	private int y;
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
	
	public String process() {
		if(x>=100 && x<=200 && y>=100 && y<=200 ) {
			return "(" + x + " , " + y +") �� �簢�� �ȿ� �ֽ��ϴ�.";
		}
		else {
			return "(" + x + " , " + y +") �� �簢�� �ȿ� �����ϴ�.";
		}
	}
}
