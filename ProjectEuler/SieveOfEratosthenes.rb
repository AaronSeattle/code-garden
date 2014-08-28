
module Sieve

	def info()
		puts "Implement a sieve of Eratosthenes\n"
		puts "Note: useful for calculating all the prime numbers less than or equal to X\n"
		puts "Note: bogs down badly / eats up too much memory at about 10M primes which occurs when X ~ 180M"

		return
	end

	def of_eratosthenes(n, debug=false)
		# return array of all primes less than or equal n

		start = Time.now

		maxRange = Math.sqrt(n).to_i + 1

		if debug
			puts "Num: #{n}"
			puts "Threshold we don't need our sieve to filter beyond: #{maxRange}"
		end

		myList = Array.new
		myTracker = Array.new

		# Step 1:
		# * Create a list of consecutive integers from 2 through n: (2, 3, 4, ..., n).
		#
		(2..n).each do |z|
			myTracker[z] = true
		end

		timer = Time.now
		if debug
			puts "___ #{timer - start} seconds: Creation of list complete!"
		end

		# Step 2:
		# * Initially, let p equal 2, the first prime number
		p = 2

		while p <= maxRange
			# Step 3:
			# * Starting from p, enumerate its multiples by counting to n in increments of p, and mark
			# * them in the list (these will be 2p, 3p, 4p, etc.; the p itself should not be marked).
			#
			if debug
				puts "Filtering out multiples of #{p}..."
			end

			sieveCounter = p * p
			while sieveCounter <= n
				myTracker[sieveCounter] = false
				sieveCounter += p
			end

			# Step 4:
			# * Find the first number greater than p in the list that is not marked.
			# * If there was no such number, stop.
			# * Otherwise, let p now equal this new number (which is the next prime), and repeat from step 3.
			foundNext = false
			((p+1)..n).each do |x|
				if myTracker[x] == true
					p = x
					foundNext = true
					break
				end
			end
			if foundNext != true
				break
			end
		end

		# When the algorithm terminates, all the numbers in the list that are not marked are prime.
		(2..myTracker.size-1).each do |y|
			if myTracker[y] == true
				myList.push(y)
			end
		end

		timer = Time.now
		if debug
			puts "___ #{timer - start} seconds: Sieve complete!"
		end

		return myList
	end
end

