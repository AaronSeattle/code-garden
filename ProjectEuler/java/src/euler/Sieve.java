package euler;

import java.util.ArrayList;
import java.util.List;

public class Sieve {
	// once we have multiple sieves defined, add logic to decide which to use based on the inputs
	public static List<Integer> primes (int max) {
		return sieve_of_eratosthenes(max, false);
	}

	public static List<Integer> primes (int max, boolean debug) {
		return sieve_of_eratosthenes(max, debug);
	}

	public static List<Integer> sieve_of_eratosthenes (int max) {
		return sieve_of_eratosthenes (max, false);
	}

	public static List<Integer> sieve_of_eratosthenes (int max, boolean debug) {
		boolean[] numbers = new boolean[max+1];
		List<Integer> primes = new ArrayList<Integer>();
		int count = 0;

		// Step 1. create list of all integers from 2 to max
		for (int i=2; i <= max; i++) {
			numbers[i] = true;
		}

		// Step 2. Initially let p = 2 , the first prime number
		int p = 2;

		while (p*p < max) {
			if (numbers[p] == false) {
				p++;
				continue;
			}

			if (debug) {
				System.out.println("Filtering out multiples of " + p);
			}

			// Step 3: set all multiples of p to false
			count = p * p;
			while (count < max) {
				numbers[count] = false;
				count += p;
			}
			p++;
		}

		for (int x = 2; x <= max; x++) {
			if (numbers[x] == true) {
				primes.add(x);
			}
		}
		return primes;
	}

}