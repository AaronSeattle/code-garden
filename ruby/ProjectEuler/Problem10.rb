puts "Project Euler Problem 10: Find the sum of all the primes below two million."

$LOAD_PATH << "."

require "ProjectEulerLib.rb"
include Sieve

# Approach: Use a sieve on a big enough number to generate > 10,000 primes

num = 2000000 - 1 # looking for all primes below 2M
answer = 0

a = Sieve.primes(num, false)

puts "Found #{a.size} primes less than #{num + 1}."

a.each do |x|
	answer += x
end

puts "The sum of all primes less than #{num + 1} is #{answer}."
