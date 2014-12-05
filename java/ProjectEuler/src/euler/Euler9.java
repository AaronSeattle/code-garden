public class Euler9 {
	public static void main(String []args) {
		System.out.println("Project Euler: Problem 9: Find product of a,b, c where a,b,c are special Pythagorean triplet where a+b+c = 1000.\n");
		for (int a = 1; a < 333; a++) {
			for (int b = a+1; b < 500; b++) {
				int c = 1000 - (a + b);
				if (a * a + b * b == c * c) {
					int answer = a * b * c;
					System.out.println ("a = " + a + " b = " + b + " c = " + c);
					System.out.println ("answer = " + answer);
					break;
				}
			}
		}
	}
}