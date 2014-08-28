puts "Implement a sieve of Eratosthenes"
puts "Note: useful for calculating all the prime numbers less than or equal to X"
puts "Note: bogs down badly / eats up too much memory at about 10M primes which occurs when you use 9+ digit numbers"

#num = 30
#num = 213 # 71 x 3
#num = 2059 # 29 x 71
num = 13195 # 3 x 5 x 29
#num = 80301 # 71 x 29 x 13 x 3
#num = 401505 # 71 x 29 x 13 x 5 x 3
#num = 1365117 # 71 x 29 x 17 x 13 x 3
#num = 25937223 # 71 x 29 x 19 x 17 x 13 x 3
#num = 100000000
#num = 181560561 # 71 x 29 x 19 x 17 x 13 x 7 x 3

def sieve_of_eratosthenese(n, debug=false)
	# return array of all primes less than or equal n

	start = Time.now

	verbose = false
	debugSieve = false

	squareRootNum = Math.sqrt(n)

	maxRange = squareRootNum.to_i + 1

	if debug
		puts "Num: #{n}"
		puts "Sqrt of num: #{squareRootNum}"
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

	if verbose
		print 'Starting list: '
		print myList
		puts

		puts "Initial myTracker array:"
		print myTracker
		puts
	end

	# Step 2:
	# * Initially, let p equal 2, the first prime number
	p = 2

	while p <= maxRange
		# Step 3:
		# * Starting from p, enumerate its multiples by counting to n in increments of p, and mark
		# * them in the list (these will be 2p, 3p, 4p, etc.; the p itself should not be marked).
		#
		if debugSieve
			puts "Filtering out multiples of #{p}..."
		end

		sieveCounter = p * p
		while sieveCounter <= n
			if debugSieve && verbose
				puts "Flipping #{sieveCounter} to false"
			end
			myTracker[sieveCounter] = false
			sieveCounter += p
		end

		# Step 4:
		# * Find the first number greater than p in the list that is not marked.
		# * If there was no such number, stop.
		# * Otherwise, let p now equal this new number (which is the next prime), and repeat from step 3.
		foundNext = false
		for x in ((p+1)..n)
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
	if verbose
		puts "myTracker array after filter:"
		print myTracker
		puts
	end

	for y in (2..myTracker.size-1)
		if myTracker[y] == true
			myList.push(y)
		end
	end

	if verbose
		print 'Results of sieve: ' +myList.to_s
		puts
	end

	timer = Time.now
	if debug
		puts "___ #{timer - start} seconds: Sieve complete!"
	end

	return myList
end

a = sieve_of_eratosthenese(num)

puts "Found #{a.size} primes less than or equal to #{num}."

