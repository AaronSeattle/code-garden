puts 'Project Euler Problem 3: What is the largest prime factor of the number 600851475143 ?'

num = 600851475143

def largest_prime_factor(n)
	largest_factor = 1

	while n % 2 == 0
		puts "Found factor of 2"
		largest_factor = 2
		n = n/2
	end

	p = 3
	while n != 1
		while n % p == 0
			puts "Found factor of #{p}"
			largest_factor = p
			n = n/p
		end
		p += 2
	end

	return largest_factor
end

start = Time.now

answer = largest_prime_factor(num)

finish = Time.now
puts "___ #{finish - start} seconds: Calculation completed "

puts "Largest prime factor of #{num} is #{answer}."
