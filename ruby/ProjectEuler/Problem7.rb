puts "Project Euler Problem 7: What is the 10,001st prime number?"

$LOAD_PATH << "."

require "lib/ProjectEulerLib.rb"
include Sieve

# Approach: Use a sieve on a big enough number to generate > 10,000 primes

num = 105000 # big enough number to have more than 10,000 primes

a = Sieve.primes(num, true)

puts "Found #{a.size} primes less than or equal to #{num}."
if a.size > 10000
	puts "The 10,001st prime is #{a[10000]}."
end


