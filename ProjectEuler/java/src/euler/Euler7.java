package euler;

import java.util.List;

public class Euler7 {
	public static void main(String[] args) {
		List<Integer> foo = Sieve.sieve_of_eratosthenes(105000, true);
		System.out.println("Project Euler Problem 7: What is the 10,001st prime number?");

		if (foo.size() > 10000) {
			System.out.println("10,001st prime is " + foo.get(10000));
		} else {
			System.out.println("List of primes is less than 10,001 so I son't know what the 10,001st prime is.");
		}

	}
}