package area;

public class Circle2 {
	private int radius ;

	
	public int getRadius() {
		return radius;
	}


	public void setRadius(int radius) {
		this.radius = radius;
	}


	public double process(int r) {
		return radius * radius * 3.14;
	}
}
