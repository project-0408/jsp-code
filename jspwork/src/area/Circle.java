package area;

public class Circle {
	private double r ;
	
	public double getR() {
		return r;
	}
	public void setR(double r) {
		this.r = r;
	}
	public double process() {
		return r*r*3.14;
	}
}
