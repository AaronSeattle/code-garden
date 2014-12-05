puts 'Project Euler Problem 4: Find the largest palindrome made from the product of two 3-digit numbers.'

answer = 0
answer_text = "0 x 0"

def is_palindrome(myString)
	retval = false

	if myString == myString.reverse
		retval = true
	end

	return retval
end

start = Time.now

for i in 100..999
	for j in 100..i
		z = i * j
		if is_palindrome(z.to_s)
			if z >= answer
				answer = z
			end
			answer_text = "#{i} x #{j}"
		end
	end
end

finish = Time.now
puts "___ #{finish - start} seconds: Calculation completed "

puts "Largest palindrome of product of two 3-digit numbers is #{answer_text} = #{answer}."
