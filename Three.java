package test;

public class Three {
	public static void main(String[] args) {
		for (int i = 1; i < 100; i++) {
			int ten = i / 10;
			int one = i % 10;
			if (ten % 3 == 0 && one % 3 == 0 && one != 0 && i > 10) {
				System.out.println(i + " �ڼ� �ι�");
			} else if (one % 3 == 0 && i < 10) {
				System.out.println(i + " �ڼ� �ѹ�");
			} else if (one == 0 && ten % 3 == 0) {
				System.out.println(i + " �ڼ� �ѹ�");
			} else if (ten % 3 != 0 && one % 3 == 0 && one != 0) {
				System.out.println(i + " �ڼ� �ѹ�");
			}
		}
	}

}
