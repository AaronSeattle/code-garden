puts 'Project Euler Problem 3: What is the largest prime factor of the number 600851475143 ?'

#num = 30
#num = 213 # 71 x 3
#num = 2059 # 29 x 71
#num = 13195 # 3 x 5 x 29
#num = 80301 # 71 x 29 x 13 x 3
#num = 401505 # 71 x 29 x 13 x 5 x 3
#num = 1365117 # 71 x 29 x 17 x 13 x 3
#num = 25937223 # 71 x 29 x 19 x 17 x 13 x 3
#num = 181560561 # 71 x 29 x 19 x 17 x 13 x 7 x 3

num = 600851475143
#num = 775147 # sqrt rounded up of number from problem

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

puts "Largest prime factor of #{num} is #{answer}."

finish = Time.now
puts "___ #{finish - start} seconds: Calculation completed "
